.class public Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;
.super Ljava/lang/Object;


# instance fields
.field private fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

.field private n:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    return-void
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    return v0
.end method

.method private scale(F[FI)V
    .registers 15

    const/4 v10, 0x1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    float-to-double v2, p1

    div-double/2addr v0, v2

    double-to-float v5, v0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v10, :cond_41

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-lt v0, v1, :cond_41

    const/4 v7, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    div-int v8, v0, v7

    new-array v9, v7, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v6, v0

    :goto_1d
    if-ge v6, v7, :cond_3d

    mul-int v0, v6, v8

    add-int v2, p3, v0

    if-ne v6, v10, :cond_3a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    add-int v3, p3, v0

    :goto_29
    new-instance v0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D$2;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D$2;-><init>(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;II[FF)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1d

    :cond_3a
    add-int v3, v2, v8

    goto :goto_29

    :cond_3d
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_40
    return-void

    :cond_41
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    add-int/2addr v0, p3

    :goto_44
    if-ge p3, v0, :cond_40

    aget v1, p2, p3

    mul-float/2addr v1, v5

    aput v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_44
.end method


# virtual methods
.method public forward([F)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    return-void
.end method

.method public forward([FI)V
    .registers 16

    const/4 v0, 0x0

    const/4 v8, 0x1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    if-ne v1, v8, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v1, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    new-array v6, v1, [F

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    invoke-static {p1, p2, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    div-int/lit8 v7, v1, 0x2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    if-le v1, v8, :cond_59

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v7, v1, :cond_59

    const/4 v10, 0x2

    div-int v11, v7, v10

    new-array v12, v10, [Ljava/util/concurrent/Future;

    move v9, v0

    :goto_2b
    if-ge v9, v10, :cond_49

    mul-int v0, v9, v11

    add-int/lit8 v2, v0, 0x1

    if-ne v9, v8, :cond_46

    move v3, v7

    :goto_34
    new-instance v0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D$1;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D$1;-><init>(Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;II[FI[F)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v12, v9

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2b

    :cond_46
    add-int v3, v2, v11

    goto :goto_34

    :cond_49
    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_4c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_77

    add-int v0, p2, v7

    aget v1, v6, v8

    aput v1, p1, v0

    goto :goto_6

    :cond_59
    move v0, v8

    :goto_5a
    if-ge v0, v7, :cond_4c

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    aget v4, v6, v1

    aget v5, v6, v2

    sub-float/2addr v4, v5

    aput v4, p1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    add-int/2addr v3, p2

    sub-int/2addr v3, v0

    aget v1, v6, v1

    aget v2, v6, v2

    add-float/2addr v1, v2

    aput v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :cond_77
    add-int v0, p2, v7

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v1, v6, v1

    aget v2, v6, v8

    sub-float/2addr v1, v2

    aput v1, p1, v0

    add-int v0, p2, v7

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v1, v6, v1

    aget v2, v6, v8

    add-float/2addr v1, v2

    aput v1, p1, v0

    goto/16 :goto_6
.end method

.method public inverse([FIZ)V
    .registers 6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    if-eqz p3, :cond_5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->n:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1, p2}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->scale(F[FI)V

    goto :goto_5
.end method

.method public inverse([FZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    return-void
.end method
