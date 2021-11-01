.class public Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;
.super Ljava/lang/Object;


# static fields
.field private static eps:D

.field private static sizes1D:[I

.field private static sizes2D:[I

.field private static sizes2D2:[I

.field private static sizes3D:[I

.field private static sizes3D2:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_7c

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_ae

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_d4

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_ec

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, -0x3fb6000000000000L    # -52.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    return-void

    nop

    :array_38
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

    :array_7c
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

    :array_ae
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

    :array_d4
    .array-data 4
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
    .end array-data

    :array_ec
    .array-data 4
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAccuracyComplexFFT_1D()V
    .registers 6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Checking accuracy of 1D complex FFT..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    array-length v1, v1

    if-ge v0, v1, :cond_9c

    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v2, v2, v0

    invoke-direct {v1, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [D

    sget-object v3, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v3, v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v2}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_1D(I[D)V

    sget-object v3, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v3, v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [D

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v4, v4, v0

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4, v3}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_1D(I[D)V

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    invoke-static {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([D[D)D

    move-result-wide v1

    sget-wide v3, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v3, v1, v3

    if-lez v3, :cond_75

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tsize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";\terror = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_6f
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_75
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tsize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";\terror = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6f

    :cond_9c
    return-void
.end method

.method public static checkAccuracyComplexFFT_2D()V
    .registers 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Checking accuracy of 2D complex FFT (double[] input)..."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_b
    sget-object v3, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    array-length v3, v3

    if-ge v0, v3, :cond_d1

    new-instance v3, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v4, v4, v0

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v5, v5, v0

    invoke-direct {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;-><init>(II)V

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v4, v4, v0

    mul-int/lit8 v4, v4, 0x2

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v5, v5, v0

    mul-int/2addr v4, v5

    new-array v4, v4, [D

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v5, v5, v0

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v6, v6, v0

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6, v4}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[D)V

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v5, v5, v0

    mul-int/lit8 v5, v5, 0x2

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v6, v6, v0

    mul-int/2addr v5, v6

    new-array v5, v5, [D

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v6, v6, v0

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v0

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7, v5}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[D)V

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexForward([D)V

    invoke-virtual {v3, v4, v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexInverse([DZ)V

    invoke-static {v4, v5}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([D[D)D

    move-result-wide v3

    sget-wide v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v5, v3, v5

    if-lez v5, :cond_9c

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_95
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_9c
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_95

    :cond_d1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Checking accuracy of 2D complex FFT (double[][] input)..."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_d9
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    array-length v0, v0

    if-ge v3, v0, :cond_1b8

    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v0, v0, v3

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v3

    invoke-direct {v4, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;-><init>(II)V

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v0, v0, v3

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v3

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v3

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v5, v5, v3

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v1, v5, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[[D)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v3

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v5, v5, v3

    mul-int/lit8 v5, v5, 0x2

    filled-new-array {v1, v5}, [I

    move-result-object v1

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v5, v5, v3

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v6, v6, v3

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6, v1}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[[D)V

    invoke-virtual {v4, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexForward([[D)V

    invoke-virtual {v4, v0, v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexInverse([[DZ)V

    invoke-static {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([[D[[D)D

    move-result-wide v0

    sget-wide v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_183

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\terror = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_175
    move-object v0, v2

    check-cast v0, [[D

    move-object v0, v2

    check-cast v0, [[D

    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_d9

    :cond_183
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\terror = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_175

    :cond_1b8
    return-void
.end method

.method public static checkAccuracyComplexFFT_3D()V
    .registers 10

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Checking accuracy of 3D complex FFT (double[] input)..."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_b
    sget-object v3, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    array-length v3, v3

    if-ge v0, v3, :cond_103

    new-instance v3, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v0

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v0

    invoke-direct {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;-><init>(III)V

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    mul-int/lit8 v4, v4, 0x2

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v0

    mul-int/2addr v4, v5

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v0

    mul-int/2addr v4, v5

    new-array v4, v4, [D

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v0

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v0

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v5, v6, v7, v4}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[D)V

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v0

    mul-int/lit8 v5, v5, 0x2

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v0

    mul-int/2addr v5, v6

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v0

    mul-int/2addr v5, v6

    new-array v5, v5, [D

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v0

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    sget-object v8, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v8, v8, v0

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v6, v7, v8, v5}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[D)V

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexForward([D)V

    invoke-virtual {v3, v4, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexInverse([DZ)V

    invoke-static {v4, v5}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([D[D)D

    move-result-wide v3

    sget-wide v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v5, v3, v5

    if-lez v5, :cond_c0

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\t\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_b9
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_c0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\t\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b9

    :cond_103
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Checking accuracy of 3D complex FFT (double[][][] input)..."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_10b
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    array-length v0, v0

    if-ge v3, v0, :cond_21a

    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v0, v0, v3

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v3

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v3

    invoke-direct {v4, v0, v1, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;-><init>(III)V

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v0, v0, v3

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v3

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v3

    mul-int/lit8 v5, v5, 0x2

    filled-new-array {v0, v1, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v3

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v3

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v3

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v1, v5, v6, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[[[D)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v3

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v3

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v3

    mul-int/lit8 v6, v6, 0x2

    filled-new-array {v1, v5, v6}, [I

    move-result-object v1

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[D

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v3

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v3

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v3

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v5, v6, v7, v1}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[[[D)V

    invoke-virtual {v4, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexForward([[[D)V

    invoke-virtual {v4, v0, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexInverse([[[DZ)V

    invoke-static {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([[[D[[[D)D

    move-result-wide v0

    sget-wide v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1d7

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\t\terror = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1c9
    move-object v0, v2

    check-cast v0, [[[D

    move-object v0, v2

    check-cast v0, [[[D

    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_10b

    :cond_1d7
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\t\terror = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1c9

    :cond_21a
    return-void
.end method

.method public static checkAccuracyRealFFT_1D()V
    .registers 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Checking accuracy of 1D real FFT..."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_a
    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    array-length v2, v2

    if-ge v0, v2, :cond_95

    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    sget-object v3, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v3, v3, v0

    invoke-direct {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    sget-object v3, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v3, v3, v0

    new-array v3, v3, [D

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v4, v4, v0

    invoke-static {v4, v3}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_1D(I[D)V

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v4, v4, v0

    new-array v4, v4, [D

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v5, v5, v0

    invoke-static {v5, v4}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_1D(I[D)V

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    invoke-virtual {v2, v3, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse([DZ)V

    invoke-static {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([D[D)D

    move-result-wide v2

    sget-wide v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v4, v2, v4

    if-lez v4, :cond_6e

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\terror = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_68
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_6e
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\terror = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_68

    :cond_95
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Checking accuracy of on 1D real forward full FFT..."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_9d
    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    array-length v2, v2

    if-ge v0, v2, :cond_135

    new-instance v3, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v2, v2, v0

    invoke-direct {v3, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v4, v2, [D

    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v2, v2, v0

    invoke-static {v2, v4}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_1D(I[D)V

    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v5, v2, [D

    move v2, v1

    :goto_c3
    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v6, v6, v0

    if-ge v2, v6, :cond_d2

    mul-int/lit8 v6, v2, 0x2

    aget-wide v7, v4, v2

    aput-wide v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_c3

    :cond_d2
    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

    invoke-virtual {v3, v4, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    invoke-static {v4, v5}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([D[D)D

    move-result-wide v2

    sget-wide v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v4, v2, v4

    if-lez v4, :cond_10e

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\terror = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_108
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    :cond_10e
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\terror = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_108

    :cond_135
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Checking accuracy of 1D real inverse full FFT..."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_13d
    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1d5

    new-instance v3, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v2, v2, v0

    invoke-direct {v3, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v4, v2, [D

    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v2, v2, v0

    invoke-static {v2, v4}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_1D(I[D)V

    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v2, v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v5, v2, [D

    move v2, v1

    :goto_163
    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v6, v6, v0

    if-ge v2, v6, :cond_172

    mul-int/lit8 v6, v2, 0x2

    aget-wide v7, v4, v2

    aput-wide v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_163

    :cond_172
    invoke-virtual {v3, v4, v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    invoke-static {v4, v5}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([D[D)D

    move-result-wide v2

    sget-wide v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1ae

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\terror = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1a8
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13d

    :cond_1ae
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes1D:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\terror = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1a8

    :cond_1d5
    return-void
.end method

.method public static checkAccuracyRealFFT_2D()V
    .registers 13

    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Checking accuracy of 2D real FFT (double[] input)..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v3

    :goto_b
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    array-length v1, v1

    if-ge v0, v1, :cond_c9

    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v4, v4, v0

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v5, v5, v0

    invoke-direct {v1, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;-><init>(II)V

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v4, v4, v0

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v5, v5, v0

    mul-int/2addr v4, v5

    new-array v4, v4, [D

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v5, v5, v0

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v6, v6, v0

    invoke-static {v5, v6, v4}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[D)V

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v5, v5, v0

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v6, v6, v0

    mul-int/2addr v5, v6

    new-array v5, v5, [D

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v6, v6, v0

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v7, v7, v0

    invoke-static {v6, v7, v5}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[D)V

    invoke-virtual {v1, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realForward([D)V

    invoke-virtual {v1, v4, v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realInverse([DZ)V

    invoke-static {v4, v5}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([D[D)D

    move-result-wide v4

    sget-wide v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_94

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_8d
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_94
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8d

    :cond_c9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Checking accuracy of 2D real FFT (double[][] input)..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v3

    :goto_d1
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    array-length v0, v0

    if-ge v4, v0, :cond_1a8

    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v0, v0, v4

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v1, v1, v4

    invoke-direct {v5, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;-><init>(II)V

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v0, v0, v4

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v1, v1, v4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v1, v1, v4

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v6, v6, v4

    invoke-static {v1, v6, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[[D)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v1, v1, v4

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v6, v6, v4

    filled-new-array {v1, v6}, [I

    move-result-object v1

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v6, v6, v4

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v7, v7, v4

    invoke-static {v6, v7, v1}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[[D)V

    invoke-virtual {v5, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realForward([[D)V

    invoke-virtual {v5, v0, v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realInverse([[DZ)V

    invoke-static {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([[D[[D)D

    move-result-wide v0

    sget-wide v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v5, v0, v5

    if-lez v5, :cond_173

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_165
    move-object v0, v2

    check-cast v0, [[D

    move-object v0, v2

    check-cast v0, [[D

    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_d1

    :cond_173
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D2:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_165

    :cond_1a8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Checking accuracy of 2D real forward full FFT (double[] input)..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v3

    :goto_1b0
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    array-length v1, v1

    if-ge v0, v1, :cond_28f

    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v0

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v4, v4, v0

    invoke-direct {v5, v1, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;-><init>(II)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0x2

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v4, v4, v0

    mul-int/2addr v1, v4

    new-array v6, v1, [D

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v0

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v4, v4, v0

    invoke-static {v1, v4, v6}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[D)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0x2

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v4, v4, v0

    mul-int/2addr v1, v4

    new-array v7, v1, [D

    move v1, v3

    :goto_1e8
    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v4, v4, v0

    if-ge v1, v4, :cond_20f

    move v4, v3

    :goto_1ef
    sget-object v8, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v8, v8, v0

    if-ge v4, v8, :cond_20c

    mul-int/lit8 v8, v1, 0x2

    sget-object v9, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v9, v9, v0

    mul-int/2addr v8, v9

    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    sget-object v9, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v9, v9, v0

    mul-int/2addr v9, v1

    add-int/2addr v9, v4

    aget-wide v9, v6, v9

    aput-wide v9, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1ef

    :cond_20c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e8

    :cond_20f
    invoke-virtual {v5, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realForwardFull([D)V

    invoke-virtual {v5, v6, v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexInverse([DZ)V

    invoke-static {v6, v7}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([D[D)D

    move-result-wide v4

    sget-wide v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_25a

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_253
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1b0

    :cond_25a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_253

    :cond_28f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Checking accuracy of 2D real forward full FFT (double[][] input)..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v3

    :goto_297
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    array-length v0, v0

    if-ge v4, v0, :cond_385

    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v0, v0, v4

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v4

    invoke-direct {v7, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;-><init>(II)V

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v0, v0, v4

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v4

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v5, v5, v4

    invoke-static {v1, v5, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[[D)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v5, v5, v4

    mul-int/lit8 v5, v5, 0x2

    filled-new-array {v1, v5}, [I

    move-result-object v1

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v5, v3

    :goto_2e1
    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v6, v6, v4

    if-ge v5, v6, :cond_2fe

    move v6, v3

    :goto_2e8
    sget-object v8, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v8, v8, v4

    if-ge v6, v8, :cond_2fb

    aget-object v8, v1, v5

    mul-int/lit8 v9, v6, 0x2

    aget-object v10, v0, v5

    aget-wide v10, v10, v6

    aput-wide v10, v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_2e8

    :cond_2fb
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e1

    :cond_2fe
    invoke-virtual {v7, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realForwardFull([[D)V

    invoke-virtual {v7, v0, v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexInverse([[DZ)V

    invoke-static {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([[D[[D)D

    move-result-wide v0

    sget-wide v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v5, v0, v5

    if-lez v5, :cond_350

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_342
    move-object v0, v2

    check-cast v0, [[D

    move-object v0, v2

    check-cast v0, [[D

    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_297

    :cond_350
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_342

    :cond_385
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Checking accuracy of 2D real inverse full FFT (double[] input)..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v3

    :goto_38d
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    array-length v1, v1

    if-ge v0, v1, :cond_46c

    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v0

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v4, v4, v0

    invoke-direct {v5, v1, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;-><init>(II)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0x2

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v4, v4, v0

    mul-int/2addr v1, v4

    new-array v6, v1, [D

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v0

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v4, v4, v0

    invoke-static {v1, v4, v6}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[D)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0x2

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v4, v4, v0

    mul-int/2addr v1, v4

    new-array v7, v1, [D

    move v1, v3

    :goto_3c5
    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v4, v4, v0

    if-ge v1, v4, :cond_3ec

    move v4, v3

    :goto_3cc
    sget-object v8, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v8, v8, v0

    if-ge v4, v8, :cond_3e9

    mul-int/lit8 v8, v1, 0x2

    sget-object v9, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v9, v9, v0

    mul-int/2addr v8, v9

    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    sget-object v9, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v9, v9, v0

    mul-int/2addr v9, v1

    add-int/2addr v9, v4

    aget-wide v9, v6, v9

    aput-wide v9, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3cc

    :cond_3e9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c5

    :cond_3ec
    invoke-virtual {v5, v6, v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realInverseFull([DZ)V

    invoke-virtual {v5, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexForward([D)V

    invoke-static {v6, v7}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([D[D)D

    move-result-wide v4

    sget-wide v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_437

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_430
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_38d

    :cond_437
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_430

    :cond_46c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Checking accuracy of 2D real inverse full FFT (double[][] input)..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v3

    :goto_474
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    array-length v0, v0

    if-ge v4, v0, :cond_562

    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v0, v0, v4

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v4

    invoke-direct {v7, v0, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;-><init>(II)V

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v0, v0, v4

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v4

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v5, v5, v4

    invoke-static {v1, v5, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[[D)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v1, v1, v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v5, v5, v4

    mul-int/lit8 v5, v5, 0x2

    filled-new-array {v1, v5}, [I

    move-result-object v1

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v5, v3

    :goto_4be
    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v6, v6, v4

    if-ge v5, v6, :cond_4db

    move v6, v3

    :goto_4c5
    sget-object v8, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v8, v8, v4

    if-ge v6, v8, :cond_4d8

    aget-object v8, v1, v5

    mul-int/lit8 v9, v6, 0x2

    aget-object v10, v0, v5

    aget-wide v10, v10, v6

    aput-wide v10, v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_4c5

    :cond_4d8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4be

    :cond_4db
    invoke-virtual {v7, v0, v12}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->realInverseFull([[DZ)V

    invoke-virtual {v7, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->complexForward([[D)V

    invoke-static {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([[D[[D)D

    move-result-wide v0

    sget-wide v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v5, v0, v5

    if-lez v5, :cond_52d

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_51f
    move-object v0, v2

    check-cast v0, [[D

    move-object v0, v2

    check-cast v0, [[D

    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_474

    :cond_52d
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes2D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_51f

    :cond_562
    return-void
.end method

.method public static checkAccuracyRealFFT_3D()V
    .registers 14

    const/4 v2, 0x0

    const/4 v13, 0x1

    const/4 v3, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Checking accuracy of 3D real FFT (double[] input)..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v3

    :goto_b
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    array-length v1, v1

    if-ge v0, v1, :cond_fb

    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v4, v4, v0

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v5, v5, v0

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v6, v6, v0

    invoke-direct {v1, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;-><init>(III)V

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v4, v4, v0

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v5, v5, v0

    mul-int/2addr v4, v5

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v5, v5, v0

    mul-int/2addr v4, v5

    new-array v4, v4, [D

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v5, v5, v0

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v6, v6, v0

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v0

    invoke-static {v5, v6, v7, v4}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[D)V

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v5, v5, v0

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v6, v6, v0

    mul-int/2addr v5, v6

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v6, v6, v0

    mul-int/2addr v5, v6

    new-array v5, v5, [D

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v6, v6, v0

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v0

    sget-object v8, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v8, v8, v0

    invoke-static {v6, v7, v8, v5}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[D)V

    invoke-virtual {v1, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realForward([D)V

    invoke-virtual {v1, v5, v13}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realInverse([DZ)V

    invoke-static {v4, v5}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([D[D)D

    move-result-wide v4

    sget-wide v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_b8

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\t\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_b1
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_b8
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\t\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b1

    :cond_fb
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Checking accuracy of 3D real FFT (double[][][] input)..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v3

    :goto_103
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    array-length v0, v0

    if-ge v4, v0, :cond_20a

    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v0, v0, v4

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v1, v1, v4

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v6, v6, v4

    invoke-direct {v5, v0, v1, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;-><init>(III)V

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v0, v0, v4

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v1, v1, v4

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v6, v6, v4

    filled-new-array {v0, v1, v6}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v1, v1, v4

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v6, v6, v4

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v4

    invoke-static {v1, v6, v7, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[[[D)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v1, v1, v4

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v6, v6, v4

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v4

    filled-new-array {v1, v6, v7}, [I

    move-result-object v1

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[D

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v6, v6, v4

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v4

    sget-object v8, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v8, v8, v4

    invoke-static {v6, v7, v8, v1}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[[[D)V

    invoke-virtual {v5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realForward([[[D)V

    invoke-virtual {v5, v1, v13}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realInverse([[[DZ)V

    invoke-static {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([[[D[[[D)D

    move-result-wide v0

    sget-wide v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v5, v0, v5

    if-lez v5, :cond_1c7

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\t\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1b9
    move-object v0, v2

    check-cast v0, [[[D

    move-object v0, v2

    check-cast v0, [[[D

    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_103

    :cond_1c7
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D2:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\t\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1b9

    :cond_20a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Checking accuracy of 3D real forward full FFT (double[] input)..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v3

    :goto_212
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    array-length v1, v1

    if-ge v0, v1, :cond_341

    new-instance v6, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v0

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v0

    invoke-direct {v6, v1, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;-><init>(III)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0x2

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    mul-int/2addr v1, v4

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    mul-int/2addr v1, v4

    new-array v7, v1, [D

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v0

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v0

    invoke-static {v1, v4, v5, v7}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[D)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0x2

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    mul-int/2addr v1, v4

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    mul-int/2addr v1, v4

    new-array v8, v1, [D

    move v1, v3

    :goto_25c
    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    if-ge v1, v4, :cond_2a5

    move v4, v3

    :goto_263
    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v0

    if-ge v4, v5, :cond_2a2

    move v5, v3

    :goto_26a
    sget-object v9, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v9, v9, v0

    if-ge v5, v9, :cond_29f

    mul-int/lit8 v9, v1, 0x2

    sget-object v10, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v10, v10, v0

    mul-int/2addr v9, v10

    sget-object v10, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v10, v10, v0

    mul-int/2addr v9, v10

    mul-int/lit8 v10, v4, 0x2

    sget-object v11, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v11, v11, v0

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    mul-int/lit8 v10, v5, 0x2

    add-int/2addr v9, v10

    sget-object v10, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v10, v10, v0

    mul-int/2addr v10, v1

    sget-object v11, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v11, v11, v0

    mul-int/2addr v10, v11

    sget-object v11, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v11, v11, v0

    mul-int/2addr v11, v4

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    aget-wide v10, v7, v10

    aput-wide v10, v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_26a

    :cond_29f
    add-int/lit8 v4, v4, 0x1

    goto :goto_263

    :cond_2a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_25c

    :cond_2a5
    invoke-virtual {v6, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realForwardFull([D)V

    invoke-virtual {v6, v7, v13}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexInverse([DZ)V

    invoke-static {v7, v8}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([D[D)D

    move-result-wide v4

    sget-wide v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_2fe

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\t\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2f7
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_212

    :cond_2fe
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\t\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2f7

    :cond_341
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Checking accuracy of 3D real forward full FFT (double[][][] input)..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v3

    :goto_349
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    array-length v0, v0

    if-ge v4, v0, :cond_471

    new-instance v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v0, v0, v4

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v4

    invoke-direct {v8, v0, v1, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;-><init>(III)V

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v0, v0, v4

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v4

    mul-int/lit8 v5, v5, 0x2

    filled-new-array {v0, v1, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v4

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v4

    invoke-static {v1, v5, v6, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[[[D)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v4

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v4

    mul-int/lit8 v6, v6, 0x2

    filled-new-array {v1, v5, v6}, [I

    move-result-object v1

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[D

    move v5, v3

    :goto_3a3
    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v4

    if-ge v5, v6, :cond_3ce

    move v6, v3

    :goto_3aa
    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v4

    if-ge v6, v7, :cond_3cb

    move v7, v3

    :goto_3b1
    sget-object v9, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v9, v9, v4

    if-ge v7, v9, :cond_3c8

    aget-object v9, v1, v5

    aget-object v9, v9, v6

    mul-int/lit8 v10, v7, 0x2

    aget-object v11, v0, v5

    aget-object v11, v11, v6

    aget-wide v11, v11, v7

    aput-wide v11, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_3b1

    :cond_3c8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3aa

    :cond_3cb
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a3

    :cond_3ce
    invoke-virtual {v8, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realForwardFull([[[D)V

    invoke-virtual {v8, v0, v13}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexInverse([[[DZ)V

    invoke-static {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([[[D[[[D)D

    move-result-wide v0

    sget-wide v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v5, v0, v5

    if-lez v5, :cond_42e

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\t\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_420
    move-object v0, v2

    check-cast v0, [[[D

    move-object v0, v2

    check-cast v0, [[[D

    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_349

    :cond_42e
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\t\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_420

    :cond_471
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Checking accuracy of 3D real inverse full FFT (double[] input)..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v3

    :goto_479
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5a8

    new-instance v6, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v0

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v0

    invoke-direct {v6, v1, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;-><init>(III)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0x2

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    mul-int/2addr v1, v4

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    mul-int/2addr v1, v4

    new-array v7, v1, [D

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v0

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v0

    invoke-static {v1, v4, v5, v7}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[D)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v0

    mul-int/lit8 v1, v1, 0x2

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    mul-int/2addr v1, v4

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    mul-int/2addr v1, v4

    new-array v8, v1, [D

    move v1, v3

    :goto_4c3
    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v4, v4, v0

    if-ge v1, v4, :cond_50c

    move v4, v3

    :goto_4ca
    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v0

    if-ge v4, v5, :cond_509

    move v5, v3

    :goto_4d1
    sget-object v9, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v9, v9, v0

    if-ge v5, v9, :cond_506

    mul-int/lit8 v9, v1, 0x2

    sget-object v10, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v10, v10, v0

    mul-int/2addr v9, v10

    sget-object v10, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v10, v10, v0

    mul-int/2addr v9, v10

    mul-int/lit8 v10, v4, 0x2

    sget-object v11, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v11, v11, v0

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    mul-int/lit8 v10, v5, 0x2

    add-int/2addr v9, v10

    sget-object v10, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v10, v10, v0

    mul-int/2addr v10, v1

    sget-object v11, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v11, v11, v0

    mul-int/2addr v10, v11

    sget-object v11, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v11, v11, v0

    mul-int/2addr v11, v4

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    aget-wide v10, v7, v10

    aput-wide v10, v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_4d1

    :cond_506
    add-int/lit8 v4, v4, 0x1

    goto :goto_4ca

    :cond_509
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c3

    :cond_50c
    invoke-virtual {v6, v7, v13}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realInverseFull([DZ)V

    invoke-virtual {v6, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexForward([D)V

    invoke-static {v7, v8}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([D[D)D

    move-result-wide v4

    sget-wide v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_565

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\t\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_55e
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_479

    :cond_565
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\t\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_55e

    :cond_5a8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Checking accuracy of 3D real inverse full FFT (double[][][] input)..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v3

    :goto_5b0
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    array-length v0, v0

    if-ge v4, v0, :cond_6d8

    new-instance v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v0, v0, v4

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v4

    invoke-direct {v8, v0, v1, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;-><init>(III)V

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v0, v0, v4

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v4

    mul-int/lit8 v5, v5, 0x2

    filled-new-array {v0, v1, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v4

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v4

    invoke-static {v1, v5, v6, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[[[D)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v1, v1, v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v5, v5, v4

    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v4

    mul-int/lit8 v6, v6, 0x2

    filled-new-array {v1, v5, v6}, [I

    move-result-object v1

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[D

    move v5, v3

    :goto_60a
    sget-object v6, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v6, v6, v4

    if-ge v5, v6, :cond_635

    move v6, v3

    :goto_611
    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v4

    if-ge v6, v7, :cond_632

    move v7, v3

    :goto_618
    sget-object v9, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v9, v9, v4

    if-ge v7, v9, :cond_62f

    aget-object v9, v1, v5

    aget-object v9, v9, v6

    mul-int/lit8 v10, v7, 0x2

    aget-object v11, v0, v5

    aget-object v11, v11, v6

    aget-wide v11, v11, v7

    aput-wide v11, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_618

    :cond_62f
    add-int/lit8 v6, v6, 0x1

    goto :goto_611

    :cond_632
    add-int/lit8 v5, v5, 0x1

    goto :goto_60a

    :cond_635
    invoke-virtual {v8, v0, v13}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->realInverseFull([[[DZ)V

    invoke-virtual {v8, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->complexForward([[[D)V

    invoke-static {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->computeRMSE([[[D[[[D)D

    move-result-wide v0

    sget-wide v5, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->eps:D

    cmpl-double v5, v0, v5

    if-lez v5, :cond_695

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\t\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_687
    move-object v0, v2

    check-cast v0, [[[D

    move-object v0, v2

    check-cast v0, [[[D

    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_5b0

    :cond_695
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->sizes3D:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";\t\terror = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_687

    :cond_6d8
    return-void
.end method

.method private static computeRMSE([D[D)D
    .registers 9

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arrays are not the same size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_f
    array-length v3, p0

    if-ge v0, v3, :cond_1c

    aget-wide v3, p0, v0

    aget-wide v5, p1, v0

    sub-double/2addr v3, v5

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1c
    array-length v0, p0

    int-to-double v3, v0

    div-double v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static computeRMSE([[D[[D)D
    .registers 11

    const/4 v1, 0x0

    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_d

    aget-object v0, p0, v1

    array-length v0, v0

    aget-object v2, p1, v1

    array-length v2, v2

    if-eq v0, v2, :cond_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arrays are not the same size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const-wide/16 v2, 0x0

    move v0, v1

    :goto_18
    array-length v4, p0

    if-ge v0, v4, :cond_34

    move v4, v1

    :goto_1c
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_31

    aget-object v5, p0, v0

    aget-wide v5, v5, v4

    aget-object v7, p1, v0

    aget-wide v7, v7, v4

    sub-double/2addr v5, v7

    mul-double/2addr v5, v5

    add-double/2addr v5, v2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v5

    goto :goto_1c

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_34
    array-length v0, p0

    aget-object v1, p0, v1

    array-length v1, v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static computeRMSE([[[D[[[D)D
    .registers 13

    const/4 v1, 0x0

    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_19

    aget-object v0, p0, v1

    array-length v0, v0

    aget-object v2, p1, v1

    array-length v2, v2

    if-ne v0, v2, :cond_19

    aget-object v0, p0, v1

    aget-object v0, v0, v1

    array-length v0, v0

    aget-object v2, p1, v1

    aget-object v2, v2, v1

    array-length v2, v2

    if-eq v0, v2, :cond_21

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arrays are not the same size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const-wide/16 v2, 0x0

    move v0, v1

    :goto_24
    array-length v4, p0

    if-ge v0, v4, :cond_50

    move v4, v1

    :goto_28
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_4d

    move-wide v5, v2

    move v2, v1

    :goto_2f
    aget-object v3, p0, v1

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_48

    aget-object v3, p0, v0

    aget-object v3, v3, v4

    aget-wide v7, v3, v2

    aget-object v3, p1, v0

    aget-object v3, v3, v4

    aget-wide v9, v3, v2

    sub-double/2addr v7, v9

    mul-double/2addr v7, v7

    add-double/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_48
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v5

    goto :goto_28

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_50
    array-length v0, p0

    aget-object v4, p0, v1

    array-length v4, v4

    mul-int/2addr v0, v4

    aget-object v4, p0, v1

    aget-object v1, v4, v1

    array-length v1, v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->checkAccuracyComplexFFT_1D()V

    invoke-static {}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->checkAccuracyRealFFT_1D()V

    invoke-static {}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->checkAccuracyComplexFFT_2D()V

    invoke-static {}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->checkAccuracyRealFFT_2D()V

    invoke-static {}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->checkAccuracyComplexFFT_3D()V

    invoke-static {}, Ledu/emory/mathcs/jtransforms/fft/AccuracyCheckDoubleFFT;->checkAccuracyRealFFT_3D()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
