.class public Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/junit/runner/RunWith;
    value = Lorg/junit/runners/Parameterized;
.end annotation


# static fields
.field public static final DEFAULT_MESSAGE:Ljava/lang/String; = "%d-threaded FFT of size %dx%d: "

.field public static final SEED:I = 0x132dd21


# instance fields
.field private final cfft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

.field private final fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

.field private final numCols:I

.field private final numRows:I

.field private final random:Ljava/util/Random;

.field private final rfft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;


# direct methods
.method public constructor <init>(IIIJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-direct {v0, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->rfft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->cfft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-direct {v0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;-><init>(II)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p4, p5}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

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

    const v6, 0x132dd21

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

    const v6, 0x132dd21

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
.method public complexForward([[F)V
    .registers 9

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->rfft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    move v0, v1

    :goto_17
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v0, v2, :cond_63

    move v2, v1

    :goto_1c
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_3b

    mul-int/lit8 v4, v2, 0x2

    aget-object v5, p1, v2

    mul-int/lit8 v6, v0, 0x2

    aget v5, v5, v6

    aput v5, v3, v4

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p1, v2

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_3b
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->cfft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v2, v1

    :goto_41
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_60

    aget-object v4, p1, v2

    mul-int/lit8 v5, v0, 0x2

    mul-int/lit8 v6, v2, 0x2

    aget v6, v3, v6

    aput v6, v4, v5

    aget-object v4, p1, v2

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v6, v3, v6

    aput v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_63
    return-void
.end method

.method public createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;
    .registers 11

    const-wide/16 v2, 0x0

    const-string v0, "%d-threaded FFT of size %dx%d: "

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

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

.method public testComplexForward1fInput()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v0, v1

    new-array v5, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v1, v2

    :goto_28
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v1, v3, :cond_4b

    move v3, v2

    :goto_2d
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v3, v6, :cond_48

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-int/lit8 v7, v1, 0x2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v3

    aput v6, v5, v7

    aget-object v7, v0, v1

    aput v6, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_4b
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexForward([F)V

    invoke-virtual {p0, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->complexForward([[F)V

    move v1, v2

    :goto_54
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v1, v3, :cond_95

    move v3, v2

    :goto_59
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v3, v6, :cond_92

    aget-object v6, v0, v1

    aget v6, v6, v3

    mul-int/lit8 v7, v1, 0x2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v3

    aget v7, v5, v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_92
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_95
    return-void
.end method

.method public testComplexForward2fInput()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    move v2, v3

    :goto_31
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_50

    move v4, v3

    :goto_36
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_4d

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    aget-object v7, v0, v2

    aput v6, v7, v4

    aget-object v7, v1, v2

    aput v6, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_50
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v2, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexForward([[F)V

    invoke-virtual {p0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->complexForward([[F)V

    move v2, v3

    :goto_59
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_98

    move v4, v3

    :goto_5e
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_95

    aget-object v6, v1, v2

    aget v6, v6, v4

    aget-object v7, v0, v2

    aget v7, v7, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_98
    return-void
.end method

.method public testComplexInverseScaled1fInput()V
    .registers 9
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v1, 0x0

    const v0, 0x3951b717    # 2.0E-4f

    const v2, 0x3ba3d70a    # 0.005f

    mul-float/2addr v2, v0

    invoke-virtual {p0, v0, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    mul-int/lit8 v0, v0, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v0, v3

    new-array v3, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    mul-int/lit8 v0, v0, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v0, v4

    new-array v4, v0, [F

    move v0, v1

    :goto_1f
    array-length v5, v4

    if-ge v0, v5, :cond_2f

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    aput v5, v4, v0

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2f
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v0, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexForward([F)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexInverse([FZ)V

    :goto_3a
    array-length v0, v4

    if-ge v1, v0, :cond_60

    aget v0, v3, v1

    aget v5, v4, v1

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

    goto :goto_3a

    :cond_60
    return-void
.end method

.method public testComplexInverseScaled2fInput()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v3, 0x0

    const v0, 0x3951b717    # 2.0E-4f

    const v1, 0x3ba3d70a    # 0.005f

    mul-float/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    move v2, v3

    :goto_31
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_50

    move v4, v3

    :goto_36
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_4d

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    aget-object v7, v1, v2

    aput v6, v7, v4

    aget-object v7, v0, v2

    aput v6, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_50
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v2, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexForward([[F)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexInverse([[FZ)V

    move v2, v3

    :goto_5c
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_9b

    move v4, v3

    :goto_61
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_98

    aget-object v6, v0, v2

    aget v6, v6, v4

    aget-object v7, v1, v2

    aget v7, v7, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    :cond_98
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    :cond_9b
    return-void
.end method

.method public testComplexInverseUnScaled1fInput()V
    .registers 10
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/16 v8, 0x136

    const/16 v7, 0x100

    const v2, 0x3d4ccccd    # 0.05f

    const v1, 0x3d23d70a    # 0.04f

    const/4 v4, 0x0

    const v3, 0x3951b717    # 2.0E-4f

    const v0, 0x3ba3d70a    # 0.005f

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    const/16 v6, 0x400

    if-eq v5, v6, :cond_1d

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    const/16 v6, 0x400

    if-ne v5, v6, :cond_b3

    :cond_1d
    const v0, 0x3ca3d70a    # 0.02f

    const/high16 v3, 0x3f000000    # 0.5f

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-eq v5, v7, :cond_2a

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v5, v7, :cond_2b

    :cond_2a
    move v0, v1

    :cond_2b
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-eq v5, v8, :cond_33

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v5, v8, :cond_34

    :cond_33
    move v0, v2

    :cond_34
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    const/16 v6, 0x1ff

    if-eq v5, v6, :cond_40

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    const/16 v6, 0x1ff

    if-ne v5, v6, :cond_b0

    :cond_40
    const v0, 0x3dcccccd    # 0.1f

    :goto_43
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    const/16 v5, 0x200

    if-eq v3, v5, :cond_4f

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    const/16 v5, 0x200

    if-ne v3, v5, :cond_50

    :cond_4f
    move v2, v1

    :cond_50
    :goto_50
    mul-float/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v0, v2

    new-array v2, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    mul-int/lit8 v0, v0, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v0, v3

    new-array v3, v0, [F

    move v0, v4

    :goto_68
    array-length v5, v3

    if-ge v0, v5, :cond_78

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    aput v5, v3, v0

    aput v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    :cond_78
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v0, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexForward([F)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v0, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexInverse([FZ)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v0, v5

    :goto_87
    array-length v5, v3

    if-ge v4, v5, :cond_af

    int-to-float v5, v0

    aget v6, v2, v4

    mul-float/2addr v5, v6

    aget v6, v3, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_87

    :cond_af
    return-void

    :cond_b0
    move v2, v0

    move v0, v3

    goto :goto_43

    :cond_b3
    move v2, v3

    goto :goto_50
.end method

.method public testComplexInverseUnScaled2fInput()V
    .registers 12
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/16 v8, 0x136

    const/16 v7, 0x100

    const v2, 0x3d4ccccd    # 0.05f

    const v1, 0x3d23d70a    # 0.04f

    const/4 v4, 0x0

    const v3, 0x3951b717    # 2.0E-4f

    const v0, 0x3ba3d70a    # 0.005f

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    const/16 v6, 0x400

    if-eq v5, v6, :cond_1d

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    const/16 v6, 0x400

    if-ne v5, v6, :cond_f0

    :cond_1d
    const v0, 0x3ca3d70a    # 0.02f

    const/high16 v3, 0x3f000000    # 0.5f

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-eq v5, v7, :cond_2a

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v5, v7, :cond_2b

    :cond_2a
    move v0, v1

    :cond_2b
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-eq v5, v8, :cond_33

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v5, v8, :cond_34

    :cond_33
    move v0, v2

    :cond_34
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    const/16 v6, 0x1ff

    if-eq v5, v6, :cond_40

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    const/16 v6, 0x1ff

    if-ne v5, v6, :cond_ec

    :cond_40
    const v0, 0x3dcccccd    # 0.1f

    :goto_43
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    const/16 v5, 0x200

    if-eq v3, v5, :cond_4f

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    const/16 v5, 0x200

    if-ne v3, v5, :cond_50

    :cond_4f
    move v2, v1

    :cond_50
    :goto_50
    mul-float/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    move v2, v4

    :goto_7a
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v3, :cond_99

    move v3, v4

    :goto_7f
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v3, v6, :cond_96

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    aget-object v7, v1, v2

    aput v6, v7, v3

    aget-object v7, v0, v2

    aput v6, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    :cond_99
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v2, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexForward([[F)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v2, v1, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexInverse([[FZ)V

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int v6, v2, v3

    move v2, v4

    :goto_aa
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v3, :cond_eb

    move v3, v4

    :goto_af
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v7, v7, 0x2

    if-ge v3, v7, :cond_e8

    int-to-float v7, v6

    aget-object v8, v0, v2

    aget v8, v8, v3

    mul-float/2addr v7, v8

    aget-object v8, v1, v2

    aget v8, v8, v3

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

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v7, v8}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_af

    :cond_e8
    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    :cond_eb
    return-void

    :cond_ec
    move v2, v0

    move v0, v3

    goto/16 :goto_43

    :cond_f0
    move v2, v3

    goto/16 :goto_50
.end method

.method public testRealForward1fInput()V
    .registers 15
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/16 v6, 0x400

    const/4 v5, 0x2

    const v1, 0x3c23d70a    # 0.01f

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    return-void

    :cond_11
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x3ba3d70a    # 0.005f

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-eq v3, v6, :cond_24

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v3, v6, :cond_25

    :cond_24
    move v0, v1

    :cond_25
    mul-float/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v0, v1

    new-array v7, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v1, v3

    new-array v8, v1, [Z

    invoke-static {v8, v2}, Ljava/util/Arrays;->fill([ZZ)V

    move v1, v2

    :goto_4e
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v1, v3, :cond_78

    move v3, v2

    :goto_53
    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v3, v9, :cond_75

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v10, v1

    add-int/2addr v10, v3

    aput v9, v7, v10

    aget-object v10, v0, v1

    mul-int/lit8 v11, v3, 0x2

    aput v9, v10, v11

    aget-object v9, v0, v1

    mul-int/lit8 v10, v3, 0x2

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_78
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->realForward([F)V

    invoke-virtual {p0, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->complexForward([[F)V

    move v1, v4

    :goto_81
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v1, v3, :cond_b8

    move v3, v5

    :goto_86
    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v3, v9, :cond_b5

    aget-object v9, v0, v1

    aget v9, v9, v3

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v10, v1

    add-int/2addr v10, v3

    aget v11, v7, v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12, v9, v11}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aput-boolean v4, v8, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    :cond_b5
    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    :cond_b8
    :goto_b8
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v5, v1, :cond_e3

    aget-object v1, v0, v2

    aget v1, v1, v5

    aget v3, v7, v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[0]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aput-boolean v4, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b8

    :cond_e3
    move v1, v4

    :goto_e4
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_1a3

    aget-object v3, v0, v1

    aget v3, v3, v2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v5, v1

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v9, v1

    aget v9, v7, v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v3, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aput-boolean v4, v8, v5

    aget-object v3, v0, v1

    aget v3, v3, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    aget v9, v7, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v3, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aput-boolean v4, v8, v5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    sub-int/2addr v3, v1

    aget-object v3, v0, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    aget v3, v3, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    sub-int/2addr v5, v1

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    aget v9, v7, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v3, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aput-boolean v4, v8, v5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    sub-int/2addr v3, v1

    aget-object v3, v0, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    add-int/lit8 v5, v5, 0x1

    aget v3, v3, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    sub-int/2addr v5, v1

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v5, v9

    aget v9, v7, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v3, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aput-boolean v4, v8, v5

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e4

    :cond_1a3
    aget-object v1, v0, v2

    aget v1, v1, v2

    aget v3, v7, v2

    const-string v5, "[0]"

    invoke-virtual {v6, v5, v1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aput-boolean v4, v8, v2

    aget-object v1, v0, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    aget v1, v1, v3

    aget v3, v7, v4

    const-string v5, "[1]"

    invoke-virtual {v6, v5, v1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aput-boolean v4, v8, v4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    aget-object v1, v0, v1

    aget v1, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v3, v5

    aget v5, v7, v3

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

    invoke-virtual {v6, v9, v1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aput-boolean v4, v8, v3

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    aget v0, v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    aget v3, v7, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v0, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aput-boolean v4, v8, v1

    move v0, v2

    :goto_232
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v0, v1, :cond_10

    move v1, v2

    :goto_237
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v1, v3, :cond_255

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    const-string v5, "[%d]"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aget-boolean v3, v8, v3

    invoke-static {v5, v3}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_237

    :cond_255
    add-int/lit8 v0, v0, 0x1

    goto :goto_232
.end method

.method public testRealForward2fInput()V
    .registers 14
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/16 v3, 0x400

    const v1, 0x3c23d70a    # 0.01f

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    return-void

    :cond_11
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x3ba3d70a    # 0.005f

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-eq v2, v3, :cond_24

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v2, v3, :cond_25

    :cond_24
    move v0, v1

    :cond_25
    mul-float/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    move v3, v4

    :goto_5d
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v3, v5, :cond_89

    move v5, v4

    :goto_62
    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v5, v9, :cond_86

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    aget-object v10, v0, v3

    aput v9, v10, v5

    aget-object v10, v1, v3

    mul-int/lit8 v11, v5, 0x2

    aput v9, v10, v11

    aget-object v9, v1, v3

    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    aget-object v9, v2, v3

    aput-boolean v4, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    :cond_86
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    :cond_89
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v3, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->realForward([[F)V

    invoke-virtual {p0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->complexForward([[F)V

    move v5, v7

    :goto_92
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v5, v3, :cond_d4

    move v3, v6

    :goto_97
    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v3, v9, :cond_d0

    aget-object v9, v1, v5

    aget v9, v9, v3

    aget-object v10, v0, v5

    aget v10, v10, v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11, v9, v10}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aget-object v9, v2, v5

    aput-boolean v7, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_97

    :cond_d0
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_92

    :cond_d4
    move v3, v6

    :goto_d5
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v3, v5, :cond_104

    aget-object v5, v1, v4

    aget v5, v5, v3

    aget-object v9, v0, v4

    aget v9, v9, v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[0]["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v5, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aget-object v5, v2, v4

    aput-boolean v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d5

    :cond_104
    move v3, v7

    :goto_105
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    div-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_1cd

    aget-object v5, v1, v3

    aget v5, v5, v4

    aget-object v9, v0, v3

    aget v9, v9, v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][0]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v5, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aget-object v5, v2, v3

    aput-boolean v7, v5, v4

    aget-object v5, v1, v3

    aget v5, v5, v7

    aget-object v9, v0, v3

    aget v9, v9, v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][1]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v5, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aget-object v5, v2, v3

    aput-boolean v7, v5, v7

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    sub-int/2addr v5, v3

    aget-object v5, v1, v5

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    aget v5, v5, v9

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    sub-int/2addr v9, v3

    aget-object v9, v0, v9

    aget v9, v9, v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    sub-int/2addr v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][1]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v5, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    sub-int/2addr v5, v3

    aget-object v5, v2, v5

    aput-boolean v7, v5, v7

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    sub-int/2addr v5, v3

    aget-object v5, v1, v5

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    add-int/lit8 v9, v9, 0x1

    aget v5, v5, v9

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    sub-int/2addr v9, v3

    aget-object v9, v0, v9

    aget v9, v9, v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    sub-int/2addr v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][0]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v5, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    sub-int/2addr v5, v3

    aget-object v5, v2, v5

    aput-boolean v7, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_105

    :cond_1cd
    aget-object v3, v1, v4

    aget v3, v3, v4

    aget-object v5, v0, v4

    aget v5, v5, v4

    const-string v9, "[0][0]"

    invoke-virtual {v8, v9, v3, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aget-object v3, v2, v4

    aput-boolean v7, v3, v4

    aget-object v3, v1, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    aget v3, v3, v5

    aget-object v5, v0, v4

    aget v5, v5, v7

    const-string v9, "[0][1]"

    invoke-virtual {v8, v9, v3, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    aget-object v3, v2, v4

    aput-boolean v7, v3, v7

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aget-object v3, v1, v3

    aget v3, v3, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    div-int/lit8 v5, v5, 0x2

    aget-object v5, v0, v5

    aget v5, v5, v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "][0]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v3, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aget-object v3, v2, v3

    aput-boolean v7, v3, v4

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aget-object v1, v1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    aget v1, v1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    div-int/lit8 v3, v3, 0x2

    aget-object v0, v0, v3

    aget v0, v0, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "][1]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3, v1, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    div-int/lit8 v0, v0, 0x2

    aget-object v0, v2, v0

    aput-boolean v7, v0, v7

    move v0, v4

    :goto_264
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v0, v1, :cond_10

    move v1, v4

    :goto_269
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v1, v3, :cond_28b

    const-string v3, "[%d][%d]"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aget-object v5, v2, v0

    aget-boolean v5, v5, v1

    invoke-static {v3, v5}, Lorg/junit/Assert;->assertTrue(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_269

    :cond_28b
    add-int/lit8 v0, v0, 0x1

    goto :goto_264
.end method

.method public testRealForwardFull1fInput()V
    .registers 13
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/16 v8, 0x1ff

    const/16 v7, 0x136

    const v6, 0x3ca3d70a    # 0.02f

    const v5, 0x3c23d70a    # 0.01f

    const/4 v2, 0x0

    const v0, 0x37a7c5ac    # 2.0E-5f

    const v1, 0x3ba3d70a    # 0.005f

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_1d

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_24

    :cond_1d
    const v3, 0x3ba3d70a    # 0.005f

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_24
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-eq v3, v7, :cond_2c

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v3, v7, :cond_118

    :cond_2c
    const v3, 0x3d4ccccd    # 0.05f

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v11, v1

    move v1, v0

    move v0, v11

    :goto_3a
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-eq v3, v8, :cond_42

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v3, v8, :cond_4d

    :cond_42
    const v3, 0x3d4ccccd    # 0.05f

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_4d
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    const/16 v4, 0x200

    if-eq v3, v4, :cond_59

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    const/16 v4, 0x200

    if-ne v3, v4, :cond_61

    :cond_59
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_61
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    const/16 v4, 0x400

    if-eq v3, v4, :cond_6d

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    const/16 v4, 0x400

    if-ne v3, v4, :cond_75

    :cond_6d
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_75
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    const/16 v4, 0x400

    if-ne v3, v4, :cond_8a

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-eq v3, v7, :cond_83

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v3, v8, :cond_8a

    :cond_83
    const v3, 0x3d23d70a    # 0.04f

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_8a
    mul-float/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v0, v1

    new-array v5, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v1, v2

    :goto_ab
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v1, v3, :cond_d5

    move v3, v2

    :goto_b0
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v3, v6, :cond_d2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

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

    goto :goto_b0

    :cond_d2
    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    :cond_d5
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->realForwardFull([F)V

    invoke-virtual {p0, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->complexForward([[F)V

    move v1, v2

    :goto_de
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v1, v3, :cond_117

    move v3, v2

    :goto_e3
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v3, v6, :cond_114

    aget-object v6, v0, v1

    aget v6, v6, v3

    mul-int/lit8 v7, v1, 0x2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v3

    aget v8, v5, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6, v8}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e3

    :cond_114
    add-int/lit8 v1, v1, 0x1

    goto :goto_de

    :cond_117
    return-void

    :cond_118
    move v11, v1

    move v1, v0

    move v0, v11

    goto/16 :goto_3a
.end method

.method public testRealForwardFull2fInput()V
    .registers 12
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/16 v8, 0x1ff

    const/16 v7, 0x136

    const v6, 0x3ca3d70a    # 0.02f

    const v5, 0x3c23d70a    # 0.01f

    const/4 v3, 0x0

    const v0, 0x37a7c5ac    # 2.0E-5f

    const v1, 0x3ba3d70a    # 0.005f

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    const/16 v4, 0x64

    if-eq v2, v4, :cond_1d

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    const/16 v4, 0x64

    if-ne v2, v4, :cond_24

    :cond_1d
    const v2, 0x3ba3d70a    # 0.005f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_24
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-eq v2, v7, :cond_2c

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v2, v7, :cond_125

    :cond_2c
    const v2, 0x3d4ccccd    # 0.05f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v10, v1

    move v1, v0

    move v0, v10

    :goto_3a
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-eq v2, v8, :cond_42

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v2, v8, :cond_4d

    :cond_42
    const v2, 0x3d4ccccd    # 0.05f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_4d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    const/16 v4, 0x200

    if-eq v2, v4, :cond_59

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    const/16 v4, 0x200

    if-ne v2, v4, :cond_61

    :cond_59
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_61
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    const/16 v4, 0x400

    if-eq v2, v4, :cond_6d

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    const/16 v4, 0x400

    if-ne v2, v4, :cond_75

    :cond_6d
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_75
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    const/16 v4, 0x400

    if-ne v2, v4, :cond_8a

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-eq v2, v7, :cond_83

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v2, v8, :cond_8a

    :cond_83
    const v2, 0x3d23d70a    # 0.04f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_8a
    mul-float/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    move v2, v3

    :goto_b4
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_dc

    move v4, v3

    :goto_b9
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v4, v6, :cond_d9

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

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

    goto :goto_b9

    :cond_d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    :cond_dc
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v2, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->realForwardFull([[F)V

    invoke-virtual {p0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->complexForward([[F)V

    move v2, v3

    :goto_e5
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_124

    move v4, v3

    :goto_ea
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_121

    aget-object v6, v1, v2

    aget v6, v6, v4

    aget-object v7, v0, v2

    aget v7, v7, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_ea

    :cond_121
    add-int/lit8 v2, v2, 0x1

    goto :goto_e5

    :cond_124
    return-void

    :cond_125
    move v10, v1

    move v1, v0

    move v0, v10

    goto/16 :goto_3a
.end method

.method public testRealInverseFullScaled1fInput()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v9, 0x1

    const v0, 0x33d6bf95    # 1.0E-7f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v3

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v0, v2

    new-array v4, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v0, v2

    new-array v5, v0, [F

    move v0, v1

    :goto_1c
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v0, v2, :cond_42

    move v2, v1

    :goto_21
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v2, v6, :cond_3f

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v7, v0

    add-int/2addr v7, v2

    aput v6, v4, v7

    mul-int/lit8 v8, v7, 0x2

    aput v6, v5, v8

    mul-int/lit8 v6, v7, 0x2

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_42
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v0, v5, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexInverse([FZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v0, v4, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->realInverseFull([FZ)V

    :goto_4c
    array-length v0, v4

    if-ge v1, v0, :cond_72

    aget v0, v5, v1

    aget v2, v4, v1

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

    invoke-virtual {v3, v6, v0, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_72
    return-void
.end method

.method public testRealInverseFullScaled2fInput()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v9, 0x1

    const v0, 0x33d6bf95    # 1.0E-7f

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    move v2, v3

    :goto_2e
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_56

    move v4, v3

    :goto_33
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v4, v6, :cond_53

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

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

    goto :goto_33

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_56
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v2, v0, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->realInverseFull([[FZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v2, v1, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexInverse([[FZ)V

    move v2, v3

    :goto_61
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_a0

    move v4, v3

    :goto_66
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_9d

    aget-object v6, v1, v2

    aget v6, v6, v4

    aget-object v7, v0, v2

    aget v7, v7, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :cond_a0
    return-void
.end method

.method public testRealInverseFullUnscaled1fInput()V
    .registers 10
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/16 v7, 0x1ff

    const/16 v6, 0x136

    const v2, 0x3d4ccccd    # 0.05f

    const/4 v3, 0x0

    const/16 v5, 0x400

    const v1, 0x37a7c5ac    # 2.0E-5f

    const v0, 0x350637bd    # 5.0E-7f

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ne v4, v6, :cond_18

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-eq v4, v5, :cond_20

    :cond_18
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ne v4, v5, :cond_26

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v4, v6, :cond_26

    :cond_20
    const v1, 0x3dcccccd    # 0.1f

    const v0, 0x3b03126f    # 0.002f

    :cond_26
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ne v4, v7, :cond_32

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v4, v5, :cond_32

    const v1, 0x3a83126f    # 0.001f

    move v0, v2

    :cond_32
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ne v4, v5, :cond_3d

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v4, v7, :cond_3d

    const/high16 v1, 0x3f000000    # 0.5f

    move v0, v2

    :cond_3d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-eq v2, v5, :cond_45

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v2, v5, :cond_53

    :cond_45
    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x3ca3d70a    # 0.02f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_53
    mul-float/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v0, v1

    new-array v4, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v0, v1

    new-array v5, v0, [F

    move v0, v3

    :goto_6b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v0, v1, :cond_91

    move v1, v3

    :goto_70
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v1, v6, :cond_8e

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v7, v0

    add-int/2addr v7, v1

    aput v6, v4, v7

    mul-int/lit8 v8, v7, 0x2

    aput v6, v5, v8

    mul-int/lit8 v6, v7, 0x2

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    :cond_91
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v0, v5, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexInverse([FZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v0, v4, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->realInverseFull([FZ)V

    :goto_9b
    array-length v0, v4

    if-ge v3, v0, :cond_c1

    aget v0, v5, v3

    aget v1, v4, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9b

    :cond_c1
    return-void
.end method

.method public testRealInverseFullUnscaled2fInput()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/16 v7, 0x1ff

    const/16 v6, 0x136

    const v2, 0x3d4ccccd    # 0.05f

    const/16 v5, 0x400

    const/4 v3, 0x0

    const v1, 0x37a7c5ac    # 2.0E-5f

    const v0, 0x350637bd    # 5.0E-7f

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ne v4, v6, :cond_18

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-eq v4, v5, :cond_20

    :cond_18
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ne v4, v5, :cond_26

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v4, v6, :cond_26

    :cond_20
    const v1, 0x3dcccccd    # 0.1f

    const v0, 0x3b03126f    # 0.002f

    :cond_26
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ne v4, v7, :cond_32

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v4, v5, :cond_32

    const v1, 0x3a83126f    # 0.001f

    move v0, v2

    :cond_32
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ne v4, v5, :cond_3d

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v4, v7, :cond_3d

    const/high16 v1, 0x3f000000    # 0.5f

    move v0, v2

    :cond_3d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-eq v2, v5, :cond_45

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ne v2, v5, :cond_53

    :cond_45
    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x3ca3d70a    # 0.02f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_53
    mul-float/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    move v2, v3

    :goto_7d
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_a5

    move v4, v3

    :goto_82
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v4, v6, :cond_a2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

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

    goto :goto_82

    :cond_a2
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    :cond_a5
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v2, v0, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->realInverseFull([[FZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v2, v1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->complexInverse([[FZ)V

    move v2, v3

    :goto_b0
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_ef

    move v4, v3

    :goto_b5
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_ec

    aget-object v6, v1, v2

    aget v6, v6, v4

    aget-object v7, v0, v2

    aget v7, v7, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    :cond_ec
    add-int/lit8 v2, v2, 0x1

    goto :goto_b0

    :cond_ef
    return-void
.end method

.method public testRealInverseScaled1fInput()V
    .registers 9
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v1, 0x0

    const v0, 0x3a03126f    # 5.0E-4f

    const v2, 0x3ba3d70a    # 0.005f

    mul-float/2addr v2, v0

    invoke-virtual {p0, v0, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    return-void

    :cond_15
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    mul-int/2addr v0, v3

    new-array v3, v0, [F

    array-length v0, v3

    new-array v4, v0, [F

    move v0, v1

    :goto_28
    array-length v5, v3

    if-ge v0, v5, :cond_38

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    aput v5, v3, v0

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_38
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v0, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->realForward([F)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->realInverse([FZ)V

    :goto_43
    array-length v0, v3

    if-ge v1, v0, :cond_14

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

    goto :goto_43
.end method

.method public testRealInverseScaled2fInput()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v3, 0x0

    const v0, 0x3a03126f    # 5.0E-4f

    const v1, 0x3ba3d70a    # 0.005f

    mul-float/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    return-void

    :cond_15
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    move v2, v3

    :goto_3e
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_5b

    move v4, v3

    :goto_43
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v4, v6, :cond_58

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    aget-object v7, v0, v2

    aput v6, v7, v4

    aget-object v7, v1, v2

    aput v6, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_5b
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-virtual {v2, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->realForward([[F)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->realInverse([[FZ)V

    move v2, v3

    :goto_67
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numRows:I

    if-ge v2, v4, :cond_14

    move v4, v3

    :goto_6c
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2DTest;->numCols:I

    if-ge v4, v6, :cond_a1

    aget-object v6, v1, v2

    aget v6, v6, v4

    aget-object v7, v0, v2

    aget v7, v7, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_67
.end method
