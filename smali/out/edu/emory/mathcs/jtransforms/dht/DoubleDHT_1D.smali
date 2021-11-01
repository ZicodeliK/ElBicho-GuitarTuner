.class public Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;
.super Ljava/lang/Object;


# instance fields
.field private fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

.field private n:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    return-void
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

    return v0
.end method

.method private scale(D[DI)V
    .registers 16

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double v5, v0, p1

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_41

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-lt v0, v1, :cond_41

    const/4 v8, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

    div-int v9, v0, v8

    new-array v10, v8, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v7, v0

    :goto_1c
    if-ge v7, v8, :cond_3d

    mul-int v0, v7, v9

    add-int v2, p4, v0

    const/4 v0, 0x1

    if-ne v7, v0, :cond_3a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

    add-int v3, p4, v0

    :goto_29
    new-instance v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$2;

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$2;-><init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;II[DD)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1c

    :cond_3a
    add-int v3, v2, v9

    goto :goto_29

    :cond_3d
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_40
    return-void

    :cond_41
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

    add-int/2addr v0, p4

    :goto_44
    if-ge p4, v0, :cond_40

    aget-wide v1, p3, p4

    mul-double/2addr v1, v5

    aput-wide v1, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_44
.end method


# virtual methods
.method public forward([D)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    return-void
.end method

.method public forward([DI)V
    .registers 16

    const/4 v0, 0x0

    const/4 v8, 0x1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

    if-ne v1, v8, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

    new-array v6, v1, [D

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

    invoke-static {p1, p2, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

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
    new-instance v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D$1;-><init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;II[DI[D)V

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
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_77

    add-int v0, p2, v7

    aget-wide v1, v6, v8

    aput-wide v1, p1, v0

    goto :goto_6

    :cond_59
    move v0, v8

    :goto_5a
    if-ge v0, v7, :cond_4c

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    aget-wide v4, v6, v1

    aget-wide v9, v6, v2

    sub-double/2addr v4, v9

    aput-wide v4, p1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

    add-int/2addr v3, p2

    sub-int/2addr v3, v0

    aget-wide v4, v6, v1

    aget-wide v1, v6, v2

    add-double/2addr v1, v4

    aput-wide v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :cond_77
    add-int v0, p2, v7

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v6, v1

    aget-wide v3, v6, v8

    sub-double/2addr v1, v3

    aput-wide v1, p1, v0

    add-int v0, p2, v7

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v6, v1

    aget-wide v3, v6, v8

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    goto/16 :goto_6
.end method

.method public inverse([DIZ)V
    .registers 6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    if-eqz p3, :cond_5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->n:I

    int-to-double v0, v0

    invoke-direct {p0, v0, v1, p1, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->scale(D[DI)V

    goto :goto_5
.end method

.method public inverse([DZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    return-void
.end method
