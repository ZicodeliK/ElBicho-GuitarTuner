.class public Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/junit/runner/RunWith;
    value = Lorg/junit/runners/Parameterized;
.end annotation


# static fields
.field public static final DEFAULT_MESSAGE:Ljava/lang/String; = "%d-threaded FFT of size %d: "

.field private static final FFTW_INPUT_PATTERN:Ljava/lang/String; = "fftw%d.in"

.field private static final FFTW_OUTPUT_PATTERN:Ljava/lang/String; = "fftw%d.out"

.field public static final SEED:I = 0x132dd0a


# instance fields
.field private final fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

.field private final n:I

.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>(IIJ)V
    .registers 7

    const/16 v1, 0x200

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p3, p4}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->random:Ljava/util/Random;

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->setThreadsBeginN_1D_FFT_2Threads(I)V

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->setThreadsBeginN_1D_FFT_4Threads(I)V

    invoke-static {p2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->setNumberOfThreads(I)V

    return-void
.end method

.method public static getParameters()Ljava/util/Collection;
    .registers 10
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

    const v9, 0x132dd0a

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x20

    new-array v2, v0, [I

    fill-array-data v2, :array_68

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_14
    array-length v4, v2

    if-ge v0, v4, :cond_66

    new-array v4, v8, [Ljava/lang/Object;

    aget v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v8, [Ljava/lang/Object;

    aget v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v8, [Ljava/lang/Object;

    aget v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_66
    return-object v3

    nop

    :array_68
    .array-data 4
        0x1
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
        0x200
        0x400
        0x420
        0x800
        0x2000
        0x27ae
        0x4000
        0x8000
        0xfffa
        0x10000
        0x20000
    .end array-data
.end method


# virtual methods
.method public createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;
    .registers 13

    const/4 v6, 0x0

    const-string v0, "%d-threaded FFT of size %d: "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

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

.method public readData(Ljava/lang/String;[D)V
    .registers 7

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    const/4 v0, 0x0

    :goto_2e
    array-length v2, p2

    if-ge v0, v2, :cond_44

    mul-int/lit8 v2, v0, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v2

    aput-wide v2, p2, v0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_39} :catch_3c

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    :cond_44
    return-void
.end method

.method public testComplexForward()V
    .registers 10
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    mul-double/2addr v4, v2

    invoke-virtual {p0, v2, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    mul-int/lit8 v2, v2, 0x2

    new-array v7, v2, [D

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    mul-int/lit8 v2, v2, 0x2

    new-array v8, v2, [D

    const-string v2, "fftw%d.in"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->readData(Ljava/lang/String;[D)V

    const-string v2, "fftw%d.out"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->readData(Ljava/lang/String;[D)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v2, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v6, v1

    :goto_49
    array-length v1, v7

    if-ge v6, v1, :cond_70

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, v8, v6

    aget-wide v4, v7, v6

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_49

    :cond_70
    return-void
.end method

.method public testComplexInverseScaled()V
    .registers 10
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x0

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    mul-double/2addr v3, v0

    invoke-virtual {p0, v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v7, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v8, v1, [D

    move v1, v2

    :goto_1d
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_38

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    aput-wide v3, v7, v1

    aget-wide v3, v7, v1

    aput-wide v3, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_38
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    const/4 v3, 0x1

    invoke-virtual {v1, v7, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v6, v2

    :goto_44
    array-length v1, v7

    if-ge v6, v1, :cond_6b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, v8, v6

    aget-wide v4, v7, v6

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_44

    :cond_6b
    return-void
.end method

.method public testComplexInverseUnscaled()V
    .registers 12
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    mul-double/2addr v3, v0

    invoke-virtual {p0, v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v7, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v8, v1, [D

    move v1, v2

    :goto_1f
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_38

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v3, v9

    aput-wide v3, v7, v1

    aget-wide v3, v7, v1

    aput-wide v3, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_38
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v7, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    int-to-double v3, v1

    div-double/2addr v9, v3

    move v6, v2

    :goto_47
    array-length v1, v7

    if-ge v6, v1, :cond_6f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, v8, v6

    aget-wide v4, v7, v6

    mul-double/2addr v4, v9

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_47

    :cond_6f
    return-void
.end method

.method public testRealForward()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v9, 0x1

    const/4 v4, 0x0

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    mul-double/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    new-array v7, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v8, v1, [D

    move v1, v4

    :goto_1c
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    if-ge v1, v2, :cond_3f

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double/2addr v2, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v5

    aput-wide v2, v7, v1

    mul-int/lit8 v2, v1, 0x2

    aget-wide v5, v7, v1

    aput-wide v5, v8, v2

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v8, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_3f
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    const-string v1, "[0]"

    aget-wide v2, v8, v4

    aget-wide v4, v7, v4

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    if-le v1, v9, :cond_61

    const-string v1, "[1]"

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    aget-wide v2, v8, v2

    aget-wide v4, v7, v9

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    :cond_61
    const/4 v1, 0x2

    move v6, v1

    :goto_63
    array-length v1, v7

    if-ge v6, v1, :cond_8a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, v8, v6

    aget-wide v4, v7, v6

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_63

    :cond_8a
    return-void
.end method

.method public testRealForwardFull()V
    .registers 10
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x0

    const-wide v0, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v3, 0x3ed4f8b588e368f1L    # 5.0E-6

    mul-double/2addr v3, v0

    invoke-virtual {p0, v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v7, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v8, v1, [D

    move v1, v2

    :goto_1d
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    if-ge v1, v3, :cond_40

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    aput-wide v3, v7, v1

    mul-int/lit8 v3, v1, 0x2

    aget-wide v4, v7, v1

    aput-wide v4, v8, v3

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v8, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_40
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

    move v6, v2

    :goto_4b
    array-length v1, v7

    if-ge v6, v1, :cond_72

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, v8, v6

    aget-wide v4, v7, v6

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_4b

    :cond_72
    return-void
.end method

.method public testRealInverseFullScaled()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v9, 0x1

    const/4 v2, 0x0

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    const-wide v3, 0x3e7ad7f29abcaf48L    # 1.0E-7

    mul-double/2addr v3, v0

    invoke-virtual {p0, v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v7, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v8, v1, [D

    move v1, v2

    :goto_1e
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    if-ge v1, v3, :cond_41

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    aput-wide v3, v7, v1

    mul-int/lit8 v3, v1, 0x2

    aget-wide v4, v7, v1

    aput-wide v4, v8, v3

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v8, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_41
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v7, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v8, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v6, v2

    :goto_4c
    array-length v1, v7

    if-ge v6, v1, :cond_73

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, v8, v6

    aget-wide v4, v7, v6

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_4c

    :cond_73
    return-void
.end method

.method public testRealInverseFullUnscaled()V
    .registers 10
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x0

    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide v3, 0x3ea0c6f7a0b5ed8dL    # 5.0E-7

    mul-double/2addr v3, v0

    invoke-virtual {p0, v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v7, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    mul-int/lit8 v1, v1, 0x2

    new-array v8, v1, [D

    move v1, v2

    :goto_1d
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    if-ge v1, v3, :cond_40

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    aput-wide v3, v7, v1

    mul-int/lit8 v3, v1, 0x2

    aget-wide v4, v7, v1

    aput-wide v4, v8, v3

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v8, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_40
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v7, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v8, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v6, v2

    :goto_4b
    array-length v1, v7

    if-ge v6, v1, :cond_72

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, v8, v6

    aget-wide v4, v7, v6

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_4b

    :cond_72
    return-void
.end method

.method public testRealInverseScaled()V
    .registers 10
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x0

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    mul-double/2addr v3, v0

    invoke-virtual {p0, v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    new-array v7, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    new-array v8, v1, [D

    move v1, v2

    :goto_19
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    if-ge v1, v3, :cond_32

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    aput-wide v3, v7, v1

    aget-wide v3, v7, v1

    aput-wide v3, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_32
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    const/4 v3, 0x1

    invoke-virtual {v1, v7, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse([DZ)V

    move v6, v2

    :goto_3e
    array-length v1, v7

    if-ge v6, v1, :cond_65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, v8, v6

    aget-wide v4, v7, v6

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_3e

    :cond_65
    return-void
.end method

.method public testRealInverseUnscaled()V
    .registers 10
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v2, 0x0

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    mul-double/2addr v3, v0

    invoke-virtual {p0, v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->createEqualityChecker(DD)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    new-array v7, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    new-array v8, v1, [D

    move v1, v2

    :goto_19
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->n:I

    if-ge v1, v3, :cond_32

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    aput-wide v3, v7, v1

    aget-wide v3, v7, v1

    aput-wide v3, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_32
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    const/4 v3, 0x1

    invoke-virtual {v1, v7, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse([DZ)V

    move v6, v2

    :goto_3e
    array-length v1, v7

    if-ge v6, v1, :cond_65

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-wide v2, v8, v6

    aget-wide v4, v7, v6

    invoke-virtual/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;DD)V

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_3e

    :cond_65
    return-void
.end method
