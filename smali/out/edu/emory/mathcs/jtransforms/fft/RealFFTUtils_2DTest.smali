.class public Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/junit/runner/RunWith;
    value = Lorg/junit/runners/Parameterized;
.end annotation


# static fields
.field public static final DEFAULT_MESSAGE:Ljava/lang/String; = "FFT of size %dx%d: "

.field public static final SEED:I = 0x132dd20


# instance fields
.field private final columns:I

.field private final fft2d:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

.field private final fft2f:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

.field private final random:Ljava/util/Random;

.field private final rows:I

.field private final unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;


# direct methods
.method public constructor <init>(IIIJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-direct {v0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;-><init>(II)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->fft2d:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-direct {v0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;-><init>(II)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->fft2f:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p4, p5}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->random:Ljava/util/Random;

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    invoke-direct {v0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;-><init>(II)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    invoke-static {p3}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->setNumberOfThreads(I)V

    return-void
.end method

.method public static getParameters()Ljava/util/Collection;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/junit/runners/Parameterized$Parameters;
    .end annotation

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v1, 0x0

    new-array v3, v7, [I

    fill-array-data v3, :array_66

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_10
    array-length v2, v3

    if-ge v0, v2, :cond_65

    move v2, v1

    :goto_14
    array-length v5, v3

    if-ge v2, v5, :cond_62

    new-array v5, v7, [Ljava/lang/Object;

    aget v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aget v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const v6, 0x132dd20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v7, [Ljava/lang/Object;

    aget v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aget v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const v6, 0x132dd20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_65
    return-object v4

    :array_66
    .array-data 4
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method


# virtual methods
.method public createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;
    .registers 13

    const/4 v6, 0x0

    const-string v0, "FFT of size %dx%d: "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-wide v2, p1

    move-wide v4, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;-><init>(Ljava/lang/String;DDFF)V

    return-object v0
.end method

.method public createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;
    .registers 11

    const-wide/16 v2, 0x0

    const-string v0, "FFT of size %dx%d: "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-wide v4, v2

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;-><init>(Ljava/lang/String;DDFF)V

    return-object v0
.end method

.method public testPack1dInput()V
    .registers 16
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v13, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/2addr v0, v1

    new-array v5, v0, [D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FFT of size %dx%d: "

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[%d][%d]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move v3, v13

    :goto_36
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    if-ge v3, v0, :cond_75

    move v4, v13

    :goto_3b
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v4, v0, :cond_72

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    :try_start_47
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->pack(DII[DI)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->unpack(II[DI)D

    move-result-wide v9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v11, 0x0

    move-wide v7, v1

    invoke-static/range {v6 .. v12}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;DDD)V
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_6f} :catch_76

    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_75
    return-void

    :catch_76
    move-exception v0

    goto :goto_6f
.end method

.method public testPack1fInput()V
    .registers 15
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v12, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/2addr v0, v1

    new-array v4, v0, [F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FFT of size %dx%d: "

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[%d][%d]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move v2, v12

    :goto_36
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    if-ge v2, v0, :cond_76

    move v3, v12

    :goto_3b
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_73

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    :try_start_47
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->pack(FII[FI)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->unpack(II[FI)F

    move-result v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v13, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    float-to-double v6, v1

    float-to-double v8, v0

    const-wide/16 v10, 0x0

    invoke-static/range {v5 .. v11}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;DDD)V
    :try_end_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_70} :catch_77

    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_76
    return-void

    :catch_77
    move-exception v0

    goto :goto_70
.end method

.method public testPack2dInput()V
    .registers 16
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v13, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FFT of size %dx%d: "

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[%d][%d]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move v3, v13

    :goto_3f
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    if-ge v3, v0, :cond_7c

    move v4, v13

    :goto_44
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v4, v0, :cond_79

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    :try_start_50
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->pack(DII[[D)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    invoke-virtual {v0, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->unpack(II[[D)D

    move-result-wide v9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v11, 0x0

    move-wide v7, v1

    invoke-static/range {v6 .. v12}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;DDD)V
    :try_end_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_76} :catch_7d

    :goto_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_7c
    return-void

    :catch_7d
    move-exception v0

    goto :goto_76
.end method

.method public testPack2fInput()V
    .registers 13
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v9, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [[F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FFT of size %dx%d: "

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[%d][%d]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move v8, v9

    :goto_40
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    if-ge v8, v0, :cond_80

    move v10, v9

    :goto_45
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v10, v0, :cond_7c

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    :try_start_51
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    invoke-virtual {v0, v1, v8, v10, v7}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->pack(FII[[F)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    invoke-virtual {v0, v8, v10, v7}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->unpack(II[[F)F

    move-result v3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    float-to-double v1, v1

    float-to-double v3, v3

    const-wide/16 v5, 0x0

    invoke-static/range {v0 .. v6}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;DDD)V
    :try_end_78
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_78} :catch_81

    :goto_78
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_45

    :cond_7c
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_40

    :cond_80
    return-void

    :catch_81
    move-exception v0

    goto :goto_78
.end method

.method public testUnpack1dInput()V
    .registers 12
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v7, 0x0

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/2addr v1, v2

    new-array v10, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[D

    move v1, v7

    :goto_2b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    if-ge v1, v2, :cond_56

    move v2, v7

    :goto_30
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    if-ge v2, v3, :cond_53

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v2

    aput-wide v3, v10, v5

    aget-object v5, v6, v1

    mul-int/lit8 v8, v2, 0x2

    aput-wide v3, v5, v8

    aget-object v3, v6, v1

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_56
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->fft2d:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexForward([[D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->fft2d:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realForward([D)V

    move v9, v7

    :goto_61
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    if-ge v9, v1, :cond_97

    move v8, v7

    :goto_66
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v8, v1, :cond_93

    const-string v1, "[%d][%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v6, v9

    aget-wide v2, v2, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    invoke-virtual {v4, v9, v8, v10, v7}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->unpack(II[DI)D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_66

    :cond_93
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_61

    :cond_97
    return-void
.end method

.method public testUnpack1fInput()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x0

    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3ba3d70a    # 0.005f

    mul-float/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/2addr v0, v1

    new-array v5, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v1, v2

    :goto_26
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    if-ge v1, v3, :cond_50

    move v3, v2

    :goto_2b
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    if-ge v3, v6, :cond_4d

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v3

    aput v6, v5, v7

    aget-object v7, v0, v1

    mul-int/lit8 v8, v3, 0x2

    aput v6, v7, v8

    aget-object v6, v0, v1

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_50
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->fft2f:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v1, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexForward([[F)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->fft2f:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->realForward([F)V

    move v3, v2

    :goto_5b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    if-ge v3, v1, :cond_90

    move v1, v2

    :goto_60
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v1, v6, :cond_8c

    const-string v6, "[%d][%d]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v0, v3

    aget v7, v7, v1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    invoke-virtual {v8, v3, v1, v5, v2}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->unpack(II[FI)F

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    :cond_8c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5b

    :cond_90
    return-void
.end method

.method public testUnpack2dInput()V
    .registers 12
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v8, 0x0

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[D

    move v1, v8

    :goto_35
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    if-ge v1, v2, :cond_5e

    move v2, v8

    :goto_3a
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    if-ge v2, v3, :cond_5b

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    aget-object v5, v6, v1

    aput-wide v3, v5, v2

    aget-object v5, v7, v1

    mul-int/lit8 v9, v2, 0x2

    aput-wide v3, v5, v9

    aget-object v3, v7, v1

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v9, 0x0

    aput-wide v9, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_5e
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->fft2d:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexForward([[D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->fft2d:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realForward([[D)V

    move v10, v8

    :goto_69
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    if-ge v10, v1, :cond_a8

    move v9, v8

    :goto_6e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v9, v1, :cond_a4

    const-string v1, "[%d][%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v7, v10

    aget-wide v2, v2, v9

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    invoke-virtual {v4, v10, v9, v6}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->unpack(II[[D)D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    aget-object v1, v7, v10

    aget-wide v1, v1, v9

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    invoke-virtual {v1, v10, v9, v6}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->unpack(II[[D)D

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_6e

    :cond_a4
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_69

    :cond_a8
    return-void
.end method

.method public testUnpack2fInput()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v3, 0x0

    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3ba3d70a    # 0.005f

    mul-float/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    move v2, v3

    :goto_2f
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    if-ge v2, v4, :cond_57

    move v4, v3

    :goto_34
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    if-ge v4, v6, :cond_54

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    aget-object v7, v0, v2

    aput v6, v7, v4

    aget-object v7, v1, v2

    mul-int/lit8 v8, v4, 0x2

    aput v6, v7, v8

    aget-object v6, v1, v2

    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_57
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->fft2f:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v2, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexForward([[F)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->fft2f:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v2, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->realForward([[F)V

    move v4, v3

    :goto_62
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->rows:I

    if-ge v4, v2, :cond_a0

    move v2, v3

    :goto_67
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->columns:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v2, v6, :cond_9c

    const-string v6, "[%d][%d]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v1, v4

    aget v7, v7, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    invoke-virtual {v8, v4, v2, v0}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->unpack(II[[F)F

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aget-object v6, v1, v4

    aget v6, v6, v2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;

    invoke-virtual {v6, v4, v2, v0}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->unpack(II[[F)F

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    :cond_9c
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_62

    :cond_a0
    return-void
.end method
