.class public Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/junit/runner/RunWith;
    value = Lorg/junit/runners/Parameterized;
.end annotation


# static fields
.field public static final DEFAULT_MESSAGE:Ljava/lang/String; = "%d-threaded FFT of size %dx%d: "

.field public static final SEED:I = 0x132dd0a


# instance fields
.field private final cfft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

.field private final fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

.field private final numCols:I

.field private final numRows:I

.field private final random:Ljava/util/Random;

.field private final rfft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;


# direct methods
.method public constructor <init>(IIIJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-direct {v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->rfft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->cfft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-direct {v0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;-><init>(II)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p4, p5}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

    invoke-static {p3}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->setNumberOfThreads(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->setThreadsBeginN_2D(I)V

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

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x17

    new-array v3, v0, [I

    fill-array-data v3, :array_68

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_12
    array-length v2, v3

    if-ge v0, v2, :cond_67

    move v2, v1

    :goto_16
    array-length v5, v3

    if-ge v2, v5, :cond_64

    new-array v5, v8, [Ljava/lang/Object;

    aget v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aget v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const v6, 0x132dd0a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v8, [Ljava/lang/Object;

    aget v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aget v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const v6, 0x132dd0a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_64
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_67
    return-object v4

    :array_68
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
        0x78
        0x80
        0x100
        0x136
        0x1ff
        0x200
        0x400
    .end array-data
.end method


# virtual methods
.method public complexForward([[D)V
    .registers 10

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->rfft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [D

    move v0, v1

    :goto_17
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v0, v2, :cond_63

    move v2, v1

    :goto_1c
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_3b

    mul-int/lit8 v4, v2, 0x2

    aget-object v5, p1, v2

    mul-int/lit8 v6, v0, 0x2

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p1, v2

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_3b
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->cfft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v2, v1

    :goto_41
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_60

    aget-object v4, p1, v2

    mul-int/lit8 v5, v0, 0x2

    mul-int/lit8 v6, v2, 0x2

    aget-wide v6, v3, v6

    aput-wide v6, v4, v5

    aget-object v4, p1, v2

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v3, v6

    aput-wide v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_63
    return-void
.end method

.method public createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;
    .registers 13

    const/4 v6, 0x0

    const-string v0, "%d-threaded FFT of size %dx%d: "

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

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
    .registers 13
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v7, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v2

    new-array v10, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[D

    move v1, v7

    :goto_2a
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v1, v2, :cond_4d

    move v2, v7

    :goto_2f
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_4a

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    mul-int/lit8 v5, v1, 0x2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v5, v8

    add-int/2addr v5, v2

    aput-wide v3, v10, v5

    aget-object v5, v6, v1

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_4d
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexForward([D)V

    invoke-virtual {p0, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->complexForward([[D)V

    move v8, v7

    :goto_56
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v8, v1, :cond_9b

    move v9, v7

    :goto_5b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v9, v1, :cond_97

    aget-object v1, v6, v8

    aget-wide v2, v1, v9

    mul-int/lit8 v1, v8, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v4

    add-int/2addr v1, v9

    aget-wide v4, v10, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_5b

    :cond_97
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_56

    :cond_9b
    return-void
.end method

.method public testComplexForward2dInput()V
    .registers 13
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v8, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[D

    move v1, v8

    :goto_34
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v1, v2, :cond_53

    move v2, v8

    :goto_39
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_50

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    aget-object v5, v6, v1

    aput-wide v3, v5, v2

    aget-object v5, v7, v1

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_53
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexForward([[D)V

    invoke-virtual {p0, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->complexForward([[D)V

    move v9, v8

    :goto_5c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v9, v1, :cond_9d

    move v10, v8

    :goto_61
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v10, v1, :cond_99

    aget-object v1, v7, v9

    aget-wide v2, v1, v10

    aget-object v1, v6, v9

    aget-wide v4, v1, v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_61

    :cond_99
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_5c

    :cond_9d
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

    invoke-virtual {p0, v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v3

    new-array v7, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v3

    new-array v8, v1, [D

    move v1, v2

    :goto_23
    array-length v3, v8

    if-ge v1, v3, :cond_33

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    aput-wide v3, v8, v1

    aput-wide v3, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_33
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexForward([D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    const/4 v3, 0x1

    invoke-virtual {v1, v8, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexInverse([DZ)V

    move v6, v2

    :goto_3f
    array-length v1, v8

    if-ge v6, v1, :cond_66

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

    goto :goto_3f

    :cond_66
    return-void
.end method

.method public testComplexInverseScaled2dInput()V
    .registers 13
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v8, 0x0

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v2, 0x3e6ad7f29abcaf48L    # 5.0E-8

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[D

    move v1, v8

    :goto_37
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v1, v2, :cond_56

    move v2, v8

    :goto_3c
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_53

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    aget-object v5, v7, v1

    aput-wide v3, v5, v2

    aget-object v5, v6, v1

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_56
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexForward([[D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    const/4 v2, 0x1

    invoke-virtual {v1, v7, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexInverse([[DZ)V

    move v9, v8

    :goto_62
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v9, v1, :cond_a3

    move v10, v8

    :goto_67
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v10, v1, :cond_9f

    aget-object v1, v6, v9

    aget-wide v2, v1, v10

    aget-object v1, v7, v9

    aget-wide v4, v1, v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_67

    :cond_9f
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_62

    :cond_a3
    return-void
.end method

.method public testComplexInverseUnScaled1dInput()V
    .registers 13
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x0

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v3, 0x3e6ad7f29abcaf48L    # 5.0E-8

    mul-double/2addr v3, v0

    invoke-virtual {p0, v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v3

    new-array v7, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v3

    new-array v8, v1, [D

    move v1, v2

    :goto_23
    array-length v3, v8

    if-ge v1, v3, :cond_33

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    aput-wide v3, v8, v1

    aput-wide v3, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_33
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexForward([D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v8, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexInverse([DZ)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v3

    int-to-double v9, v1

    move v6, v2

    :goto_44
    array-length v1, v8

    if-ge v6, v1, :cond_6d

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

    goto :goto_44

    :cond_6d
    return-void
.end method

.method public testComplexInverseUnScaled2dInput()V
    .registers 15
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v8, 0x0

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v2, 0x3e6ad7f29abcaf48L    # 5.0E-8

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[D

    move v1, v8

    :goto_37
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v1, v2, :cond_56

    move v2, v8

    :goto_3c
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_53

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    aget-object v5, v6, v1

    aput-wide v3, v5, v2

    aget-object v5, v7, v1

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_56
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexForward([[D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v7, v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexInverse([[DZ)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v2

    int-to-double v11, v1

    move v9, v8

    :goto_67
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v9, v1, :cond_aa

    move v10, v8

    :goto_6c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v10, v1, :cond_a6

    aget-object v1, v6, v9

    aget-wide v1, v1, v10

    mul-double v2, v11, v1

    aget-object v1, v7, v9

    aget-wide v4, v1, v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, "]["

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, "]"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_6c

    :cond_a6
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_67

    :cond_aa
    return-void
.end method

.method public testRealForward1dInput()V
    .registers 14
    .annotation runtime Lorg/junit/Test;
    .end annotation

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v2, 0x3e6ad7f29abcaf48L    # 5.0E-8

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v2

    new-array v9, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v2

    new-array v10, v1, [Z

    const/4 v1, 0x0

    invoke-static {v10, v1}, Ljava/util/Arrays;->fill([ZZ)V

    const/4 v1, 0x0

    :goto_46
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v1, v2, :cond_71

    const/4 v2, 0x0

    :goto_4b
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v2, v3, :cond_6e

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v2

    aput-wide v3, v9, v5

    aget-object v5, v6, v1

    mul-int/lit8 v7, v2, 0x2

    aput-wide v3, v5, v7

    aget-object v3, v6, v1

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v7, 0x0

    aput-wide v7, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_71
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realForward([D)V

    invoke-virtual {p0, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->complexForward([[D)V

    const/4 v1, 0x1

    move v7, v1

    :goto_7b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v7, v1, :cond_b7

    const/4 v1, 0x2

    move v8, v1

    :goto_81
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v8, v1, :cond_b3

    aget-object v1, v6, v7

    aget-wide v2, v1, v8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v7

    add-int v11, v1, v8

    aget-wide v4, v9, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

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

    const/4 v1, 0x1

    aput-boolean v1, v10, v11

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_81

    :cond_b3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_7b

    :cond_b7
    const/4 v1, 0x2

    move v7, v1

    :goto_b9
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v7, v1, :cond_e7

    const/4 v1, 0x0

    aget-object v1, v6, v1

    aget-wide v2, v1, v7

    aget-wide v4, v9, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[0]["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "]"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x1

    aput-boolean v1, v10, v7

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_b9

    :cond_e7
    const/4 v1, 0x1

    move v7, v1

    :goto_e9
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    if-ge v7, v1, :cond_1b1

    aget-object v1, v6, v7

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int v8, v7, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v7

    aget-wide v4, v9, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x1

    aput-boolean v1, v10, v8

    aget-object v1, v6, v7

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v7

    add-int/lit8 v8, v1, 0x1

    aget-wide v4, v9, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x1

    aput-boolean v1, v10, v8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    sub-int/2addr v1, v7

    aget-object v1, v6, v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    aget-wide v2, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    sub-int/2addr v1, v7

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v4

    add-int/lit8 v8, v1, 0x1

    aget-wide v4, v9, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x1

    aput-boolean v1, v10, v8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    sub-int/2addr v1, v7

    aget-object v1, v6, v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    sub-int/2addr v1, v7

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int v8, v1, v4

    aget-wide v4, v9, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x1

    aput-boolean v1, v10, v8

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_e9

    :cond_1b1
    const/4 v1, 0x0

    aget-object v1, v6, v1

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v1, 0x0

    aget-wide v4, v9, v1

    const-string v1, "[0]"

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v10, v1

    const/4 v1, 0x0

    aget-object v1, v6, v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    aget-wide v2, v1, v2

    const/4 v1, 0x1

    aget-wide v4, v9, v1

    const-string v1, "[1]"

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v10, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    aget-object v1, v6, v1

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int v7, v1, v4

    aget-wide v4, v9, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "]"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x1

    aput-boolean v1, v10, v7

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    aget-object v1, v6, v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    aget-wide v2, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v4

    add-int/lit8 v6, v1, 0x1

    aget-wide v4, v9, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "]["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "]"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v0, 0x1

    aput-boolean v0, v10, v6

    const/4 v0, 0x0

    :goto_24d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v0, v1, :cond_8

    const/4 v1, 0x0

    :goto_252
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v1, v2, :cond_272

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    const-string v3, "[%d]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aget-boolean v2, v10, v2

    invoke-static {v3, v2}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_252

    :cond_272
    add-int/lit8 v0, v0, 0x1

    goto :goto_24d
.end method

.method public testRealForward2dInput()V
    .registers 13
    .annotation runtime Lorg/junit/Test;
    .end annotation

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v2, 0x3e6ad7f29abcaf48L    # 5.0E-8

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [[Z

    const/4 v1, 0x0

    :goto_56
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v1, v2, :cond_84

    const/4 v2, 0x0

    :goto_5b
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v2, v3, :cond_81

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

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

    aget-object v3, v8, v1

    const/4 v4, 0x0

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    :cond_84
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realForward([[D)V

    invoke-virtual {p0, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->complexForward([[D)V

    const/4 v1, 0x1

    move v10, v1

    :goto_8e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v10, v1, :cond_d3

    const/4 v1, 0x2

    move v9, v1

    :goto_94
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v9, v1, :cond_cf

    aget-object v1, v7, v10

    aget-wide v2, v1, v9

    aget-object v1, v6, v10

    aget-wide v4, v1, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

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

    aget-object v1, v8, v10

    const/4 v2, 0x1

    aput-boolean v2, v1, v9

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_94

    :cond_cf
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_8e

    :cond_d3
    const/4 v1, 0x2

    move v9, v1

    :goto_d5
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v9, v1, :cond_109

    const/4 v1, 0x0

    aget-object v1, v7, v1

    aget-wide v2, v1, v9

    const/4 v1, 0x0

    aget-object v1, v6, v1

    aget-wide v4, v1, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[0]["

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "]"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x0

    aget-object v1, v8, v1

    const/4 v2, 0x1

    aput-boolean v2, v1, v9

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_d5

    :cond_109
    const/4 v1, 0x1

    move v9, v1

    :goto_10b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    if-ge v9, v1, :cond_1e2

    aget-object v1, v7, v9

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    aget-object v1, v6, v9

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "][0]"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    aget-object v1, v8, v9

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    aget-object v1, v7, v9

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    aget-object v1, v6, v9

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "][1]"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    aget-object v1, v8, v9

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    sub-int/2addr v1, v9

    aget-object v1, v7, v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    aget-wide v2, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    sub-int/2addr v1, v9

    aget-object v1, v6, v1

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    sub-int/2addr v10, v9

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "][1]"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    sub-int/2addr v1, v9

    aget-object v1, v8, v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    sub-int/2addr v1, v9

    aget-object v1, v7, v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    sub-int/2addr v1, v9

    aget-object v1, v6, v1

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    sub-int/2addr v10, v9

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "][0]"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    sub-int/2addr v1, v9

    aget-object v1, v8, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_10b

    :cond_1e2
    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v1, 0x0

    aget-object v1, v6, v1

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    const-string v1, "[0][0]"

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x0

    aget-object v1, v8, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    const/4 v1, 0x0

    aget-object v1, v7, v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    aget-wide v2, v1, v2

    const/4 v1, 0x0

    aget-object v1, v6, v1

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    const-string v1, "[0][1]"

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    const/4 v1, 0x0

    aget-object v1, v8, v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    aget-object v1, v7, v1

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    aget-object v1, v6, v1

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "][0]"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    aget-object v1, v8, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    aget-object v1, v7, v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    aget-wide v2, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    aget-object v1, v6, v1

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "][1]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    div-int/lit8 v0, v0, 0x2

    aget-object v0, v8, v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    const/4 v0, 0x0

    :goto_28d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v0, v1, :cond_8

    const/4 v1, 0x0

    :goto_292
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v1, v2, :cond_2b7

    const-string v2, "[%d][%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, v8, v0

    aget-boolean v3, v3, v1

    invoke-static {v2, v3}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_292

    :cond_2b7
    add-int/lit8 v0, v0, 0x1

    goto :goto_28d
.end method

.method public testRealForwardFull1dInput()V
    .registers 14
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v7, 0x0

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide v0, 0x3ed4f8b588e368f1L    # 5.0E-6

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    const/16 v5, 0x1ff

    if-ne v4, v5, :cond_16

    const-wide v0, 0x3f0a36e2eb1c432dL    # 5.0E-5

    :cond_16
    mul-double/2addr v0, v2

    invoke-virtual {p0, v2, v3, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v2

    new-array v10, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[D

    move v1, v7

    :goto_38
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v1, v2, :cond_63

    move v2, v7

    :goto_3d
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v2, v3, :cond_60

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

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

    goto :goto_3d

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_63
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realForwardFull([D)V

    invoke-virtual {p0, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->complexForward([[D)V

    move v8, v7

    :goto_6c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v8, v1, :cond_a7

    move v9, v7

    :goto_71
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v9, v1, :cond_a3

    aget-object v1, v6, v8

    aget-wide v2, v1, v9

    mul-int/lit8 v1, v8, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v4

    add-int/2addr v1, v9

    aget-wide v4, v10, v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_71

    :cond_a3
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_6c

    :cond_a7
    return-void
.end method

.method public testRealForwardFull2dInput()V
    .registers 13
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v8, 0x0

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide v0, 0x3ed4f8b588e368f1L    # 5.0E-6

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    const/16 v5, 0x1ff

    if-ne v4, v5, :cond_16

    const-wide v0, 0x3f0a36e2eb1c432dL    # 5.0E-5

    :cond_16
    mul-double/2addr v0, v2

    invoke-virtual {p0, v2, v3, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[D

    move v1, v8

    :goto_42
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v1, v2, :cond_6b

    move v2, v8

    :goto_47
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v2, v3, :cond_68

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

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

    goto :goto_47

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_6b
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realForwardFull([[D)V

    invoke-virtual {p0, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->complexForward([[D)V

    move v9, v8

    :goto_74
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v9, v1, :cond_b5

    move v10, v8

    :goto_79
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v10, v1, :cond_b1

    aget-object v1, v7, v9

    aget-wide v2, v1, v10

    aget-object v1, v6, v9

    aget-wide v4, v1, v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_79

    :cond_b1
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_74

    :cond_b5
    return-void
.end method

.method public testRealInverseFullScaled1dInput()V
    .registers 12
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v10, 0x1

    const/4 v2, 0x0

    const-wide v0, 0x3d06849b86a12b9bL    # 1.0E-14

    const-wide v3, 0x3cd203af9ee75616L    # 1.0E-15

    invoke-virtual {p0, v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v3

    new-array v7, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v3

    new-array v8, v1, [D

    move v1, v2

    :goto_23
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v1, v3, :cond_4a

    move v3, v2

    :goto_28
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v3, v4, :cond_47

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v3

    aput-wide v4, v7, v6

    mul-int/lit8 v9, v6, 0x2

    aput-wide v4, v8, v9

    mul-int/lit8 v4, v6, 0x2

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v8, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_4a
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v8, v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexInverse([DZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v7, v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realInverseFull([DZ)V

    move v6, v2

    :goto_55
    array-length v1, v7

    if-ge v6, v1, :cond_7c

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

    goto :goto_55

    :cond_7c
    return-void
.end method

.method public testRealInverseFullScaled2dInput()V
    .registers 13
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v11, 0x1

    const/4 v8, 0x0

    const-wide v0, 0x3d06849b86a12b9bL    # 1.0E-14

    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[D

    move v1, v8

    :goto_37
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v1, v2, :cond_60

    move v2, v8

    :goto_3c
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v2, v3, :cond_5d

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

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

    goto :goto_3c

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_60
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v6, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realInverseFull([[DZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v7, v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexInverse([[DZ)V

    move v9, v8

    :goto_6b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v9, v1, :cond_ac

    move v10, v8

    :goto_70
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v10, v1, :cond_a8

    aget-object v1, v7, v9

    aget-wide v2, v1, v10

    aget-object v1, v6, v9

    aget-wide v4, v1, v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_70

    :cond_a8
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_6b

    :cond_ac
    return-void
.end method

.method public testRealInverseFullUnscaled1dInput()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/16 v7, 0x1ff

    const/16 v6, 0x136

    const/4 v2, 0x0

    const-wide v3, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide v0, 0x3ea0c6f7a0b5ed8dL    # 5.0E-7

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-eq v5, v6, :cond_17

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ne v5, v6, :cond_1c

    :cond_17
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    :cond_1c
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-eq v5, v7, :cond_24

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ne v5, v7, :cond_29

    :cond_24
    const-wide v0, 0x3f0a36e2eb1c432dL    # 5.0E-5

    :cond_29
    mul-double/2addr v0, v3

    invoke-virtual {p0, v3, v4, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v3

    new-array v7, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v3

    new-array v8, v1, [D

    move v1, v2

    :goto_41
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v1, v3, :cond_68

    move v3, v2

    :goto_46
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v3, v4, :cond_65

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v3

    aput-wide v4, v7, v6

    mul-int/lit8 v9, v6, 0x2

    aput-wide v4, v8, v9

    mul-int/lit8 v4, v6, 0x2

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v8, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_68
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v8, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexInverse([DZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v7, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realInverseFull([DZ)V

    move v6, v2

    :goto_73
    array-length v1, v7

    if-ge v6, v1, :cond_9a

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

    goto :goto_73

    :cond_9a
    return-void
.end method

.method public testRealInverseFullUnscaled2dInput()V
    .registers 13
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/16 v6, 0x1ff

    const/16 v5, 0x136

    const/4 v8, 0x0

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide v0, 0x3ea0c6f7a0b5ed8dL    # 5.0E-7

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-eq v4, v5, :cond_17

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ne v4, v5, :cond_1c

    :cond_17
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    :cond_1c
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-eq v4, v6, :cond_24

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ne v4, v6, :cond_29

    :cond_24
    const-wide v0, 0x3f0a36e2eb1c432dL    # 5.0E-5

    :cond_29
    mul-double/2addr v0, v2

    invoke-virtual {p0, v2, v3, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[D

    move v1, v8

    :goto_55
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v1, v2, :cond_7e

    move v2, v8

    :goto_5a
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v2, v3, :cond_7b

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

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

    goto :goto_5a

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_7e
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v6, v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realInverseFull([[DZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v7, v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexInverse([[DZ)V

    move v9, v8

    :goto_89
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v9, v1, :cond_ca

    move v10, v8

    :goto_8e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v10, v1, :cond_c6

    aget-object v1, v7, v9

    aget-wide v2, v1, v10

    aget-object v1, v6, v9

    aget-wide v4, v1, v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_8e

    :cond_c6
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_89

    :cond_ca
    return-void
.end method

.method public testRealInverseScaled1dInput()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    return-void

    :cond_a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    const-wide v3, 0x3d06849b86a12b9bL    # 1.0E-14

    mul-double/2addr v3, v0

    invoke-virtual {p0, v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    mul-int/2addr v1, v3

    new-array v7, v1, [D

    array-length v1, v7

    new-array v8, v1, [D

    move v1, v2

    :goto_2c
    array-length v3, v7

    if-ge v1, v3, :cond_3c

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    aput-wide v3, v7, v1

    aput-wide v3, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_3c
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realForward([D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    const/4 v3, 0x1

    invoke-virtual {v1, v7, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realInverse([DZ)V

    move v6, v2

    :goto_48
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

    goto :goto_48
.end method

.method public testRealInverseScaled2dInput()V
    .registers 13
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v8, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    return-void

    :cond_a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    const-wide v2, 0x3d06849b86a12b9bL    # 1.0E-14

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [[D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[D

    move v1, v8

    :goto_44
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v1, v2, :cond_61

    move v2, v8

    :goto_49
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v2, v3, :cond_5e

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    aget-object v5, v6, v1

    aput-wide v3, v5, v2

    aget-object v5, v7, v1

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_61
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-virtual {v1, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realForward([[D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realInverse([[DZ)V

    move v9, v8

    :goto_6d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numRows:I

    if-ge v9, v1, :cond_9

    move v10, v8

    :goto_72
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2DTest;->numCols:I

    if-ge v10, v1, :cond_a8

    aget-object v1, v7, v9

    aget-wide v2, v1, v10

    aget-object v1, v6, v9

    aget-wide v4, v1, v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]["

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_72

    :cond_a8
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_6d
.end method
