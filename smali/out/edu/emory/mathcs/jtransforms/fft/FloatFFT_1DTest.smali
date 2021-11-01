.class public Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lorg/junit/runner/RunWith;
    value = Lorg/junit/runners/Parameterized;
.end annotation


# static fields
.field public static final DEFAULT_MESSAGE:Ljava/lang/String; = "%d-threaded FFT of size %d: "

.field private static final FFTW_INPUT_PATTERN:Ljava/lang/String; = "fftw%d.in"

.field private static final FFTW_OUTPUT_PATTERN:Ljava/lang/String; = "fftw%d.out"

.field public static final SEED:I = 0x132dd21


# instance fields
.field private final fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

.field private final n:I

.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>(IIJ)V
    .registers 7

    const/16 v1, 0x200

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p3, p4}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->random:Ljava/util/Random;

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

    const v9, 0x132dd21

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
.method public createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;
    .registers 11

    const-wide/16 v2, 0x0

    const-string v0, "%d-threaded FFT of size %d: "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

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
    .registers 9
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v7, 0x1

    const/4 v1, 0x0

    const v0, 0x3a83126f    # 0.001f

    const v2, 0x3d4ccccd    # 0.05f

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    const v4, 0xfffa

    if-eq v3, v4, :cond_15

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    const/high16 v4, 0x20000

    if-ne v3, v4, :cond_18

    :cond_15
    const v0, 0x3ba3d70a    # 0.005f

    :cond_18
    mul-float/2addr v2, v0

    invoke-virtual {p0, v0, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [D

    const-string v0, "fftw%d.in"

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->readData(Ljava/lang/String;[D)V

    move v0, v1

    :goto_3d
    array-length v5, v3

    if-ge v0, v5, :cond_48

    aget-wide v5, v4, v0

    double-to-float v5, v5

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_48
    const-string v0, "fftw%d.out"

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->readData(Ljava/lang/String;[D)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    :goto_60
    array-length v0, v3

    if-ge v1, v0, :cond_87

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-wide v5, v4, v1

    double-to-float v5, v5

    aget v6, v3, v1

    invoke-virtual {v2, v0, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    :cond_87
    return-void
.end method

.method public testComplexInverseScaled()V
    .registers 10
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v1, 0x0

    const v0, 0x3a03126f    # 5.0E-4f

    const v2, 0x3ba3d70a    # 0.005f

    mul-float/2addr v2, v0

    invoke-virtual {p0, v0, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [F

    move v0, v1

    :goto_19
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_35

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v3, v0

    aget v5, v3, v0

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_35
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    :goto_40
    array-length v0, v3

    if-ge v1, v0, :cond_66

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget v5, v4, v1

    aget v6, v3, v1

    invoke-virtual {v2, v0, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_66
    return-void
.end method

.method public testComplexInverseUnscaled()V
    .registers 10
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v1, 0x0

    const v0, 0x3a03126f    # 5.0E-4f

    const v2, 0x3ba3d70a    # 0.005f

    mul-float/2addr v2, v0

    invoke-virtual {p0, v0, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [F

    move v0, v1

    :goto_19
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_35

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v3, v0

    aget v5, v3, v0

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_35
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v3, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    const/high16 v0, 0x3f800000    # 1.0f

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    :goto_45
    array-length v5, v3

    if-ge v1, v5, :cond_6c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget v6, v4, v1

    aget v7, v3, v1

    mul-float/2addr v7, v0

    invoke-virtual {v2, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    :cond_6c
    return-void
.end method

.method public testRealForward()V
    .registers 12
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v9, 0x1

    const v2, 0x3ba3d70a    # 0.005f

    const/4 v3, 0x0

    const v1, 0x3c23d70a    # 0.01f

    const v0, 0x3a03126f    # 5.0E-4f

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_14

    const v0, 0x3b03126f    # 0.002f

    :cond_14
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    const v5, 0x8000

    if-ne v4, v5, :cond_ab

    move v0, v1

    :goto_1c
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    const/high16 v5, 0x10000

    if-ne v4, v5, :cond_24

    move v0, v1

    move v2, v1

    :cond_24
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    const/high16 v5, 0x20000

    if-ne v4, v5, :cond_a9

    move v2, v1

    :goto_2b
    mul-float v0, v2, v1

    invoke-virtual {p0, v2, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    new-array v2, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [F

    move v0, v3

    :goto_3c
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    if-ge v0, v5, :cond_5f

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v2, v0

    mul-int/lit8 v5, v0, 0x2

    aget v6, v2, v0

    aput v6, v4, v5

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_5f
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    const-string v0, "[0]"

    aget v5, v4, v3

    aget v3, v2, v3

    invoke-virtual {v1, v0, v5, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    if-le v0, v9, :cond_81

    const-string v0, "[1]"

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    aget v3, v4, v3

    aget v5, v2, v9

    invoke-virtual {v1, v0, v3, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    :cond_81
    const/4 v0, 0x2

    :goto_82
    array-length v3, v2

    if-ge v0, v3, :cond_a8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget v5, v4, v0

    aget v6, v2, v0

    invoke-virtual {v1, v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    :cond_a8
    return-void

    :cond_a9
    move v1, v0

    goto :goto_2b

    :cond_ab
    move v10, v2

    move v2, v0

    move v0, v10

    goto/16 :goto_1c
.end method

.method public testRealForwardFull()V
    .registers 10
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v3, 0x0

    const v2, 0x3c23d70a    # 0.01f

    const v1, 0x3ba3d70a    # 0.005f

    const v0, 0x3a03126f    # 5.0E-4f

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    const/16 v5, 0x2000

    if-ne v4, v5, :cond_11

    move v0, v1

    :cond_11
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_18

    move v0, v1

    :cond_18
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    const v5, 0x8000

    if-ne v4, v5, :cond_21

    move v0, v1

    move v1, v2

    :cond_21
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    const/high16 v5, 0x10000

    if-ne v4, v5, :cond_29

    move v1, v2

    move v0, v2

    :cond_29
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    const/high16 v5, 0x20000

    if-ne v4, v5, :cond_96

    :goto_2f
    mul-float v0, v2, v1

    invoke-virtual {p0, v2, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [F

    move v0, v3

    :goto_42
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    if-ge v0, v5, :cond_65

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v2, v0

    mul-int/lit8 v5, v0, 0x2

    aget v6, v2, v0

    aput v6, v4, v5

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_65
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    :goto_6f
    array-length v0, v2

    if-ge v3, v0, :cond_95

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget v5, v4, v3

    aget v6, v2, v3

    invoke-virtual {v1, v0, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    :cond_95
    return-void

    :cond_96
    move v2, v0

    goto :goto_2f
.end method

.method public testRealInverseFullScaled()V
    .registers 11
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v9, 0x1

    const/4 v1, 0x0

    const v0, 0x3a03126f    # 5.0E-4f

    const v2, 0x3a83126f    # 0.001f

    mul-float/2addr v2, v0

    invoke-virtual {p0, v0, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [F

    move v0, v1

    :goto_1a
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    if-ge v0, v5, :cond_3d

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v3, v0

    mul-int/lit8 v5, v0, 0x2

    aget v6, v3, v0

    aput v6, v4, v5

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_3d
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v3, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v4, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    :goto_47
    array-length v0, v3

    if-ge v1, v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget v5, v4, v1

    aget v6, v3, v1

    invoke-virtual {v2, v0, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_6d
    return-void
.end method

.method public testRealInverseFullUnscaled()V
    .registers 10
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const v1, 0x3ba3d70a    # 0.005f

    const/4 v4, 0x0

    const v3, 0x3c23d70a    # 0.01f

    const v0, 0x3a83126f    # 0.001f

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    const v5, 0x8000

    if-ne v2, v5, :cond_8b

    move v0, v1

    move v2, v3

    :goto_13
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    const/high16 v6, 0x10000

    if-ne v5, v6, :cond_1b

    move v0, v3

    move v2, v3

    :cond_1b
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    const/high16 v6, 0x20000

    if-ne v5, v6, :cond_88

    :goto_21
    mul-float v0, v3, v1

    invoke-virtual {p0, v3, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    move v0, v4

    :goto_34
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    if-ge v0, v5, :cond_57

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v2, v0

    mul-int/lit8 v5, v0, 0x2

    aget v6, v2, v0

    aput v6, v3, v5

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    aput v6, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_57
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v2, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    :goto_61
    array-length v0, v2

    if-ge v4, v0, :cond_87

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget v5, v3, v4

    aget v6, v2, v4

    invoke-virtual {v1, v0, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    :cond_87
    return-void

    :cond_88
    move v1, v0

    move v3, v2

    goto :goto_21

    :cond_8b
    move v2, v1

    goto :goto_13
.end method

.method public testRealInverseScaled()V
    .registers 10
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v1, 0x0

    const v0, 0x3ba3d70a    # 0.005f

    const v2, 0x3a83126f    # 0.001f

    mul-float/2addr v2, v0

    invoke-virtual {p0, v0, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    new-array v3, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    new-array v4, v0, [F

    move v0, v1

    :goto_15
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    if-ge v0, v5, :cond_2f

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v3, v0

    aget v5, v3, v0

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2f
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse([FZ)V

    :goto_3a
    array-length v0, v3

    if-ge v1, v0, :cond_60

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget v5, v4, v1

    aget v6, v3, v1

    invoke-virtual {v2, v0, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_60
    return-void
.end method

.method public testRealInverseUnscaled()V
    .registers 10
    .annotation runtime Lorg/junit/Test;
    .end annotation

    const/4 v1, 0x0

    const v0, 0x3ba3d70a    # 0.005f

    const v2, 0x3a83126f    # 0.001f

    mul-float/2addr v2, v0

    invoke-virtual {p0, v0, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->createEqualityChecker(FF)Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;

    move-result-object v2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    new-array v3, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    new-array v4, v0, [F

    move v0, v1

    :goto_15
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->n:I

    if-ge v0, v5, :cond_2f

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v3, v0

    aget v5, v3, v0

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2f
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1DTest;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse([FZ)V

    :goto_3a
    array-length v0, v3

    if-ge v1, v0, :cond_60

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget v5, v4, v1

    aget v6, v3, v1

    invoke-virtual {v2, v0, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->assertEquals(Ljava/lang/String;FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_60
    return-void
.end method
