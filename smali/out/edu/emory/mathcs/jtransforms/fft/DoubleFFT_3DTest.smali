.class public Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/junit/runner/RunWith;
    value = Lorg/junit/runners/Parameterized;
.end annotation


# static fields
.field public static final DEFAULT_MESSAGE:Ljava/lang/String; = "%d-threaded FFT of size %dx%dx%d: "

.field public static final SEED:I = 0x132dd21


# instance fields
.field private final fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

.field private final numCols:I

.field private final numRows:I

.field private final numSlices:I

.field private final random:Ljava/util/Random;

.field private final sfft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

.field private final xfft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;


# direct methods
.method public constructor <init>(IIIIJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-direct {v0, p1, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;-><init>(III)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->xfft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-direct {v0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;-><init>(II)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->sfft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p5, p6}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->random:Ljava/util/Random;

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
.method public complexForward([[[D)V
    .registers 11

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->sfft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexForward([[D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [D

    move v0, v1

    :goto_17
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    if-ge v0, v2, :cond_73

    move v2, v1

    :goto_1c
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v2, v3, :cond_70

    move v3, v1

    :goto_21
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v3, v5, :cond_44

    mul-int/lit8 v5, v3, 0x2

    aget-object v6, p1, v3

    aget-object v6, v6, v2

    mul-int/lit8 v7, v0, 0x2

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v6, p1, v3

    aget-object v6, v6, v2

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_44
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->xfft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v3, v1

    :goto_4a
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v3, v5, :cond_6d

    aget-object v5, p1, v3

    aget-object v5, v5, v2

    mul-int/lit8 v6, v0, 0x2

    mul-int/lit8 v7, v3, 0x2

    aget-wide v7, v4, v7

    aput-wide v7, v5, v6

    aget-object v5, p1, v3

    aget-object v5, v5, v2

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-wide v7, v4, v7

    aput-wide v7, v5, v6

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

.method public createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;
    .registers 13

    const/4 v6, 0x0

    const-string v0, "%d-threaded FFT of size %dx%dx%d: "

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

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

.method public testComplexForward1dInput()V
    .registers 15
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v7, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v1, v2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/2addr v1, v2

    new-array v11, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[[D

    move v1, v7

    :goto_2f
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v1, v2, :cond_60

    move v2, v7

    :goto_34
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v2, v3, :cond_5d

    move v3, v7

    :goto_39
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_5a

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    aput-wide v8, v11, v4

    aget-object v4, v6, v1

    aget-object v4, v4, v2

    aput-wide v8, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_60
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexForward([D)V

    invoke-virtual {p0, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->complexForward([[[D)V

    move v8, v7

    :goto_69
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v8, v1, :cond_b3

    move v9, v7

    :goto_6e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v9, v1, :cond_af

    move v10, v7

    :goto_73
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v10, v1, :cond_ab

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v2, v8

    add-int/2addr v2, v9

    mul-int/2addr v1, v2

    add-int/2addr v1, v10

    aget-object v2, v6, v8

    aget-object v2, v2, v9

    aget-wide v2, v2, v10

    aget-wide v4, v11, v1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_73

    :cond_ab
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_6e

    :cond_af
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_69

    :cond_b3
    return-void
.end method

.method public testComplexForward3dInput()V
    .registers 14
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v8, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[[D

    move v1, v8

    :goto_38
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v1, v2, :cond_63

    move v2, v8

    :goto_3d
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v2, v3, :cond_60

    move v3, v8

    :goto_42
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_5d

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    aget-object v9, v6, v1

    aget-object v9, v9, v2

    aput-wide v4, v9, v3

    aget-object v9, v7, v1

    aget-object v9, v9, v2

    aput-wide v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_63
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexForward([[[D)V

    invoke-virtual {p0, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->complexForward([[[D)V

    move v9, v8

    :goto_6c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v9, v1, :cond_c4

    move v10, v8

    :goto_71
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v10, v1, :cond_c0

    move v11, v8

    :goto_76
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v11, v1, :cond_bc

    aget-object v1, v7, v9

    aget-object v1, v1, v10

    aget-wide v2, v1, v11

    aget-object v1, v6, v9

    aget-object v1, v1, v10

    aget-wide v4, v1, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_76

    :cond_bc
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_71

    :cond_c0
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_6c

    :cond_c4
    return-void
.end method

.method public testComplexInverseScaled1dInput()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x0

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v3, 0x3e6ad7f29abcaf48L    # 5.0E-8

    mul-double/2addr v3, v0

    invoke-virtual {p0, v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/2addr v1, v3

    new-array v7, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/2addr v1, v3

    new-array v8, v1, [D

    move v1, v2

    :goto_29
    array-length v3, v8

    if-ge v1, v3, :cond_39

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    aput-wide v3, v8, v1

    aput-wide v3, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_39
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexForward([D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    const/4 v3, 0x1

    invoke-virtual {v1, v8, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexInverse([DZ)V

    move v6, v2

    :goto_45
    array-length v1, v8

    if-ge v6, v1, :cond_6c

    aget-wide v2, v7, v6

    aget-wide v4, v8, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "]"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_45

    :cond_6c
    return-void
.end method

.method public testComplexInverseScaled3dInput()V
    .registers 14
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v8, 0x0

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v2, 0x3e6ad7f29abcaf48L    # 5.0E-8

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[[D

    move v1, v8

    :goto_3b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v1, v2, :cond_66

    move v2, v8

    :goto_40
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v2, v3, :cond_63

    move v3, v8

    :goto_45
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_60

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    aget-object v9, v7, v1

    aget-object v9, v9, v2

    aput-wide v4, v9, v3

    aget-object v9, v6, v1

    aget-object v9, v9, v2

    aput-wide v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_66
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexForward([[[D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    const/4 v2, 0x1

    invoke-virtual {v1, v7, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexInverse([[[DZ)V

    move v9, v8

    :goto_72
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v9, v1, :cond_ca

    move v10, v8

    :goto_77
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v10, v1, :cond_c6

    move v11, v8

    :goto_7c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v11, v1, :cond_c2

    aget-object v1, v6, v9

    aget-object v1, v1, v10

    aget-wide v2, v1, v11

    aget-object v1, v7, v9

    aget-object v1, v1, v10

    aget-wide v4, v1, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_7c

    :cond_c2
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_77

    :cond_c6
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_72

    :cond_ca
    return-void
.end method

.method public testComplexInverseUnscaled1dInput()V
    .registers 13
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x0

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v3, 0x3e6ad7f29abcaf48L    # 5.0E-8

    mul-double/2addr v3, v0

    invoke-virtual {p0, v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/2addr v1, v3

    new-array v7, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/2addr v1, v3

    new-array v8, v1, [D

    move v1, v2

    :goto_29
    array-length v3, v8

    if-ge v1, v3, :cond_39

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    aput-wide v3, v8, v1

    aput-wide v3, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_39
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexForward([D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v8, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexInverse([DZ)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/2addr v1, v3

    int-to-double v9, v1

    move v6, v2

    :goto_4d
    array-length v1, v8

    if-ge v6, v1, :cond_76

    aget-wide v1, v7, v6

    mul-double v2, v9, v1

    aget-wide v4, v8, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_4d

    :cond_76
    return-void
.end method

.method public testComplexInverseUnscaled3dInput()V
    .registers 16
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v8, 0x0

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v2, 0x3e6ad7f29abcaf48L    # 5.0E-8

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[[D

    move v1, v8

    :goto_3b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v1, v2, :cond_66

    move v2, v8

    :goto_40
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v2, v3, :cond_63

    move v3, v8

    :goto_45
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_60

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    aget-object v9, v7, v1

    aget-object v9, v9, v2

    aput-wide v4, v9, v3

    aget-object v9, v6, v1

    aget-object v9, v9, v2

    aput-wide v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_66
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexForward([[[D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v7, v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexInverse([[[DZ)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v1, v2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/2addr v1, v2

    int-to-double v12, v1

    move v9, v8

    :goto_7a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v9, v1, :cond_d4

    move v10, v8

    :goto_7f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v10, v1, :cond_d0

    move v11, v8

    :goto_84
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v11, v1, :cond_cc

    aget-object v1, v6, v9

    aget-object v1, v1, v10

    aget-wide v1, v1, v11

    mul-double v2, v12, v1

    aget-object v1, v7, v9

    aget-object v1, v1, v10

    aget-wide v4, v1, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "]["

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "]["

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "]"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_84

    :cond_cc
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_7f

    :cond_d0
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_7a

    :cond_d4
    return-void
.end method

.method public testRealForward1dInput()V
    .registers 16
    .annotation runtime Lorg/junit/Test;
    .end annotation

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v1, v2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/2addr v1, v2

    new-array v10, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v1, v2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/2addr v1, v2

    new-array v11, v1, [Z

    const/4 v1, 0x0

    :goto_52
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v1, v2, :cond_90

    const/4 v2, 0x0

    :goto_57
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v2, v3, :cond_8d

    const/4 v3, 0x0

    :goto_5c
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    if-ge v3, v4, :cond_8a

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    aput-wide v7, v10, v4

    aget-object v5, v6, v1

    aget-object v5, v5, v2

    mul-int/lit8 v9, v3, 0x2

    aput-wide v7, v5, v9

    aget-object v5, v6, v1

    aget-object v5, v5, v2

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v7

    const/4 v5, 0x0

    aput-boolean v5, v11, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_8d
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :cond_90
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realForward([D)V

    invoke-virtual {p0, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->complexForward([[[D)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v9, v1

    :goto_9f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v9, v1, :cond_1bf

    const/4 v1, 0x0

    move v8, v1

    :goto_a5
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v8, v1, :cond_e7

    const/4 v1, 0x2

    move v7, v1

    :goto_ab
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    if-ge v7, v1, :cond_e3

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v2, v9

    add-int/2addr v2, v8

    mul-int/2addr v1, v2

    add-int v13, v7, v1

    aget-wide v4, v10, v13

    aget-object v1, v6, v9

    aget-object v1, v1, v8

    aget-wide v2, v1, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "]"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x1

    aput-boolean v1, v11, v13

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_ab

    :cond_e3
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_a5

    :cond_e7
    const/4 v1, 0x1

    move v7, v1

    :goto_e9
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    if-ge v7, v1, :cond_1ba

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v9, v1, v2

    const/4 v2, 0x1

    aput v7, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v9, v1, v2

    const/4 v2, 0x4

    aput v7, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v9, v1, v2

    const/4 v2, 0x1

    aput v7, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v9, v1, v2

    const/4 v2, 0x4

    aput v7, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    sub-int/2addr v1, v7

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v9, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v9, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    aput v4, v2, v3

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v9, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v9, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v1, 0x5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v8, v1

    :goto_163
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_1b5

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x2

    aget v2, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    const/4 v4, 0x1

    aget v4, v1, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    const/4 v13, 0x0

    aget v13, v1, v13

    mul-int/2addr v5, v13

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int v13, v2, v3

    aget-wide v4, v10, v13

    const/4 v2, 0x3

    aget v2, v1, v2

    aget-object v2, v6, v2

    const/4 v3, 0x4

    aget v3, v1, v3

    aget-object v2, v2, v3

    const/4 v3, 0x5

    aget v1, v1, v3

    aget-wide v2, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "]"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x1

    aput-boolean v1, v11, v13

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_163

    :cond_1b5
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_e9

    :cond_1ba
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_9f

    :cond_1bf
    const/4 v1, 0x1

    move v7, v1

    :goto_1c1
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v1, v1, 0x2

    if-ge v7, v1, :cond_326

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v7, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v7, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v7, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v7, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v7, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v7, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v7, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v7, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    sub-int/2addr v1, v7

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    aput v4, v2, v3

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v4, v4, 0x2

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v4, v4, 0x2

    aput v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    aput v4, v2, v3

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v4, v4, 0x2

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v2, v1

    const/4 v1, 0x5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v8, v1

    :goto_2cf
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_321

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x2

    aget v2, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    const/4 v4, 0x1

    aget v4, v1, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    const/4 v9, 0x0

    aget v9, v1, v9

    mul-int/2addr v5, v9

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int v9, v2, v3

    aget-wide v4, v10, v9

    const/4 v2, 0x3

    aget v2, v1, v2

    aget-object v2, v6, v2

    const/4 v3, 0x4

    aget v3, v1, v3

    aget-object v2, v2, v3

    const/4 v3, 0x5

    aget v1, v1, v3

    aget-wide v2, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, "]"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x1

    aput-boolean v1, v11, v9

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_2cf

    :cond_321
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_1c1

    :cond_326
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_4d0

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v7, v1

    :goto_43a
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_48c

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x2

    aget v2, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    const/4 v4, 0x1

    aget v4, v1, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    const/4 v8, 0x0

    aget v8, v1, v8

    mul-int/2addr v5, v8

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int v8, v2, v3

    aget-wide v4, v10, v8

    const/4 v2, 0x3

    aget v2, v1, v2

    aget-object v2, v6, v2

    const/4 v3, 0x4

    aget v3, v1, v3

    aget-object v2, v2, v3

    const/4 v3, 0x5

    aget v1, v1, v3

    aget-wide v2, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "]"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x1

    aput-boolean v1, v11, v8

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_43a

    :cond_48c
    const/4 v0, 0x0

    :goto_48d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v0, v1, :cond_8

    const/4 v1, 0x0

    :goto_492
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v1, v2, :cond_4cc

    const/4 v2, 0x0

    :goto_497
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    if-ge v2, v3, :cond_4c9

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

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

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aget-boolean v3, v11, v3

    invoke-static {v4, v3}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_497

    :cond_4c9
    add-int/lit8 v1, v1, 0x1

    goto :goto_492

    :cond_4cc
    add-int/lit8 v0, v0, 0x1

    goto :goto_48d

    nop

    :array_4d0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public testRealForward3dInput()V
    .registers 16
    .annotation runtime Lorg/junit/Test;
    .end annotation

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [[[Z

    const/4 v1, 0x0

    :goto_64
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v1, v2, :cond_a2

    const/4 v2, 0x0

    :goto_69
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v2, v3, :cond_9f

    const/4 v3, 0x0

    :goto_6e
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    if-ge v3, v4, :cond_9c

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->random:Ljava/util/Random;

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

    aget-object v4, v8, v1

    aget-object v4, v4, v2

    const/4 v5, 0x0

    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_9f
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    :cond_a2
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realForward([[[D)V

    invoke-virtual {p0, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->complexForward([[[D)V

    const/4 v1, 0x0

    move v12, v1

    :goto_ac
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v12, v1, :cond_207

    const/4 v1, 0x0

    move v10, v1

    :goto_b2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v10, v1, :cond_107

    const/4 v1, 0x2

    move v9, v1

    :goto_b8
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    if-ge v9, v1, :cond_103

    aget-object v1, v6, v12

    aget-object v1, v1, v10

    aget-wide v4, v1, v9

    aget-object v1, v7, v12

    aget-object v1, v1, v10

    aget-wide v2, v1, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    aget-object v1, v8, v12

    aget-object v1, v1, v10

    const/4 v2, 0x1

    aput-boolean v2, v1, v9

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_b8

    :cond_103
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_b2

    :cond_107
    const/4 v1, 0x1

    move v10, v1

    :goto_109
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    if-ge v10, v1, :cond_202

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v12, v1, v2

    const/4 v2, 0x1

    aput v10, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v12, v1, v2

    const/4 v2, 0x4

    aput v10, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v12, v1, v2

    const/4 v2, 0x1

    aput v10, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v12, v1, v2

    const/4 v2, 0x4

    aput v10, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput v3, v1, v2

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    sub-int/2addr v1, v10

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v12, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v12, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    aput v4, v2, v3

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v12, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v12, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v1, 0x5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v11, v1

    :goto_185
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_1fd

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [I

    const/4 v1, 0x0

    aget v1, v9, v1

    aget-object v1, v6, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget v2, v9, v2

    aget-wide v4, v1, v2

    const/4 v1, 0x3

    aget v1, v9, v1

    aget-object v1, v7, v1

    const/4 v2, 0x4

    aget v2, v9, v2

    aget-object v1, v1, v2

    const/4 v2, 0x5

    aget v2, v9, v2

    aget-wide v2, v1, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v14, 0x0

    aget v14, v9, v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "]["

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v14, 0x1

    aget v14, v9, v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "]["

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v14, 0x2

    aget v14, v9, v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "]"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x0

    aget v1, v9, v1

    aget-object v1, v8, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget v2, v9, v2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_185

    :cond_1fd
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_109

    :cond_202
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto/16 :goto_ac

    :cond_207
    const/4 v1, 0x1

    move v10, v1

    :goto_209
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v1, v1, 0x2

    if-ge v10, v1, :cond_396

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v10, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v10, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v10, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v10, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v10, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v10, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v10, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v10, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput v3, v1, v2

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    sub-int/2addr v1, v10

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    aput v4, v2, v3

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v4, v4, 0x2

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v4, v4, 0x2

    aput v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    aput v4, v2, v3

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v4, v4, 0x2

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v2, v1

    const/4 v1, 0x5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v11, v1

    :goto_319
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_391

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [I

    const/4 v1, 0x0

    aget v1, v9, v1

    aget-object v1, v6, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget v2, v9, v2

    aget-wide v4, v1, v2

    const/4 v1, 0x3

    aget v1, v9, v1

    aget-object v1, v7, v1

    const/4 v2, 0x4

    aget v2, v9, v2

    aget-object v1, v1, v2

    const/4 v2, 0x5

    aget v2, v9, v2

    aget-wide v2, v1, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v13, 0x0

    aget v13, v9, v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, "]["

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v13, 0x1

    aget v13, v9, v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, "]["

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v13, 0x2

    aget v13, v9, v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, "]"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x0

    aget v1, v9, v1

    aget-object v1, v8, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget v2, v9, v2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_319

    :cond_391
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_209

    :cond_396
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_564

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    aput v3, v1, v2

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    aput v3, v1, v2

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    aput v3, v1, v2

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    aput v3, v1, v2

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v10, v1

    :goto_4ac
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_524

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [I

    const/4 v1, 0x0

    aget v1, v9, v1

    aget-object v1, v6, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget v2, v9, v2

    aget-wide v4, v1, v2

    const/4 v1, 0x3

    aget v1, v9, v1

    aget-object v1, v7, v1

    const/4 v2, 0x4

    aget v2, v9, v2

    aget-object v1, v1, v2

    const/4 v2, 0x5

    aget v2, v9, v2

    aget-wide v2, v1, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v12, 0x0

    aget v12, v9, v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v12, 0x1

    aget v12, v9, v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v12, 0x2

    aget v12, v9, v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x0

    aget v1, v9, v1

    aget-object v1, v8, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget v2, v9, v2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_4ac

    :cond_524
    const/4 v0, 0x0

    :goto_525
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v0, v1, :cond_8

    const/4 v1, 0x0

    :goto_52a
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v1, v2, :cond_560

    const/4 v2, 0x0

    :goto_52f
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    if-ge v2, v3, :cond_55d

    const-string v3, "[%d][%d][%d]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v8, v0

    aget-object v4, v4, v1

    aget-boolean v4, v4, v2

    invoke-static {v3, v4}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_52f

    :cond_55d
    add-int/lit8 v1, v1, 0x1

    goto :goto_52a

    :cond_560
    add-int/lit8 v0, v0, 0x1

    goto :goto_525

    nop

    :array_564
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public testRealForwardFull1dInput()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v1, 0x0

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide v4, 0x3ed4f8b588e368f1L    # 5.0E-6

    mul-double/2addr v4, v2

    invoke-virtual {p0, v2, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/2addr v3, v2

    mul-int/lit8 v2, v3, 0x2

    new-array v7, v2, [D

    mul-int/lit8 v2, v3, 0x2

    new-array v8, v2, [D

    move v2, v1

    :goto_21
    if-ge v2, v3, :cond_3a

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    aput-wide v4, v7, v2

    mul-int/lit8 v6, v2, 0x2

    aput-wide v4, v8, v6

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v8, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3a
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v2, v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexForward([D)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v2, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realForwardFull([D)V

    move v6, v1

    :goto_45
    array-length v1, v7

    if-ge v6, v1, :cond_6c

    aget-wide v2, v8, v6

    aget-wide v4, v7, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "]"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_45

    :cond_6c
    return-void
.end method

.method public testRealForwardFull3dInput()V
    .registers 14
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v8, 0x0

    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide v2, 0x3ed4f8b588e368f1L    # 5.0E-6

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[[D

    move v1, v8

    :goto_3b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v1, v2, :cond_72

    move v2, v8

    :goto_40
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v2, v3, :cond_6f

    move v3, v8

    :goto_45
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    if-ge v3, v4, :cond_6c

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->random:Ljava/util/Random;

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

    goto :goto_45

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_72
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexForward([[[D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realForwardFull([[[D)V

    move v9, v8

    :goto_7d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v9, v1, :cond_d5

    move v10, v8

    :goto_82
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v10, v1, :cond_d1

    move v11, v8

    :goto_87
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v11, v1, :cond_cd

    aget-object v1, v7, v9

    aget-object v1, v1, v10

    aget-wide v2, v1, v11

    aget-object v1, v6, v9

    aget-object v1, v1, v10

    aget-wide v4, v1, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_87

    :cond_cd
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_82

    :cond_d1
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_7d

    :cond_d5
    return-void
.end method

.method public testRealInverseFullScaled1dInput()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v9, 0x1

    const/4 v1, 0x0

    const-wide v2, 0x3d06849b86a12b9bL    # 1.0E-14

    const-wide v4, 0x3cd203af9ee75616L    # 1.0E-15

    invoke-virtual {p0, v2, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    mul-int/2addr v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/2addr v3, v2

    mul-int/lit8 v2, v3, 0x2

    new-array v7, v2, [D

    mul-int/lit8 v2, v3, 0x2

    new-array v8, v2, [D

    move v2, v1

    :goto_21
    if-ge v2, v3, :cond_3a

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    aput-wide v4, v7, v2

    mul-int/lit8 v6, v2, 0x2

    aput-wide v4, v8, v6

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v8, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3a
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v2, v8, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexInverse([DZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v2, v7, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realInverseFull([DZ)V

    move v6, v1

    :goto_45
    array-length v1, v7

    if-ge v6, v1, :cond_6c

    aget-wide v2, v8, v6

    aget-wide v4, v7, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "]"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_45

    :cond_6c
    return-void
.end method

.method public testRealInverseFullScaled3dInput()V
    .registers 14
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v11, 0x1

    const/4 v8, 0x0

    const-wide v0, 0x3d06849b86a12b9bL    # 1.0E-14

    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[[D

    move v1, v8

    :goto_3b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v1, v2, :cond_72

    move v2, v8

    :goto_40
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v2, v3, :cond_6f

    move v3, v8

    :goto_45
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    if-ge v3, v4, :cond_6c

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->random:Ljava/util/Random;

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

    goto :goto_45

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_72
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v7, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexInverse([[[DZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v6, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realInverseFull([[[DZ)V

    move v9, v8

    :goto_7d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v9, v1, :cond_d5

    move v10, v8

    :goto_82
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v10, v1, :cond_d1

    move v11, v8

    :goto_87
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v11, v1, :cond_cd

    aget-object v1, v7, v9

    aget-object v1, v1, v10

    aget-wide v2, v1, v11

    aget-object v1, v6, v9

    aget-object v1, v1, v10

    aget-wide v4, v1, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_87

    :cond_cd
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_82

    :cond_d1
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_7d

    :cond_d5
    return-void
.end method

.method public testRealInverseScaled1dInput()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    return-void

    :cond_a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    const-wide v3, 0x3e9421f5f40d8376L    # 3.0E-7

    mul-double/2addr v3, v0

    invoke-virtual {p0, v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    mul-int/2addr v1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    mul-int/2addr v1, v3

    new-array v7, v1, [D

    array-length v1, v7

    new-array v8, v1, [D

    move v1, v2

    :goto_37
    array-length v3, v7

    if-ge v1, v3, :cond_47

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    aput-wide v3, v7, v1

    aput-wide v3, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_47
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realForward([D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    const/4 v3, 0x1

    invoke-virtual {v1, v7, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realInverse([DZ)V

    move v6, v2

    :goto_53
    array-length v1, v7

    if-ge v6, v1, :cond_9

    aget-wide v2, v8, v6

    aget-wide v4, v7, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "]"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_53
.end method

.method public testRealInverseScaled3dInput()V
    .registers 14
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v8, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    return-void

    :cond_a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    const-wide v2, 0x3e9421f5f40d8376L    # 3.0E-7

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[[D

    move v1, v8

    :goto_50
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v1, v2, :cond_79

    move v2, v8

    :goto_55
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v2, v3, :cond_76

    move v3, v8

    :goto_5a
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    if-ge v3, v4, :cond_73

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    aget-object v9, v6, v1

    aget-object v9, v9, v2

    aput-wide v4, v9, v3

    aget-object v9, v7, v1

    aget-object v9, v9, v2

    aput-wide v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_79
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-virtual {v1, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realForward([[[D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realInverse([[[DZ)V

    move v9, v8

    :goto_85
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numSlices:I

    if-ge v9, v1, :cond_9

    move v10, v8

    :goto_8a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numRows:I

    if-ge v10, v1, :cond_d7

    move v11, v8

    :goto_8f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3DTest;->numCols:I

    if-ge v11, v1, :cond_d3

    aget-object v1, v7, v9

    aget-object v1, v1, v10

    aget-wide v2, v1, v11

    aget-object v1, v6, v9

    aget-object v1, v1, v10

    aget-wide v4, v1, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]["

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, "]"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_8f

    :cond_d3
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_8a

    :cond_d7
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_85
.end method
