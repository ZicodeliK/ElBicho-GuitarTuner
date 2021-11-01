.class public Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;
.super Ljava/lang/Object;


# static fields
.field private static doScaling:Z

.field private static doWarmup:Z

.field private static niter:I

.field private static nsize:I

.field private static nthread:I

.field private static sizes1D:[I

.field private static sizes2D:[I

.field private static sizes3D:[I

.field private static threadsBegin2D:I

.field private static threadsBegin3D:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const v2, 0x10064

    const/16 v1, 0x10

    const/16 v0, 0x8

    sput v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nthread:I

    const/16 v0, 0xc8

    sput v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    sput v1, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    sput v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->threadsBegin2D:I

    sput v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->threadsBegin3D:I

    const/4 v0, 0x1

    sput-boolean v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doWarmup:Z

    new-array v0, v1, [I

    fill-array-data v0, :array_30

    sput-object v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes1D:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_54

    sput-object v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_78

    sput-object v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    const/4 v0, 0x0

    sput-boolean v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    return-void

    nop

    :array_30
    .array-data 4
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x2880
        0x6978
        0x12750
        0x285ff
        0x58980
        0x17d784
        0x310000    # 4.49994E-39f
        0x5f5e10
    .end array-data

    :array_54
    .array-data 4
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x104
        0x208
        0x41a
        0x5b2
        0x7a8
        0xb64
        0x1014
        0x16c8
    .end array-data

    :array_78
    .array-data 4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x5
        0x11
        0x1e
        0x5f
        0xb4
        0x10e
        0x144
        0x1a4
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static benchmarkForward_1D()V
    .registers 14

    const-wide v12, 0x412e848000000000L    # 1000000.0

    const/4 v1, 0x0

    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    new-array v6, v0, [D

    move v0, v1

    :goto_b
    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    if-ge v0, v2, :cond_c1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forward DST 1D of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes1D:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes1D:[I

    aget v2, v2, v0

    invoke-direct {v4, v2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;-><init>(I)V

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes1D:[I

    aget v2, v2, v0

    new-array v5, v2, [F

    sget-boolean v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doWarmup:Z

    if-eqz v2, :cond_56

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes1D:[I

    aget v2, v2, v0

    invoke-static {v2, v5}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_1D(I[F)V

    sget-boolean v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v4, v5, v2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FZ)V

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes1D:[I

    aget v2, v2, v0

    invoke-static {v2, v5}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_1D(I[F)V

    sget-boolean v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v4, v5, v2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FZ)V

    :cond_56
    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_59
    sget v7, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    if-ge v2, v7, :cond_78

    sget-object v7, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes1D:[I

    aget v7, v7, v0

    invoke-static {v7, v5}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_1D(I[F)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sget-boolean v9, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v4, v5, v9}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FZ)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v7, v9, v7

    long-to-float v7, v7

    add-float/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_78
    float-to-double v4, v3

    div-double/2addr v4, v12

    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    int-to-float v2, v2

    float-to-double v7, v2

    div-double/2addr v4, v7

    aput-wide v4, v6, v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Average execution time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    float-to-double v8, v3

    div-double/2addr v8, v12

    sget v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    int-to-float v3, v3

    float-to-double v10, v3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_c1
    const-string v0, "benchmarkFloatForwardDST_1D.txt"

    sget v1, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nthread:I

    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    sget-boolean v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doWarmup:Z

    sget-boolean v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    sget-object v5, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes1D:[I

    invoke-static/range {v0 .. v6}, Ledu/emory/mathcs/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[I[D)V

    return-void
.end method

.method public static benchmarkForward_2D_input_1D()V
    .registers 14

    const-wide v12, 0x412e848000000000L    # 1000000.0

    const/4 v1, 0x0

    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    new-array v6, v0, [D

    move v0, v1

    :goto_b
    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    if-ge v0, v2, :cond_e4

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forward DST 2D (input 1D) of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v2, v2, v0

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v3, v3, v0

    invoke-direct {v4, v2, v3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;-><init>(II)V

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v2, v2, v0

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    new-array v5, v2, [F

    sget-boolean v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doWarmup:Z

    if-eqz v2, :cond_75

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v2, v2, v0

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v3, v3, v0

    invoke-static {v2, v3, v5}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[F)V

    sget-boolean v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v4, v5, v2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->forward([FZ)V

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v2, v2, v0

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v3, v3, v0

    invoke-static {v2, v3, v5}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[F)V

    sget-boolean v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v4, v5, v2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->forward([FZ)V

    :cond_75
    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_78
    sget v7, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    if-ge v2, v7, :cond_9b

    sget-object v7, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v7, v7, v0

    sget-object v8, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v8, v8, v0

    invoke-static {v7, v8, v5}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[F)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sget-boolean v9, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v4, v5, v9}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->forward([FZ)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v7, v9, v7

    long-to-float v7, v7

    add-float/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    :cond_9b
    float-to-double v4, v3

    div-double/2addr v4, v12

    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    int-to-float v2, v2

    float-to-double v7, v2

    div-double/2addr v4, v7

    aput-wide v4, v6, v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Average execution time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    float-to-double v8, v3

    div-double/2addr v8, v12

    sget v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    int-to-float v3, v3

    float-to-double v10, v3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_e4
    const-string v0, "benchmarkFloatForwardDST_2D_input_1D.txt"

    sget v1, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nthread:I

    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    sget-boolean v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doWarmup:Z

    sget-boolean v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    sget-object v5, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    invoke-static/range {v0 .. v6}, Ledu/emory/mathcs/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[I[D)V

    return-void
.end method

.method public static benchmarkForward_2D_input_2D()V
    .registers 14

    const-wide v12, 0x412e848000000000L    # 1000000.0

    const/4 v2, 0x0

    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    new-array v6, v0, [D

    move v1, v2

    :goto_b
    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    if-ge v1, v0, :cond_f1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forward DST 2D (input 2D) of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v5, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

    sget-object v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v0, v0, v1

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v3, v3, v1

    invoke-direct {v5, v0, v3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;-><init>(II)V

    sget-object v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v0, v0, v1

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v3, v3, v1

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sget-boolean v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doWarmup:Z

    if-eqz v3, :cond_7e

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v3, v3, v1

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v4, v4, v1

    invoke-static {v3, v4, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[[F)V

    sget-boolean v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v5, v0, v3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->forward([[FZ)V

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v3, v3, v1

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v4, v4, v1

    invoke-static {v3, v4, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[[F)V

    sget-boolean v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v5, v0, v3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->forward([[FZ)V

    :cond_7e
    const/4 v3, 0x0

    move v4, v3

    move v3, v2

    :goto_81
    sget v7, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    if-ge v3, v7, :cond_a4

    sget-object v7, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v7, v7, v1

    sget-object v8, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    aget v8, v8, v1

    invoke-static {v7, v8, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[[F)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sget-boolean v9, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v5, v0, v9}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->forward([[FZ)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v7, v9, v7

    long-to-float v7, v7

    add-float/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    :cond_a4
    float-to-double v7, v4

    div-double/2addr v7, v12

    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    int-to-float v0, v0

    float-to-double v9, v0

    div-double/2addr v7, v9

    aput-wide v7, v6, v1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Average execution time: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    float-to-double v8, v4

    div-double/2addr v8, v12

    sget v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    int-to-float v4, v4

    float-to-double v10, v4

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast v0, [[F

    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v3, 0x1388

    invoke-static {v3, v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->sleep(J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_b

    :cond_f1
    const-string v0, "benchmarkFloatForwardDST_2D_input_2D.txt"

    sget v1, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nthread:I

    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    sget-boolean v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doWarmup:Z

    sget-boolean v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    sget-object v5, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    invoke-static/range {v0 .. v6}, Ledu/emory/mathcs/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[I[D)V

    return-void
.end method

.method public static benchmarkForward_3D_input_1D()V
    .registers 14

    const-wide v12, 0x412e848000000000L    # 1000000.0

    const/4 v1, 0x0

    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    new-array v6, v0, [D

    move v0, v1

    :goto_b
    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    if-ge v0, v2, :cond_107

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forward DST 3D (input 1D) of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v2, v2, v0

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v3, v3, v0

    sget-object v5, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v5, v5, v0

    invoke-direct {v4, v2, v3, v5}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;-><init>(III)V

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v2, v2, v0

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    new-array v5, v2, [F

    sget-boolean v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doWarmup:Z

    if-eqz v2, :cond_94

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v2, v2, v0

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v3, v3, v0

    sget-object v7, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v7, v7, v0

    invoke-static {v2, v3, v7, v5}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[F)V

    sget-boolean v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v4, v5, v2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->forward([FZ)V

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v2, v2, v0

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v3, v3, v0

    sget-object v7, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v7, v7, v0

    invoke-static {v2, v3, v7, v5}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[F)V

    sget-boolean v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v4, v5, v2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->forward([FZ)V

    :cond_94
    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_97
    sget v7, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    if-ge v2, v7, :cond_be

    sget-object v7, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v7, v7, v0

    sget-object v8, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v8, v8, v0

    sget-object v9, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v9, v9, v0

    invoke-static {v7, v8, v9, v5}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[F)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sget-boolean v9, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v4, v5, v9}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->forward([FZ)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v7, v9, v7

    long-to-float v7, v7

    add-float/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    :cond_be
    float-to-double v4, v3

    div-double/2addr v4, v12

    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    int-to-float v2, v2

    float-to-double v7, v2

    div-double/2addr v4, v7

    aput-wide v4, v6, v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Average execution time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    float-to-double v8, v3

    div-double/2addr v8, v12

    sget v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    int-to-float v3, v3

    float-to-double v10, v3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_107
    const-string v0, "benchmarkFloatForwardDST_3D_input_1D.txt"

    sget v1, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nthread:I

    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    sget-boolean v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doWarmup:Z

    sget-boolean v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    sget-object v5, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    invoke-static/range {v0 .. v6}, Ledu/emory/mathcs/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[I[D)V

    return-void
.end method

.method public static benchmarkForward_3D_input_3D()V
    .registers 14

    const-wide v12, 0x412e848000000000L    # 1000000.0

    const/4 v2, 0x0

    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    new-array v6, v0, [D

    move v1, v2

    :goto_b
    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    if-ge v1, v0, :cond_111

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forward DST 3D (input 3D) of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v5, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;

    sget-object v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v0, v0, v1

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v3, v3, v1

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v4, v4, v1

    invoke-direct {v5, v0, v3, v4}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;-><init>(III)V

    sget-object v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v0, v0, v1

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v3, v3, v1

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v4, v4, v1

    filled-new-array {v0, v3, v4}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    sget-boolean v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doWarmup:Z

    if-eqz v3, :cond_9c

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v3, v3, v1

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v4, v4, v1

    sget-object v7, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v7, v7, v1

    invoke-static {v3, v4, v7, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[[[F)V

    sget-boolean v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v5, v0, v3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->forward([[[FZ)V

    sget-object v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v3, v3, v1

    sget-object v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v4, v4, v1

    sget-object v7, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v7, v7, v1

    invoke-static {v3, v4, v7, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[[[F)V

    sget-boolean v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v5, v0, v3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->forward([[[FZ)V

    :cond_9c
    const/4 v3, 0x0

    move v4, v3

    move v3, v2

    :goto_9f
    sget v7, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    if-ge v3, v7, :cond_c6

    sget-object v7, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v7, v7, v1

    sget-object v8, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v8, v8, v1

    sget-object v9, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    aget v9, v9, v1

    invoke-static {v7, v8, v9, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[[[F)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sget-boolean v9, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v5, v0, v9}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->forward([[[FZ)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v7, v9, v7

    long-to-float v7, v7

    add-float/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    :cond_c6
    float-to-double v7, v4

    div-double/2addr v7, v12

    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    int-to-double v9, v0

    div-double/2addr v7, v9

    aput-wide v7, v6, v1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Average execution time: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    float-to-double v8, v4

    div-double/2addr v8, v12

    sget v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    int-to-double v10, v4

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    check-cast v0, [[[F

    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v3, 0x1388

    invoke-static {v3, v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->sleep(J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_b

    :cond_111
    const-string v0, "benchmarkFloatForwardDST_3D_input_3D.txt"

    sget v1, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nthread:I

    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    sget-boolean v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doWarmup:Z

    sget-boolean v4, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    sget-object v5, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    invoke-static/range {v0 .. v6}, Ledu/emory/mathcs/utils/IOUtils;->writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[I[D)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->parseArguments([Ljava/lang/String;)V

    invoke-static {}, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->benchmarkForward_1D()V

    invoke-static {}, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->benchmarkForward_2D_input_1D()V

    invoke-static {}, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->benchmarkForward_2D_input_2D()V

    invoke-static {}, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->benchmarkForward_3D_input_1D()V

    invoke-static {}, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->benchmarkForward_3D_input_3D()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static parseArguments([Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    array-length v0, p0

    if-lez v0, :cond_98

    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nthread:I

    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->threadsBegin2D:I

    const/4 v0, 0x2

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->threadsBegin3D:I

    const/4 v0, 0x3

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    const/4 v0, 0x4

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doWarmup:Z

    const/4 v0, 0x5

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    const/4 v0, 0x6

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    new-array v0, v0, [I

    sput-object v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes1D:[I

    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    new-array v0, v0, [I

    sput-object v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    new-array v0, v0, [I

    sput-object v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    move v0, v1

    :goto_55
    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    if-ge v0, v2, :cond_68

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes1D:[I

    add-int/lit8 v3, v0, 0x7

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_68
    move v0, v1

    :goto_69
    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    if-ge v0, v2, :cond_7f

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    sget v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    add-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v0

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    :cond_7f
    :goto_7f
    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    if-ge v1, v0, :cond_9f

    sget-object v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    add-int/lit8 v2, v2, 0x7

    sget v3, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    :cond_98
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Default settings are used."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9f
    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nthread:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->setNumberOfThreads(I)V

    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->threadsBegin2D:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->setThreadsBeginN_2D(I)V

    sget v0, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->threadsBegin3D:I

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->setThreadsBeginN_3D(I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nthred = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nthread:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "threadsBegin2D = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->threadsBegin2D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "threadsBegin3D = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->threadsBegin3D:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "niter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->niter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doWarmup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doWarmup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doScaling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->doScaling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nsize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->nsize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sizes1D[] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes1D:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sizes2D[] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes2D:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sizes3D[] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ledu/emory/mathcs/jtransforms/dst/BenchmarkFloatDST;->sizes3D:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
