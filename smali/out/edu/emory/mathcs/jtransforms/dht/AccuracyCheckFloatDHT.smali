.class public Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;
.super Ljava/lang/Object;


# static fields
.field private static eps:D

.field private static sizes1D:[I

.field private static sizes2D:[I

.field private static sizes3D:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    sput-object v0, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes1D:[I

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_68

    sput-object v0, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_9a

    sput-object v0, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, -0x3fc9000000000000L    # -23.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->eps:D

    return-void

    :array_26
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
        0x10000
        0x20000
    .end array-data

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

    :array_9a
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

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAccuracyDHT_1D()V
    .registers 6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Checking accuracy of 1D DHT..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8
    sget-object v1, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes1D:[I

    array-length v1, v1

    if-ge v0, v1, :cond_94

    new-instance v1, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;

    sget-object v2, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes1D:[I

    aget v2, v2, v0

    invoke-direct {v1, v2}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;-><init>(I)V

    sget-object v2, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes1D:[I

    aget v2, v2, v0

    new-array v2, v2, [F

    sget-object v3, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes1D:[I

    aget v3, v3, v0

    invoke-static {v3, v2}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_1D(I[F)V

    sget-object v3, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes1D:[I

    aget v3, v3, v0

    new-array v3, v3, [F

    sget-object v4, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes1D:[I

    aget v4, v4, v0

    invoke-static {v4, v3}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_1D(I[F)V

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->forward([F)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->inverse([FZ)V

    invoke-static {v2, v3}, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->computeRMSE([F[F)D

    move-result-wide v1

    sget-wide v3, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->eps:D

    cmpl-double v3, v1, v3

    if-lez v3, :cond_6d

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tsize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes1D:[I

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

    :goto_67
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_6d
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tsize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes1D:[I

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

    goto :goto_67

    :cond_94
    return-void
.end method

.method public static checkAccuracyDHT_2D()V
    .registers 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Checking accuracy of 2D DHT (float[] input)..."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_b
    sget-object v3, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    array-length v3, v3

    if-ge v0, v3, :cond_c9

    new-instance v3, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_2D;

    sget-object v4, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v4, v4, v0

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v5, v5, v0

    invoke-direct {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_2D;-><init>(II)V

    sget-object v4, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v4, v4, v0

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v5, v5, v0

    mul-int/2addr v4, v5

    new-array v4, v4, [F

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v5, v5, v0

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v6, v6, v0

    invoke-static {v5, v6, v4}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[F)V

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v5, v5, v0

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v6, v6, v0

    mul-int/2addr v5, v6

    new-array v5, v5, [F

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v6, v6, v0

    sget-object v7, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v7, v7, v0

    invoke-static {v6, v7, v5}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[F)V

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_2D;->forward([F)V

    invoke-virtual {v3, v4, v8}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_2D;->inverse([FZ)V

    invoke-static {v4, v5}, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->computeRMSE([F[F)D

    move-result-wide v3

    sget-wide v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->eps:D

    cmpl-double v5, v3, v5

    if-lez v5, :cond_94

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

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

    :goto_8d
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_94
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

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

    goto :goto_8d

    :cond_c9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Checking accuracy of 2D DHT (float[][] input)..."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_d1
    sget-object v0, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    array-length v0, v0

    if-ge v3, v0, :cond_1a8

    new-instance v4, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_2D;

    sget-object v0, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v0, v0, v3

    sget-object v1, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v1, v1, v3

    invoke-direct {v4, v0, v1}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_2D;-><init>(II)V

    sget-object v0, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v0, v0, v3

    sget-object v1, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v1, v1, v3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sget-object v1, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v1, v1, v3

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v5, v5, v3

    invoke-static {v1, v5, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[[F)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v1, v1, v3

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v5, v5, v3

    filled-new-array {v1, v5}, [I

    move-result-object v1

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v5, v5, v3

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v6, v6, v3

    invoke-static {v5, v6, v1}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_2D(II[[F)V

    invoke-virtual {v4, v0}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_2D;->forward([[F)V

    invoke-virtual {v4, v0, v8}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_2D;->inverse([[FZ)V

    invoke-static {v0, v1}, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->computeRMSE([[F[[F)D

    move-result-wide v0

    sget-wide v4, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->eps:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_173

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

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

    :goto_165
    move-object v0, v2

    check-cast v0, [[F

    move-object v0, v2

    check-cast v0, [[F

    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_d1

    :cond_173
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes2D:[I

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

    goto :goto_165

    :cond_1a8
    return-void
.end method

.method public static checkAccuracyDHT_3D()V
    .registers 10

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Checking accuracy of 3D DHT (float[] input)..."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_b
    sget-object v3, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    array-length v3, v3

    if-ge v0, v3, :cond_fb

    new-instance v3, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    sget-object v4, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v4, v4, v0

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v5, v5, v0

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v6, v6, v0

    invoke-direct {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;-><init>(III)V

    sget-object v4, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v4, v4, v0

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v5, v5, v0

    mul-int/2addr v4, v5

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v5, v5, v0

    mul-int/2addr v4, v5

    new-array v4, v4, [F

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v5, v5, v0

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v6, v6, v0

    sget-object v7, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v7, v7, v0

    invoke-static {v5, v6, v7, v4}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[F)V

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v5, v5, v0

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v6, v6, v0

    mul-int/2addr v5, v6

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v6, v6, v0

    mul-int/2addr v5, v6

    new-array v5, v5, [F

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v6, v6, v0

    sget-object v7, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v7, v7, v0

    sget-object v8, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v8, v8, v0

    invoke-static {v6, v7, v8, v5}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[F)V

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->forward([F)V

    invoke-virtual {v3, v4, v9}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->inverse([FZ)V

    invoke-static {v4, v5}, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->computeRMSE([F[F)D

    move-result-wide v3

    sget-wide v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->eps:D

    cmpl-double v5, v3, v5

    if-lez v5, :cond_b8

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

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

    :goto_b1
    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_b8
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tsize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

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

    goto :goto_b1

    :cond_fb
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Checking accuracy of 3D DHT (float[][][] input)..."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_103
    sget-object v0, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    array-length v0, v0

    if-ge v3, v0, :cond_20a

    new-instance v4, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;

    sget-object v0, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v0, v0, v3

    sget-object v1, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v1, v1, v3

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v5, v5, v3

    invoke-direct {v4, v0, v1, v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;-><init>(III)V

    sget-object v0, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v0, v0, v3

    sget-object v1, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v1, v1, v3

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v5, v5, v3

    filled-new-array {v0, v1, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    sget-object v1, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v1, v1, v3

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v5, v5, v3

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v6, v6, v3

    invoke-static {v1, v5, v6, v0}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[[[F)V

    sget-object v1, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v1, v1, v3

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v5, v5, v3

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v6, v6, v3

    filled-new-array {v1, v5, v6}, [I

    move-result-object v1

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[F

    sget-object v5, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v5, v5, v3

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v6, v6, v3

    sget-object v7, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v7, v7, v3

    invoke-static {v5, v6, v7, v1}, Ledu/emory/mathcs/utils/IOUtils;->fillMatrix_3D(III[[[F)V

    invoke-virtual {v4, v0}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->forward([[[F)V

    invoke-virtual {v4, v0, v9}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_3D;->inverse([[[FZ)V

    invoke-static {v0, v1}, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->computeRMSE([[[F[[[F)D

    move-result-wide v0

    sget-wide v4, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->eps:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1c7

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

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

    :goto_1b9
    move-object v0, v2

    check-cast v0, [[[F

    move-object v0, v2

    check-cast v0, [[[F

    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_103

    :cond_1c7
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tsize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->sizes3D:[I

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

    goto :goto_1b9

    :cond_20a
    return-void
.end method

.method private static computeRMSE([F[F)D
    .registers 7

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arrays are not the same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_f
    array-length v3, p0

    if-ge v0, v3, :cond_1d

    aget v3, p0, v0

    aget v4, p1, v0

    sub-float/2addr v3, v4

    float-to-double v3, v3

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    array-length v0, p0

    int-to-float v0, v0

    float-to-double v3, v0

    div-double v0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static computeRMSE([[F[[F)D
    .registers 9

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

    const-string v1, "Arrays are not the same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const-wide/16 v2, 0x0

    move v0, v1

    :goto_18
    array-length v4, p0

    if-ge v0, v4, :cond_35

    move v4, v1

    :goto_1c
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_32

    aget-object v5, p0, v0

    aget v5, v5, v4

    aget-object v6, p1, v0

    aget v6, v6, v4

    sub-float/2addr v5, v6

    float-to-double v5, v5

    mul-double/2addr v5, v5

    add-double/2addr v5, v2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v5

    goto :goto_1c

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_35
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

.method private static computeRMSE([[[F[[[F)D
    .registers 11

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

    const-string v1, "Arrays are not the same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const-wide/16 v2, 0x0

    move v0, v1

    :goto_24
    array-length v4, p0

    if-ge v0, v4, :cond_51

    move v4, v1

    :goto_28
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_4e

    move-wide v5, v2

    move v2, v1

    :goto_2f
    aget-object v3, p0, v1

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_49

    aget-object v3, p0, v0

    aget-object v3, v3, v4

    aget v3, v3, v2

    aget-object v7, p1, v0

    aget-object v7, v7, v4

    aget v7, v7, v2

    sub-float/2addr v3, v7

    float-to-double v7, v3

    mul-double/2addr v7, v7

    add-double/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_49
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v5

    goto :goto_28

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_51
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

    invoke-static {}, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->checkAccuracyDHT_1D()V

    invoke-static {}, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->checkAccuracyDHT_2D()V

    invoke-static {}, Ledu/emory/mathcs/jtransforms/dht/AccuracyCheckFloatDHT;->checkAccuracyDHT_3D()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
