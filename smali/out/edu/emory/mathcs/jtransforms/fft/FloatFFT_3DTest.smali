.class public Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/junit/runner/RunWith;
    value = Lorg/junit/runners/Parameterized;
.end annotation


# static fields
.field public static final DEFAULT_MESSAGE:Ljava/lang/String; = "%d-threaded FFT of size %dx%dx%d: "

.field public static final SEED:I = 0x132dd21


# instance fields
.field private final fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

.field private final numCols:I

.field private final numRows:I

.field private final numSlices:I

.field private final random:Ljava/util/Random;

.field private final sfft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

.field private final xfft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;


# direct methods
.method public constructor <init>(IIIIJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-direct {v0, p1, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;-><init>(III)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->xfft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-direct {v0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;-><init>(II)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->sfft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p5, p6}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->random:Ljava/util/Random;

    invoke-static {p4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->setNumberOfThreads(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->setThreadsBeginN_3D(I)V

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

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x11

    new-array v4, v0, [I

    fill-array-data v4, :array_82

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_12
    array-length v2, v4

    if-ge v0, v2, :cond_80

    move v2, v1

    :goto_16
    array-length v3, v4

    if-ge v2, v3, :cond_7d

    move v3, v1

    :goto_1a
    array-length v6, v4

    if-ge v3, v6, :cond_7a

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

    aput-object v7, v6, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    const v7, 0x132dd21

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

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

    aput-object v7, v6, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    const v7, 0x132dd21

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_80
    return-object v5

    nop

    :array_82
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x10
        0x20
        0x40
        0x64
        0x80
    .end array-data
.end method


# virtual methods
.method public complexForward([[[F)V
    .registers 10

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->sfft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexForward([[F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [F

    move v0, v1

    :goto_17
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    if-ge v0, v2, :cond_73

    move v2, v1

    :goto_1c
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    if-ge v2, v3, :cond_70

    move v3, v1

    :goto_21
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    if-ge v3, v5, :cond_44

    mul-int/lit8 v5, v3, 0x2

    aget-object v6, p1, v3

    aget-object v6, v6, v2

    mul-int/lit8 v7, v0, 0x2

    aget v6, v6, v7

    aput v6, v4, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v6, p1, v3

    aget-object v6, v6, v2

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_44
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->xfft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v3, v1

    :goto_4a
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    if-ge v3, v5, :cond_6d

    aget-object v5, p1, v3

    aget-object v5, v5, v2

    mul-int/lit8 v6, v0, 0x2

    mul-int/lit8 v7, v3, 0x2

    aget v7, v4, v7

    aput v7, v5, v6

    aget-object v5, p1, v3

    aget-object v5, v5, v2

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v7, v4, v7

    aput v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_73
    return-void
.end method

.method public createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;
    .registers 11

    const-wide/16 v2, 0x0

    const-string v0, "%d-threaded FFT of size %dx%dx%d: "

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

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

.method public testRealForward1fInput()V
    .registers 16
    .annotation runtime Lorg/junit/Test;
    .end annotation

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x3b03126f    # 0.002f

    const v1, 0x3ba3d70a    # 0.005f

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    const/16 v3, 0x40

    if-eq v2, v3, :cond_31

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    const/16 v3, 0x40

    if-eq v2, v3, :cond_31

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_34

    :cond_31
    const v0, 0x3c23d70a    # 0.01f

    :cond_34
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_49

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_49

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_49

    const v0, 0x3ca3d70a    # 0.02f

    :cond_49
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    const/16 v3, 0x80

    if-eq v2, v3, :cond_5b

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    const/16 v3, 0x80

    if-eq v2, v3, :cond_5b

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    const/16 v3, 0x80

    if-ne v2, v3, :cond_5e

    :cond_5b
    const v0, 0x3ca3d70a    # 0.02f

    :cond_5e
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    const/16 v3, 0x80

    if-ne v2, v3, :cond_51a

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    const/16 v3, 0x80

    if-ne v2, v3, :cond_51a

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    const/16 v3, 0x80

    if-ne v2, v3, :cond_51a

    const v1, 0x3ca3d70a    # 0.02f

    const v0, 0x3c23d70a    # 0.01f

    :goto_76
    mul-float/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    mul-int/2addr v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    mul-int/2addr v0, v1

    new-array v6, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    mul-int/2addr v1, v2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    mul-int/2addr v1, v2

    new-array v7, v1, [Z

    const/4 v1, 0x0

    :goto_a4
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    if-ge v1, v2, :cond_e1

    const/4 v2, 0x0

    :goto_a9
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    if-ge v2, v3, :cond_de

    const/4 v3, 0x0

    :goto_ae
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    if-ge v3, v4, :cond_db

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    mul-int/2addr v8, v1

    add-int/2addr v8, v2

    mul-int/2addr v4, v8

    add-int/2addr v4, v3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    aput v8, v6, v4

    aget-object v9, v0, v1

    aget-object v9, v9, v2

    mul-int/lit8 v10, v3, 0x2

    aput v8, v9, v10

    aget-object v8, v0, v1

    aget-object v8, v8, v2

    mul-int/lit8 v9, v3, 0x2

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    const/4 v8, 0x0

    aput-boolean v8, v7, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_ae

    :cond_db
    add-int/lit8 v2, v2, 0x1

    goto :goto_a9

    :cond_de
    add-int/lit8 v1, v1, 0x1

    goto :goto_a4

    :cond_e1
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-virtual {v1, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->realForward([F)V

    invoke-virtual {p0, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->complexForward([[[F)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v4, v1

    :goto_f0
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    if-ge v4, v1, :cond_20c

    const/4 v1, 0x0

    move v2, v1

    :goto_f6
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    if-ge v2, v1, :cond_135

    const/4 v1, 0x2

    :goto_fb
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    if-ge v1, v3, :cond_131

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v2

    mul-int/2addr v3, v9

    add-int/2addr v3, v1

    aget v9, v6, v3

    aget-object v10, v0, v4

    aget-object v10, v10, v2

    aget v10, v10, v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11, v10, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    const/4 v9, 0x1

    aput-boolean v9, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_fb

    :cond_131
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_f6

    :cond_135
    const/4 v1, 0x1

    move v2, v1

    :goto_137
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    if-ge v2, v1, :cond_207

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v4, v1, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    const/4 v9, 0x0

    aput v9, v1, v3

    const/4 v3, 0x3

    aput v4, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    const/4 v9, 0x0

    aput v9, v1, v3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v4, v1, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    const/4 v9, 0x1

    aput v9, v1, v3

    const/4 v3, 0x3

    aput v4, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    const/4 v9, 0x1

    aput v9, v1, v3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    sub-int/2addr v1, v2

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v9, 0x0

    aput v4, v3, v9

    const/4 v9, 0x1

    aput v1, v3, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v3, v9

    const/4 v9, 0x3

    aput v4, v3, v9

    const/4 v9, 0x4

    aput v1, v3, v9

    const/4 v9, 0x5

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    aput v10, v3, v9

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v9, 0x0

    aput v4, v3, v9

    const/4 v9, 0x1

    aput v1, v3, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v3, v9

    const/4 v9, 0x3

    aput v4, v3, v9

    const/4 v9, 0x4

    aput v1, v3, v9

    const/4 v1, 0x5

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    add-int/lit8 v9, v9, 0x1

    aput v9, v3, v1

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v3, v1

    :goto_1b1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_202

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v9, 0x2

    aget v9, v1, v9

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    const/4 v11, 0x1

    aget v11, v1, v11

    iget v12, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    const/4 v13, 0x0

    aget v13, v1, v13

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    aget v10, v6, v9

    const/4 v11, 0x3

    aget v11, v1, v11

    aget-object v11, v0, v11

    const/4 v12, 0x4

    aget v12, v1, v12

    aget-object v11, v11, v12

    const/4 v12, 0x5

    aget v1, v1, v12

    aget v1, v11, v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11, v1, v10}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    const/4 v1, 0x1

    aput-boolean v1, v7, v9

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1b1

    :cond_202
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_137

    :cond_207
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_f0

    :cond_20c
    const/4 v1, 0x1

    move v2, v1

    :goto_20e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v1, v1, 0x2

    if-ge v2, v1, :cond_372

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v1, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v1, v3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput v4, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v1, v3

    const/4 v3, 0x5

    const/4 v4, 0x1

    aput v4, v1, v3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v4, v4, 0x2

    aput v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v3, 0x4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v4, v4, 0x2

    aput v4, v1, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v1, v3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v4, v4, 0x2

    aput v4, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput v4, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v3, 0x4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v4, v4, 0x2

    aput v4, v1, v3

    const/4 v3, 0x5

    const/4 v4, 0x1

    aput v4, v1, v3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    sub-int/2addr v1, v2

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    const/4 v9, 0x0

    aput v9, v3, v4

    const/4 v4, 0x2

    const/4 v9, 0x1

    aput v9, v3, v4

    const/4 v4, 0x3

    aput v1, v3, v4

    const/4 v4, 0x4

    const/4 v9, 0x0

    aput v9, v3, v4

    const/4 v4, 0x5

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    aput v9, v3, v4

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    const/4 v9, 0x0

    aput v9, v3, v4

    const/4 v4, 0x2

    const/4 v9, 0x0

    aput v9, v3, v4

    const/4 v4, 0x3

    aput v1, v3, v4

    const/4 v4, 0x4

    const/4 v9, 0x0

    aput v9, v3, v4

    const/4 v4, 0x5

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    add-int/lit8 v9, v9, 0x1

    aput v9, v3, v4

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v9, v9, 0x2

    aput v9, v3, v4

    const/4 v4, 0x2

    const/4 v9, 0x1

    aput v9, v3, v4

    const/4 v4, 0x3

    aput v1, v3, v4

    const/4 v4, 0x4

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v9, v9, 0x2

    aput v9, v3, v4

    const/4 v4, 0x5

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    aput v9, v3, v4

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v9, v9, 0x2

    aput v9, v3, v4

    const/4 v4, 0x2

    const/4 v9, 0x0

    aput v9, v3, v4

    const/4 v4, 0x3

    aput v1, v3, v4

    const/4 v1, 0x4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v1

    const/4 v1, 0x5

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v1

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v3, v1

    :goto_31c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_36d

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v4, 0x2

    aget v4, v1, v4

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    const/4 v10, 0x1

    aget v10, v1, v10

    iget v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    const/4 v12, 0x0

    aget v12, v1, v12

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    mul-int/2addr v9, v10

    add-int/2addr v4, v9

    aget v9, v6, v4

    const/4 v10, 0x3

    aget v10, v1, v10

    aget-object v10, v0, v10

    const/4 v11, 0x4

    aget v11, v1, v11

    aget-object v10, v10, v11

    const/4 v11, 0x5

    aget v1, v1, v11

    aget v1, v10, v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10, v1, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    const/4 v1, 0x1

    aput-boolean v1, v7, v4

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_31c

    :cond_36d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_20e

    :cond_372
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_520

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    aput v3, v1, v2

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    aput v3, v1, v2

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    aput v3, v1, v2

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    aput v3, v1, v2

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v2, v1

    :goto_486
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4d7

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v3, 0x2

    aget v3, v1, v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    const/4 v9, 0x1

    aget v9, v1, v9

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    const/4 v11, 0x0

    aget v11, v1, v11

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    mul-int/2addr v4, v9

    add-int/2addr v3, v4

    aget v4, v6, v3

    const/4 v9, 0x3

    aget v9, v1, v9

    aget-object v9, v0, v9

    const/4 v10, 0x4

    aget v10, v1, v10

    aget-object v9, v9, v10

    const/4 v10, 0x5

    aget v1, v1, v10

    aget v1, v9, v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v1, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    const/4 v1, 0x1

    aput-boolean v1, v7, v3

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_486

    :cond_4d7
    const/4 v0, 0x0

    :goto_4d8
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    if-ge v0, v1, :cond_8

    const/4 v1, 0x0

    :goto_4dd
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    if-ge v1, v2, :cond_517

    const/4 v2, 0x0

    :goto_4e2
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    if-ge v2, v3, :cond_514

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    const-string v4, "[%d][%d][%d]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aget-boolean v3, v7, v3

    invoke-static {v4, v3}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e2

    :cond_514
    add-int/lit8 v1, v1, 0x1

    goto :goto_4dd

    :cond_517
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d8

    :cond_51a
    move v14, v1

    move v1, v0

    move v0, v14

    goto/16 :goto_76

    nop

    :array_520
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public testRealForward3fInput()V
    .registers 15
    .annotation runtime Lorg/junit/Test;
    .end annotation

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x3b03126f    # 0.002f

    const v1, 0x3ba3d70a    # 0.005f

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    const/16 v3, 0x40

    if-eq v2, v3, :cond_31

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    const/16 v3, 0x40

    if-eq v2, v3, :cond_31

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_34

    :cond_31
    const v0, 0x3c23d70a    # 0.01f

    :cond_34
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_49

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_49

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_49

    const v0, 0x3ca3d70a    # 0.02f

    :cond_49
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    const/16 v3, 0x80

    if-eq v2, v3, :cond_5b

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    const/16 v3, 0x80

    if-eq v2, v3, :cond_5b

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    const/16 v3, 0x80

    if-ne v2, v3, :cond_5e

    :cond_5b
    const v0, 0x3ca3d70a    # 0.02f

    :cond_5e
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    const/16 v3, 0x80

    if-ne v2, v3, :cond_5ad

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    const/16 v3, 0x80

    if-ne v2, v3, :cond_5ad

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    const/16 v3, 0x80

    if-ne v2, v3, :cond_5ad

    const v1, 0x3ca3d70a    # 0.02f

    const v0, 0x3c23d70a    # 0.01f

    :goto_76
    mul-float/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[F

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[Z

    const/4 v3, 0x0

    :goto_b4
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    if-ge v3, v4, :cond_f1

    const/4 v4, 0x0

    :goto_b9
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    if-ge v4, v5, :cond_ee

    const/4 v5, 0x0

    :goto_be
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    if-ge v5, v6, :cond_eb

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    aget-object v8, v0, v3

    aget-object v8, v8, v4

    aput v6, v8, v5

    aget-object v8, v1, v3

    aget-object v8, v8, v4

    mul-int/lit8 v9, v5, 0x2

    aput v6, v8, v9

    aget-object v6, v1, v3

    aget-object v6, v6, v4

    mul-int/lit8 v8, v5, 0x2

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    aput v9, v6, v8

    aget-object v6, v2, v3

    aget-object v6, v6, v4

    const/4 v8, 0x0

    aput-boolean v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_be

    :cond_eb
    add-int/lit8 v4, v4, 0x1

    goto :goto_b9

    :cond_ee
    add-int/lit8 v3, v3, 0x1

    goto :goto_b4

    :cond_f1
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-virtual {v3, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->realForward([[[F)V

    invoke-virtual {p0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->complexForward([[[F)V

    const/4 v3, 0x0

    move v6, v3

    :goto_fb
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    if-ge v6, v3, :cond_253

    const/4 v3, 0x0

    move v4, v3

    :goto_101
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    if-ge v4, v3, :cond_154

    const/4 v3, 0x2

    :goto_106
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    if-ge v3, v5, :cond_150

    aget-object v5, v0, v6

    aget-object v5, v5, v4

    aget v5, v5, v3

    aget-object v8, v1, v6

    aget-object v8, v8, v4

    aget v8, v8, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v8, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aget-object v5, v2, v6

    aget-object v5, v5, v4

    const/4 v8, 0x1

    aput-boolean v8, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_106

    :cond_150
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_101

    :cond_154
    const/4 v3, 0x1

    move v4, v3

    :goto_156
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    if-ge v4, v3, :cond_24e

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v5, 0x0

    aput v6, v3, v5

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v5, 0x2

    const/4 v9, 0x0

    aput v9, v3, v5

    const/4 v5, 0x3

    aput v6, v3, v5

    const/4 v5, 0x4

    aput v4, v3, v5

    const/4 v5, 0x5

    const/4 v9, 0x0

    aput v9, v3, v5

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v5, 0x0

    aput v6, v3, v5

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v5, 0x2

    const/4 v9, 0x1

    aput v9, v3, v5

    const/4 v5, 0x3

    aput v6, v3, v5

    const/4 v5, 0x4

    aput v4, v3, v5

    const/4 v5, 0x5

    const/4 v9, 0x1

    aput v9, v3, v5

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    sub-int/2addr v3, v4

    const/4 v5, 0x6

    new-array v5, v5, [I

    const/4 v9, 0x0

    aput v6, v5, v9

    const/4 v9, 0x1

    aput v3, v5, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v5, v9

    const/4 v9, 0x3

    aput v6, v5, v9

    const/4 v9, 0x4

    aput v3, v5, v9

    const/4 v9, 0x5

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    aput v10, v5, v9

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x6

    new-array v5, v5, [I

    const/4 v9, 0x0

    aput v6, v5, v9

    const/4 v9, 0x1

    aput v3, v5, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v5, v9

    const/4 v9, 0x3

    aput v6, v5, v9

    const/4 v9, 0x4

    aput v3, v5, v9

    const/4 v3, 0x5

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    add-int/lit8 v9, v9, 0x1

    aput v9, v5, v3

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move v5, v3

    :goto_1d2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_249

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v9, 0x0

    aget v9, v3, v9

    aget-object v9, v0, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget v10, v3, v10

    aget v9, v9, v10

    const/4 v10, 0x3

    aget v10, v3, v10

    aget-object v10, v1, v10

    const/4 v11, 0x4

    aget v11, v3, v11

    aget-object v10, v10, v11

    const/4 v11, 0x5

    aget v11, v3, v11

    aget v10, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v3, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget v12, v3, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget v12, v3, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v10, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    const/4 v9, 0x0

    aget v9, v3, v9

    aget-object v9, v2, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget v3, v3, v10

    const/4 v10, 0x1

    aput-boolean v10, v9, v3

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1d2

    :cond_249
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_156

    :cond_24e
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto/16 :goto_fb

    :cond_253
    const/4 v3, 0x1

    move v4, v3

    :goto_255
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    if-ge v4, v3, :cond_3e1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v5, 0x1

    const/4 v8, 0x0

    aput v8, v3, v5

    const/4 v5, 0x2

    const/4 v8, 0x0

    aput v8, v3, v5

    const/4 v5, 0x3

    aput v4, v3, v5

    const/4 v5, 0x4

    const/4 v8, 0x0

    aput v8, v3, v5

    const/4 v5, 0x5

    const/4 v8, 0x0

    aput v8, v3, v5

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v5, 0x1

    const/4 v8, 0x0

    aput v8, v3, v5

    const/4 v5, 0x2

    const/4 v8, 0x1

    aput v8, v3, v5

    const/4 v5, 0x3

    aput v4, v3, v5

    const/4 v5, 0x4

    const/4 v8, 0x0

    aput v8, v3, v5

    const/4 v5, 0x5

    const/4 v8, 0x1

    aput v8, v3, v5

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v5, 0x1

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v8, v8, 0x2

    aput v8, v3, v5

    const/4 v5, 0x2

    const/4 v8, 0x0

    aput v8, v3, v5

    const/4 v5, 0x3

    aput v4, v3, v5

    const/4 v5, 0x4

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v8, v8, 0x2

    aput v8, v3, v5

    const/4 v5, 0x5

    const/4 v8, 0x0

    aput v8, v3, v5

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v5, 0x1

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v8, v8, 0x2

    aput v8, v3, v5

    const/4 v5, 0x2

    const/4 v8, 0x1

    aput v8, v3, v5

    const/4 v5, 0x3

    aput v4, v3, v5

    const/4 v5, 0x4

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v8, v8, 0x2

    aput v8, v3, v5

    const/4 v5, 0x5

    const/4 v8, 0x1

    aput v8, v3, v5

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    sub-int/2addr v3, v4

    const/4 v5, 0x6

    new-array v5, v5, [I

    const/4 v8, 0x0

    aput v3, v5, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v5, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    aput v9, v5, v8

    const/4 v8, 0x3

    aput v3, v5, v8

    const/4 v8, 0x4

    const/4 v9, 0x0

    aput v9, v5, v8

    const/4 v8, 0x5

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    aput v9, v5, v8

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x6

    new-array v5, v5, [I

    const/4 v8, 0x0

    aput v3, v5, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v5, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput v9, v5, v8

    const/4 v8, 0x3

    aput v3, v5, v8

    const/4 v8, 0x4

    const/4 v9, 0x0

    aput v9, v5, v8

    const/4 v8, 0x5

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    add-int/lit8 v9, v9, 0x1

    aput v9, v5, v8

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x6

    new-array v5, v5, [I

    const/4 v8, 0x0

    aput v3, v5, v8

    const/4 v8, 0x1

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v9, v9, 0x2

    aput v9, v5, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    aput v9, v5, v8

    const/4 v8, 0x3

    aput v3, v5, v8

    const/4 v8, 0x4

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v9, v9, 0x2

    aput v9, v5, v8

    const/4 v8, 0x5

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    aput v9, v5, v8

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x6

    new-array v5, v5, [I

    const/4 v8, 0x0

    aput v3, v5, v8

    const/4 v8, 0x1

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v9, v9, 0x2

    aput v9, v5, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    aput v9, v5, v8

    const/4 v8, 0x3

    aput v3, v5, v8

    const/4 v3, 0x4

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v8, v8, 0x2

    aput v8, v5, v3

    const/4 v3, 0x5

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    add-int/lit8 v8, v8, 0x1

    aput v8, v5, v3

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move v5, v3

    :goto_365
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_3dc

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v8, 0x0

    aget v8, v3, v8

    aget-object v8, v0, v8

    const/4 v9, 0x1

    aget v9, v3, v9

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    aget v8, v8, v9

    const/4 v9, 0x3

    aget v9, v3, v9

    aget-object v9, v1, v9

    const/4 v10, 0x4

    aget v10, v3, v10

    aget-object v9, v9, v10

    const/4 v10, 0x5

    aget v10, v3, v10

    aget v9, v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget v11, v3, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9, v8}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    const/4 v8, 0x0

    aget v8, v3, v8

    aget-object v8, v2, v8

    const/4 v9, 0x1

    aget v9, v3, v9

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget v3, v3, v9

    const/4 v9, 0x1

    aput-boolean v9, v8, v3

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_365

    :cond_3dc
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_255

    :cond_3e1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_5b2

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x2

    const/4 v6, 0x1

    aput v6, v3, v4

    const/4 v4, 0x3

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x4

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    aput v6, v3, v4

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x2

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x3

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x5

    const/4 v6, 0x0

    aput v6, v3, v4

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x2

    const/4 v6, 0x1

    aput v6, v3, v4

    const/4 v4, 0x3

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    aput v6, v3, v4

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x2

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x3

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x4

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x5

    const/4 v6, 0x0

    aput v6, v3, v4

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x2

    const/4 v6, 0x1

    aput v6, v3, v4

    const/4 v4, 0x3

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x4

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    aput v6, v3, v4

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x2

    const/4 v6, 0x0

    aput v6, v3, v4

    const/4 v4, 0x3

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x5

    const/4 v6, 0x0

    aput v6, v3, v4

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x2

    const/4 v6, 0x1

    aput v6, v3, v4

    const/4 v4, 0x3

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    div-int/lit8 v6, v6, 0x2

    aput v6, v3, v4

    const/4 v4, 0x5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    aput v6, v3, v4

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move v4, v3

    :goto_4f7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_56e

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v6, 0x0

    aget v6, v3, v6

    aget-object v6, v0, v6

    const/4 v8, 0x1

    aget v8, v3, v8

    aget-object v6, v6, v8

    const/4 v8, 0x2

    aget v8, v3, v8

    aget v6, v6, v8

    const/4 v8, 0x3

    aget v8, v3, v8

    aget-object v8, v1, v8

    const/4 v9, 0x4

    aget v9, v3, v9

    aget-object v8, v8, v9

    const/4 v9, 0x5

    aget v9, v3, v9

    aget v8, v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v8, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    const/4 v6, 0x0

    aget v6, v3, v6

    aget-object v6, v2, v6

    const/4 v8, 0x1

    aget v8, v3, v8

    aget-object v6, v6, v8

    const/4 v8, 0x2

    aget v3, v3, v8

    const/4 v8, 0x1

    aput-boolean v8, v6, v3

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_4f7

    :cond_56e
    const/4 v0, 0x0

    :goto_56f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    if-ge v0, v1, :cond_8

    const/4 v1, 0x0

    :goto_574
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    if-ge v1, v3, :cond_5aa

    const/4 v3, 0x0

    :goto_579
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    if-ge v3, v4, :cond_5a7

    const-string v4, "[%d][%d][%d]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v0

    aget-object v5, v5, v1

    aget-boolean v5, v5, v3

    invoke-static {v4, v5}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_579

    :cond_5a7
    add-int/lit8 v1, v1, 0x1

    goto :goto_574

    :cond_5aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_56f

    :cond_5ad
    move v13, v1

    move v1, v0

    move v0, v13

    goto/16 :goto_76

    :array_5b2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public testRealInverseScaled1fInput()V
    .registers 9
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    return-void

    :cond_a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x3951b717    # 2.0E-4f

    const v2, 0x3ba3d70a    # 0.005f

    mul-float/2addr v2, v0

    invoke-virtual {p0, v0, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    mul-int/2addr v0, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    mul-int/2addr v0, v3

    new-array v3, v0, [F

    array-length v0, v3

    new-array v4, v0, [F

    move v0, v1

    :goto_33
    array-length v5, v3

    if-ge v0, v5, :cond_43

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    aput v5, v3, v0

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_43
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-virtual {v0, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->realForward([F)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->realInverse([FZ)V

    :goto_4e
    array-length v0, v3

    if-ge v1, v0, :cond_9

    aget v0, v4, v1

    aget v5, v3, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v0, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e
.end method

.method public testRealInverseScaled3fInput()V
    .registers 12
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    return-void

    :cond_a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x3951b717    # 2.0E-4f

    const v1, 0x3ba3d70a    # 0.005f

    mul-float/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    filled-new-array {v1, v2, v4}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[F

    move v2, v3

    :goto_4a
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    if-ge v2, v4, :cond_73

    move v4, v3

    :goto_4f
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    if-ge v4, v5, :cond_70

    move v5, v3

    :goto_54
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    if-ge v5, v7, :cond_6d

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    aget-object v8, v0, v2

    aget-object v8, v8, v4

    aput v7, v8, v5

    aget-object v8, v1, v2

    aget-object v8, v8, v4

    aput v7, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_73
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-virtual {v2, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->realForward([[[F)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->realInverse([[[FZ)V

    move v2, v3

    :goto_7f
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numSlices:I

    if-ge v2, v4, :cond_9

    move v4, v3

    :goto_84
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numRows:I

    if-ge v4, v5, :cond_cf

    move v5, v3

    :goto_89
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3DTest;->numCols:I

    if-ge v5, v7, :cond_cc

    aget-object v7, v1, v2

    aget-object v7, v7, v4

    aget v7, v7, v5

    aget-object v8, v0, v2

    aget-object v8, v8, v4

    aget v8, v8, v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v7, v8}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    :cond_cc
    add-int/lit8 v4, v4, 0x1

    goto :goto_84

    :cond_cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_7f
.end method
