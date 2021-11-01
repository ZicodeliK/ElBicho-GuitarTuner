.class public Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/junit/runner/RunWith;
    value = Lorg/junit/runners/Parameterized;
.end annotation


# static fields
.field public static final DEFAULT_MESSAGE:Ljava/lang/String; = "FFT of size %dx%dx%d: "

.field public static final SEED:I = 0x132dd24


# instance fields
.field private final columns:I

.field private final fft3d:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

.field private final fft3f:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

.field private final random:Ljava/util/Random;

.field private final rows:I

.field private final slices:I

.field private final unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;


# direct methods
.method public constructor <init>(IIIIJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-direct {v0, p1, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;-><init>(III)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->fft3d:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-direct {v0, p1, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;-><init>(III)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->fft3f:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p5, p6}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->random:Ljava/util/Random;

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;

    invoke-direct {v0, p1, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;-><init>(III)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;

    invoke-static {p4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->setNumberOfThreads(I)V

    return-void
.end method

.method public static getParameters()Ljava/util/Collection;
    .registers 12
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

    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-array v4, v9, [I

    fill-array-data v4, :array_80

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_10
    array-length v2, v4

    if-ge v0, v2, :cond_7e

    move v2, v1

    :goto_14
    array-length v3, v4

    if-ge v2, v3, :cond_7b

    move v3, v1

    :goto_18
    array-length v6, v4

    if-ge v3, v6, :cond_78

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aget v7, v4, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    aget v7, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    aget v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x132dd24

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aget v7, v4, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    aget v7, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    aget v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const v7, 0x132dd24

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_7e
    return-object v5

    nop

    :array_80
    .array-data 4
        0x10
        0x20
        0x40
    .end array-data
.end method


# virtual methods
.method public createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;
    .registers 13

    const/4 v6, 0x0

    const-string v0, "FFT of size %dx%dx%d: "

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

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

    const-string v0, "FFT of size %dx%dx%d: "

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

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

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    mul-int/2addr v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/2addr v0, v1

    new-array v6, v0, [D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FFT of size %dx%dx%d: "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[%d][%d][%d]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x0

    :goto_42
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    if-ge v3, v0, :cond_94

    const/4 v4, 0x0

    :goto_47
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    if-ge v4, v0, :cond_91

    const/4 v5, 0x0

    :goto_4c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v5, v0, :cond_8e

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    :try_start_58
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->pack(DIII[DI)V

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;

    const/4 v12, 0x0

    move v8, v3

    move v9, v4

    move v10, v5

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->unpack(III[DI)D

    move-result-wide v10

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v12, 0x0

    move-wide v8, v1

    invoke-static/range {v7 .. v13}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;DDD)V
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_8b} :catch_95

    :goto_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    :cond_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :cond_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_94
    return-void

    :catch_95
    move-exception v0

    goto :goto_8b
.end method

.method public testPack1fInput()V
    .registers 16
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v13, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    mul-int/2addr v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/2addr v0, v1

    new-array v5, v0, [F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FFT of size %dx%dx%d: "

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[%d][%d][%d]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move v2, v13

    :goto_42
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    if-ge v2, v0, :cond_95

    move v3, v13

    :goto_47
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    if-ge v3, v0, :cond_92

    move v4, v13

    :goto_4c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v4, v0, :cond_8f

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    :try_start_58
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->pack(FIII[FI)V

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;

    const/4 v11, 0x0

    move v7, v2

    move v8, v3

    move v9, v4

    move-object v10, v5

    invoke-virtual/range {v6 .. v11}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->unpack(III[FI)F

    move-result v0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v14, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    float-to-double v7, v1

    float-to-double v9, v0

    const-wide/16 v11, 0x0

    invoke-static/range {v6 .. v12}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;DDD)V
    :try_end_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_8c} :catch_96

    :goto_8c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_92
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_95
    return-void

    :catch_96
    move-exception v0

    goto :goto_8c
.end method

.method public testPack3dInput()V
    .registers 16
    .annotation runtime Lorg/junit/Test;
    .end annotation

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[[D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FFT of size %dx%dx%d: "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[%d][%d][%d]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x0

    :goto_4a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    if-ge v3, v0, :cond_96

    const/4 v4, 0x0

    :goto_4f
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    if-ge v4, v0, :cond_93

    const/4 v5, 0x0

    :goto_54
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v5, v0, :cond_90

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    :try_start_60
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;

    invoke-virtual/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->pack(DIII[[[D)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;

    invoke-virtual {v0, v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->unpack(III[[[D)D

    move-result-wide v10

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v12, 0x0

    move-wide v8, v1

    invoke-static/range {v7 .. v13}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;DDD)V
    :try_end_8d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_8d} :catch_97

    :goto_8d
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    :cond_90
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_93
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_96
    return-void

    :catch_97
    move-exception v0

    goto :goto_8d
.end method

.method public testPack3fInput()V
    .registers 16
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v13, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[[F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FFT of size %dx%dx%d: "

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[%d][%d][%d]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move v2, v13

    :goto_4a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    if-ge v2, v0, :cond_97

    move v3, v13

    :goto_4f
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    if-ge v3, v0, :cond_94

    move v4, v13

    :goto_54
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v4, v0, :cond_91

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    :try_start_60
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->pack(FIII[[[F)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;

    invoke-virtual {v0, v2, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->unpack(III[[[F)F

    move-result v0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v14, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    float-to-double v7, v1

    float-to-double v9, v0

    const-wide/16 v11, 0x0

    invoke-static/range {v6 .. v12}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;DDD)V
    :try_end_8e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_8e} :catch_98

    :goto_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    :cond_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_94
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_97
    return-void

    :catch_98
    move-exception v0

    goto :goto_8e
.end method

.method public testUnpack1dInput()V
    .registers 14
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v5, 0x0

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    mul-int/2addr v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/2addr v0, v1

    new-array v4, v0, [D

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [[[D

    move v0, v5

    :goto_30
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    if-ge v0, v1, :cond_6b

    move v1, v5

    :goto_35
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    if-ge v1, v2, :cond_68

    move v2, v5

    :goto_3a
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    if-ge v2, v3, :cond_65

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/2addr v3, v9

    add-int/2addr v3, v2

    aput-wide v7, v4, v3

    aget-object v3, v12, v0

    aget-object v3, v3, v1

    mul-int/lit8 v9, v2, 0x2

    aput-wide v7, v3, v9

    aget-object v3, v12, v0

    aget-object v3, v3, v1

    mul-int/lit8 v7, v2, 0x2

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_6b
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->fft3d:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v0, v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexForward([[[D)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->fft3d:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v0, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realForward([D)V

    move v1, v5

    :goto_76
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    if-ge v1, v0, :cond_bb

    move v2, v5

    :goto_7b
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    if-ge v2, v0, :cond_b8

    move v3, v5

    :goto_80
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_b5

    const-string v0, "[%d][%d][%d]"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aget-object v0, v12, v1

    aget-object v0, v0, v2

    aget-wide v8, v0, v3

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->unpack(III[DI)D

    move-result-wide v10

    invoke-virtual/range {v6 .. v11}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_80

    :cond_b5
    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    :cond_b8
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    :cond_bb
    return-void
.end method

.method public testUnpack1fInput()V
    .registers 12
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v5, 0x0

    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3ba3d70a    # 0.005f

    mul-float/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    mul-int/2addr v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/2addr v0, v1

    new-array v4, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [[[F

    move v0, v5

    :goto_2c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    if-ge v0, v1, :cond_66

    move v1, v5

    :goto_31
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    if-ge v1, v2, :cond_63

    move v2, v5

    :goto_36
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    if-ge v2, v3, :cond_60

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v1

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v2

    aput v3, v4, v8

    aget-object v8, v6, v0

    aget-object v8, v8, v1

    mul-int/lit8 v9, v2, 0x2

    aput v3, v8, v9

    aget-object v3, v6, v0

    aget-object v3, v3, v1

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    aput v9, v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_66
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->fft3f:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-virtual {v0, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->complexForward([[[F)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->fft3f:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-virtual {v0, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->realForward([F)V

    move v1, v5

    :goto_71
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    if-ge v1, v0, :cond_b6

    move v2, v5

    :goto_76
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    if-ge v2, v0, :cond_b3

    move v3, v5

    :goto_7b
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_b0

    const-string v0, "[%d][%d][%d]"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aget-object v0, v6, v1

    aget-object v0, v0, v2

    aget v9, v0, v3

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->unpack(III[FI)F

    move-result v0

    invoke-virtual {v7, v8, v9, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    :cond_b0
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    :cond_b3
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    :cond_b6
    return-void
.end method

.method public testUnpack3dInput()V
    .registers 13
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v8, 0x0

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/lit8 v3, v3, 0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[[D

    move v1, v8

    :goto_39
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    if-ge v1, v2, :cond_70

    move v2, v8

    :goto_3e
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    if-ge v2, v3, :cond_6d

    move v3, v8

    :goto_43
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    if-ge v3, v4, :cond_6a

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    aget-object v9, v6, v1

    aget-object v9, v9, v2

    aput-wide v4, v9, v3

    aget-object v9, v7, v1

    aget-object v9, v9, v2

    mul-int/lit8 v10, v3, 0x2

    aput-wide v4, v9, v10

    aget-object v4, v7, v1

    aget-object v4, v4, v2

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    const-wide/16 v9, 0x0

    aput-wide v9, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_70
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->fft3d:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexForward([[[D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->fft3d:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realForward([[[D)V

    move v11, v8

    :goto_7b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    if-ge v11, v1, :cond_c3

    move v10, v8

    :goto_80
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    if-ge v10, v1, :cond_bf

    move v9, v8

    :goto_85
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v9, v1, :cond_bb

    const-string v1, "[%d][%d][%d]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v7, v11

    aget-object v2, v2, v10

    aget-wide v2, v2, v9

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;

    invoke-virtual {v4, v11, v10, v9, v6}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->unpack(III[[[D)D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_85

    :cond_bb
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_80

    :cond_bf
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_7b

    :cond_c3
    return-void
.end method

.method public testUnpack3fInput()V
    .registers 12
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v3, 0x0

    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3ba3d70a    # 0.005f

    mul-float/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/lit8 v4, v4, 0x2

    filled-new-array {v1, v2, v4}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[F

    move v2, v3

    :goto_33
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    if-ge v2, v4, :cond_69

    move v4, v3

    :goto_38
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    if-ge v4, v5, :cond_66

    move v5, v3

    :goto_3d
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    if-ge v5, v7, :cond_63

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    aget-object v8, v0, v2

    aget-object v8, v8, v4

    aput v7, v8, v5

    aget-object v8, v1, v2

    aget-object v8, v8, v4

    mul-int/lit8 v9, v5, 0x2

    aput v7, v8, v9

    aget-object v7, v1, v2

    aget-object v7, v7, v4

    mul-int/lit8 v8, v5, 0x2

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_69
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->fft3f:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-virtual {v2, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->complexForward([[[F)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->fft3f:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-virtual {v2, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->realForward([[[F)V

    move v5, v3

    :goto_74
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->slices:I

    if-ge v5, v2, :cond_bb

    move v4, v3

    :goto_79
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->rows:I

    if-ge v4, v2, :cond_b7

    move v2, v3

    :goto_7e
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->columns:I

    mul-int/lit8 v7, v7, 0x2

    if-ge v2, v7, :cond_b3

    const-string v7, "[%d][%d][%d]"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v9, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aget-object v8, v1, v5

    aget-object v8, v8, v4

    aget v8, v8, v2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3DTest;->unpacker:Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;

    invoke-virtual {v9, v5, v4, v2, v0}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->unpack(III[[[F)F

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    :cond_b3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_79

    :cond_b7
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_74

    :cond_bb
    return-void
.end method
