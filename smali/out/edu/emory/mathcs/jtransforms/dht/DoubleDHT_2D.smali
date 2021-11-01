.class public Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;
.super Ljava/lang/Object;


# instance fields
.field private columns:I

.field private dhtColumns:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

.field private dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

.field private isPowerOfTwo:Z

.field private nt:I

.field private oldNthreads:I

.field private rows:I

.field private t:[D

.field private useThreads:Z


# direct methods
.method public constructor <init>(II)V
    .registers 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->isPowerOfTwo:Z

    iput-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->useThreads:Z

    if-le p1, v2, :cond_d

    if-gt p2, v2, :cond_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rows and columns must be greater than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iput p1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int v0, p1, p2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_2D()I

    move-result v1

    if-lt v0, v1, :cond_23

    iput-boolean v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->useThreads:Z

    :cond_23
    invoke-static {p1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {p2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_50

    iput-boolean v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->isPowerOfTwo:Z

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->oldNthreads:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->oldNthreads:I

    mul-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, p1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->oldNthreads:I

    mul-int/lit8 v0, v0, 0x2

    if-ne p2, v0, :cond_5e

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    :cond_4a
    :goto_4a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    :cond_50
    new-instance v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    invoke-direct {v0, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtColumns:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    if-ne p2, p1, :cond_6b

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtColumns:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    :goto_5d
    return-void

    :cond_5e
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->oldNthreads:I

    mul-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_4a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    goto :goto_4a

    :cond_6b
    new-instance v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    goto :goto_5d
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    return v0
.end method

.method static synthetic access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtColumns:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    return-object v0
.end method

.method static synthetic access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    return v0
.end method

.method static synthetic access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    return-object v0
.end method

.method static synthetic access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    return-object v0
.end method

.method private ddxt2d0_subth(I[DZ)V
    .registers 12

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-le v0, v1, :cond_21

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    :goto_a
    new-array v7, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v4, :cond_26

    new-instance v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$11;

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$11;-><init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;III[DZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_21
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v4

    goto :goto_a

    :cond_26
    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private ddxt2d0_subth(I[[DZ)V
    .registers 12

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-le v0, v1, :cond_21

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    :goto_a
    new-array v7, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v4, :cond_26

    new-instance v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$12;

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$12;-><init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;III[[DZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_21
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v4

    goto :goto_a

    :cond_26
    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private ddxt2d_sub(I[DZ)V
    .registers 13

    const/4 v2, 0x2

    const/4 v7, -0x1

    const/4 v1, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-le v0, v2, :cond_13b

    if-ne p1, v7, :cond_a2

    move v0, v1

    :goto_a
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-ge v0, v2, :cond_199

    move v2, v1

    :goto_f
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v2, v3, :cond_43

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-wide v6, p2, v3

    aput-wide v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    add-int/lit8 v6, v3, 0x1

    aget-wide v6, p2, v6

    aput-wide v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v6, v4

    add-int/lit8 v7, v3, 0x2

    aget-wide v7, p2, v7

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x3

    aget-wide v6, p2, v3

    aput-wide v6, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_43
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    invoke-virtual {v2, v3, v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move v2, v1

    :goto_6a
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v2, v3, :cond_9e

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-wide v5, v5, v2

    aput-wide v5, p2, v3

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-wide v6, v6, v4

    aput-wide v6, p2, v5

    add-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v7, v4

    aget-wide v6, v6, v7

    aput-wide v6, p2, v5

    add-int/lit8 v3, v3, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    aget-wide v4, v5, v4

    aput-wide v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_9e
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_a

    :cond_a2
    move v0, v1

    :goto_a3
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-ge v0, v2, :cond_199

    move v2, v1

    :goto_a8
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v2, v3, :cond_dc

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-wide v6, p2, v3

    aput-wide v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    add-int/lit8 v6, v3, 0x1

    aget-wide v6, p2, v6

    aput-wide v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v6, v4

    add-int/lit8 v7, v3, 0x2

    aget-wide v7, p2, v7

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x3

    aget-wide v6, p2, v3

    aput-wide v6, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    :cond_dc
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v2, v1

    :goto_103
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v2, v3, :cond_137

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-wide v5, v5, v2

    aput-wide v5, p2, v3

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-wide v6, v6, v4

    aput-wide v6, p2, v5

    add-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v7, v4

    aget-wide v6, v6, v7

    aput-wide v6, p2, v5

    add-int/lit8 v3, v3, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    aget-wide v4, v5, v4

    aput-wide v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_103

    :cond_137
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_a3

    :cond_13b
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-ne v0, v2, :cond_199

    move v0, v1

    :goto_140
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v0, v2, :cond_15b

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v2, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-wide v4, p2, v2

    aput-wide v4, v3, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v4, v0

    add-int/lit8 v2, v2, 0x1

    aget-wide v5, p2, v2

    aput-wide v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_140

    :cond_15b
    if-ne p1, v7, :cond_188

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    invoke-virtual {v0, v2, v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    invoke-virtual {v0, v2, v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    :goto_16d
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v1, v0, :cond_199

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v0, v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-wide v2, v2, v1

    aput-wide v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v3, v1

    aget-wide v2, v2, v3

    aput-wide v2, p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_16d

    :cond_188
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    invoke-virtual {v0, v2, v1, p3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    invoke-virtual {v0, v2, v3, p3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    goto :goto_16d

    :cond_199
    return-void
.end method

.method private ddxt2d_sub(I[[DZ)V
    .registers 12

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-le v0, v2, :cond_14c

    if-ne p1, v6, :cond_ab

    move v0, v1

    :goto_b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-ge v0, v2, :cond_1a9

    move v2, v1

    :goto_10
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v2, v3, :cond_48

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v3, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-object v5, p2, v2

    aget-wide v5, v5, v0

    aput-wide v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-object v5, p2, v2

    add-int/lit8 v6, v0, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v5, v3

    aget-object v6, p2, v2

    add-int/lit8 v7, v0, 0x2

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    aget-object v5, p2, v2

    add-int/lit8 v6, v0, 0x3

    aget-wide v5, v5, v6

    aput-wide v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_48
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    invoke-virtual {v2, v3, v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move v2, v1

    :goto_6f
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v2, v3, :cond_a7

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v3, v2

    aget-object v4, p2, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-wide v5, v5, v2

    aput-wide v5, v4, v0

    aget-object v4, p2, v2

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    aget-object v4, p2, v2

    add-int/lit8 v5, v0, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v7, v3

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    aget-object v4, p2, v2

    add-int/lit8 v5, v0, 0x3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    :cond_a7
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_b

    :cond_ab
    move v0, v1

    :goto_ac
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-ge v0, v2, :cond_1a9

    move v2, v1

    :goto_b1
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v2, v3, :cond_e9

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v3, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-object v5, p2, v2

    aget-wide v5, v5, v0

    aput-wide v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-object v5, p2, v2

    add-int/lit8 v6, v0, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v5, v3

    aget-object v6, p2, v2

    add-int/lit8 v7, v0, 0x2

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    aget-object v5, p2, v2

    add-int/lit8 v6, v0, 0x3

    aget-wide v5, v5, v6

    aput-wide v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    :cond_e9
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v2, v1

    :goto_110
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v2, v3, :cond_148

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v3, v2

    aget-object v4, p2, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-wide v5, v5, v2

    aput-wide v5, v4, v0

    aget-object v4, p2, v2

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    aget-object v4, p2, v2

    add-int/lit8 v5, v0, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v7, v3

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    aget-object v4, p2, v2

    add-int/lit8 v5, v0, 0x3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_110

    :cond_148
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_ac

    :cond_14c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-ne v0, v2, :cond_1a9

    move v0, v1

    :goto_151
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v0, v2, :cond_16b

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-object v3, p2, v0

    aget-wide v3, v3, v1

    aput-wide v3, v2, v0

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v3, v0

    aget-object v4, p2, v0

    aget-wide v4, v4, v7

    aput-wide v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_151

    :cond_16b
    if-ne p1, v6, :cond_198

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    invoke-virtual {v0, v2, v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    invoke-virtual {v0, v2, v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    :goto_17d
    move v0, v1

    :goto_17e
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v0, v2, :cond_1a9

    aget-object v2, p2, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    aget-wide v3, v3, v0

    aput-wide v3, v2, v1

    aget-object v2, p2, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    add-int/2addr v4, v0

    aget-wide v3, v3, v4

    aput-wide v3, v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_17e

    :cond_198
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    invoke-virtual {v0, v2, v1, p3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    invoke-virtual {v0, v2, v3, p3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    goto :goto_17d

    :cond_1a9
    return-void
.end method

.method private ddxt2d_subth(I[DZ)V
    .registers 14

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/lit8 v3, v2, 0x2

    if-ne v1, v3, :cond_2a

    shr-int/lit8 v0, v0, 0x1

    move v8, v0

    :goto_11
    new-array v9, v2, [Ljava/util/concurrent/Future;

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v2, :cond_36

    mul-int v5, v8, v4

    new-instance v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$9;

    move-object v1, p0

    move v3, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$9;-><init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;IIII[DZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_3a

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    shr-int/lit8 v0, v0, 0x2

    move v8, v0

    goto :goto_11

    :cond_36
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void

    :cond_3a
    move v8, v0

    goto :goto_11
.end method

.method private ddxt2d_subth(I[[DZ)V
    .registers 14

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/lit8 v3, v2, 0x2

    if-ne v1, v3, :cond_2a

    shr-int/lit8 v0, v0, 0x1

    move v8, v0

    :goto_11
    new-array v9, v2, [Ljava/util/concurrent/Future;

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v2, :cond_36

    mul-int v5, v8, v4

    new-instance v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;

    move-object v1, p0

    move v3, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;-><init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;IIII[[DZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_3a

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    shr-int/lit8 v0, v0, 0x2

    move v8, v0

    goto :goto_11

    :cond_36
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void

    :cond_3a
    move v8, v0

    goto :goto_11
.end method

.method private yTransform([D)V
    .registers 20

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    div-int/lit8 v2, v2, 0x2

    if-gt v1, v2, :cond_66

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    sub-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    rem-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v3, v1

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v4, v2

    const/4 v2, 0x0

    :goto_1e
    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    div-int/lit8 v5, v5, 0x2

    if-gt v2, v5, :cond_63

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    sub-int/2addr v5, v2

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    rem-int/2addr v5, v6

    add-int v6, v3, v2

    aget-wide v6, p1, v6

    add-int v8, v4, v2

    aget-wide v8, p1, v8

    add-int v10, v3, v5

    aget-wide v10, p1, v10

    add-int v12, v4, v5

    aget-wide v12, p1, v12

    add-double v14, v6, v12

    add-double v16, v8, v10

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-int v16, v3, v2

    sub-double/2addr v6, v14

    aput-wide v6, p1, v16

    add-int v6, v4, v2

    add-double v7, v8, v14

    aput-wide v7, p1, v6

    add-int v6, v3, v5

    add-double v7, v10, v14

    aput-wide v7, p1, v6

    add-int/2addr v5, v4

    sub-double v6, v12, v14

    aput-wide v6, p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_66
    return-void
.end method

.method private y_transform([[D)V
    .registers 19

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    div-int/lit8 v2, v2, 0x2

    if-gt v1, v2, :cond_5c

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    sub-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    rem-int v3, v2, v3

    const/4 v2, 0x0

    :goto_15
    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    div-int/lit8 v4, v4, 0x2

    if-gt v2, v4, :cond_59

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    sub-int/2addr v4, v2

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    rem-int/2addr v4, v5

    aget-object v5, p1, v1

    aget-wide v5, v5, v2

    aget-object v7, p1, v3

    aget-wide v7, v7, v2

    aget-object v9, p1, v1

    aget-wide v9, v9, v4

    aget-object v11, p1, v3

    aget-wide v11, v11, v4

    add-double v13, v5, v11

    add-double v15, v7, v9

    sub-double/2addr v13, v15

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    aget-object v15, p1, v1

    sub-double/2addr v5, v13

    aput-wide v5, v15, v2

    aget-object v5, p1, v3

    add-double v6, v7, v13

    aput-wide v6, v5, v2

    aget-object v5, p1, v1

    add-double v6, v9, v13

    aput-wide v6, v5, v4

    aget-object v5, p1, v3

    sub-double v6, v11, v13

    aput-wide v6, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5c
    return-void
.end method


# virtual methods
.method public forward([D)V
    .registers 10

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    iget-boolean v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->isPowerOfTwo:Z

    if-eqz v1, :cond_59

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->oldNthreads:I

    if-eq v3, v1, :cond_2a

    mul-int/lit8 v1, v3, 0x4

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/lit8 v2, v3, 0x2

    if-ne v1, v2, :cond_3a

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    :cond_22
    :goto_22
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iput v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->oldNthreads:I

    :cond_2a
    if-le v3, v4, :cond_47

    iget-boolean v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->useThreads:Z

    if-eqz v1, :cond_47

    invoke-direct {p0, v5, p1, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->ddxt2d_subth(I[DZ)V

    invoke-direct {p0, v5, p1, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->ddxt2d0_subth(I[DZ)V

    :cond_36
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->yTransform([D)V

    :goto_39
    return-void

    :cond_3a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/lit8 v2, v3, 0x2

    if-ge v1, v2, :cond_22

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    goto :goto_22

    :cond_47
    invoke-direct {p0, v5, p1, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->ddxt2d_sub(I[DZ)V

    :goto_4a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v0, v1, :cond_36

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtColumns:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_59
    if-le v3, v4, :cond_b5

    iget-boolean v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->useThreads:Z

    if-eqz v1, :cond_b5

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-lt v1, v3, :cond_b5

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-lt v1, v3, :cond_b5

    new-array v4, v3, [Ljava/util/concurrent/Future;

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    div-int v5, v1, v3

    move v2, v0

    :goto_6e
    if-ge v2, v3, :cond_8a

    mul-int v6, v2, v5

    add-int/lit8 v1, v3, -0x1

    if-ne v2, v1, :cond_87

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    :goto_78
    new-instance v7, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$1;

    invoke-direct {v7, p0, v6, v1, p1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$1;-><init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;II[D)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6e

    :cond_87
    add-int v1, v6, v5

    goto :goto_78

    :cond_8a
    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    div-int v2, v1, v3

    move v1, v0

    :goto_92
    if-ge v1, v3, :cond_ae

    mul-int v5, v1, v2

    add-int/lit8 v0, v3, -0x1

    if-ne v1, v0, :cond_ab

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    :goto_9c
    new-instance v6, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$2;

    invoke-direct {v6, p0, v5, v0, p1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$2;-><init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;II[D)V

    invoke-static {v6}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_92

    :cond_ab
    add-int v0, v5, v2

    goto :goto_9c

    :cond_ae
    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_b1
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->yTransform([D)V

    goto :goto_39

    :cond_b5
    move v1, v0

    :goto_b6
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v1, v2, :cond_c5

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtColumns:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v3, v1

    invoke-virtual {v2, p1, v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b6

    :cond_c5
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    new-array v3, v1, [D

    move v1, v0

    :goto_ca
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-ge v1, v2, :cond_b1

    move v2, v0

    :goto_cf
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v2, v4, :cond_de

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget-wide v4, p1, v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_cf

    :cond_de
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([D)V

    move v2, v0

    :goto_e4
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v2, v4, :cond_f3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    aget-wide v5, v3, v2

    aput-wide v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_e4

    :cond_f3
    add-int/lit8 v1, v1, 0x1

    goto :goto_ca
.end method

.method public forward([[D)V
    .registers 10

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    iget-boolean v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->isPowerOfTwo:Z

    if-eqz v1, :cond_58

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->oldNthreads:I

    if-eq v3, v1, :cond_2a

    mul-int/lit8 v1, v3, 0x4

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/lit8 v2, v3, 0x2

    if-ne v1, v2, :cond_3a

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    :cond_22
    :goto_22
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iput v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->oldNthreads:I

    :cond_2a
    if-le v3, v4, :cond_47

    iget-boolean v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->useThreads:Z

    if-eqz v1, :cond_47

    invoke-direct {p0, v5, p1, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->ddxt2d_subth(I[[DZ)V

    invoke-direct {p0, v5, p1, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->ddxt2d0_subth(I[[DZ)V

    :cond_36
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->y_transform([[D)V

    :goto_39
    return-void

    :cond_3a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/lit8 v2, v3, 0x2

    if-ge v1, v2, :cond_22

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    goto :goto_22

    :cond_47
    invoke-direct {p0, v5, p1, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->ddxt2d_sub(I[[DZ)V

    :goto_4a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v0, v1, :cond_36

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtColumns:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_58
    if-le v3, v4, :cond_b4

    iget-boolean v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->useThreads:Z

    if-eqz v1, :cond_b4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-lt v1, v3, :cond_b4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-lt v1, v3, :cond_b4

    new-array v4, v3, [Ljava/util/concurrent/Future;

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    div-int v5, v1, v3

    move v2, v0

    :goto_6d
    if-ge v2, v3, :cond_89

    mul-int v6, v2, v5

    add-int/lit8 v1, v3, -0x1

    if-ne v2, v1, :cond_86

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    :goto_77
    new-instance v7, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$3;

    invoke-direct {v7, p0, v6, v1, p1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$3;-><init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;II[[D)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6d

    :cond_86
    add-int v1, v6, v5

    goto :goto_77

    :cond_89
    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    div-int v2, v1, v3

    move v1, v0

    :goto_91
    if-ge v1, v3, :cond_ad

    mul-int v5, v1, v2

    add-int/lit8 v0, v3, -0x1

    if-ne v1, v0, :cond_aa

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    :goto_9b
    new-instance v6, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$4;

    invoke-direct {v6, p0, v5, v0, p1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$4;-><init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;II[[D)V

    invoke-static {v6}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_91

    :cond_aa
    add-int v0, v5, v2

    goto :goto_9b

    :cond_ad
    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_b0
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->y_transform([[D)V

    goto :goto_39

    :cond_b4
    move v1, v0

    :goto_b5
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v1, v2, :cond_c3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtColumns:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b5

    :cond_c3
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    new-array v3, v1, [D

    move v1, v0

    :goto_c8
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-ge v1, v2, :cond_b0

    move v2, v0

    :goto_cd
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v2, v4, :cond_da

    aget-object v4, p1, v2

    aget-wide v4, v4, v1

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_cd

    :cond_da
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([D)V

    move v2, v0

    :goto_e0
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v2, v4, :cond_ed

    aget-object v4, p1, v2

    aget-wide v5, v3, v2

    aput-wide v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_e0

    :cond_ed
    add-int/lit8 v1, v1, 0x1

    goto :goto_c8
.end method

.method public inverse([DZ)V
    .registers 14

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_59

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->oldNthreads:I

    if-eq v8, v0, :cond_29

    mul-int/lit8 v0, v8, 0x4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/lit8 v1, v8, 0x2

    if-ne v0, v1, :cond_39

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    :cond_21
    :goto_21
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iput v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->oldNthreads:I

    :cond_29
    if-le v8, v2, :cond_46

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->useThreads:Z

    if-eqz v0, :cond_46

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->ddxt2d_subth(I[DZ)V

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->ddxt2d0_subth(I[DZ)V

    :cond_35
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->yTransform([D)V

    :goto_38
    return-void

    :cond_39
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/lit8 v1, v8, 0x2

    if-ge v0, v1, :cond_21

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    goto :goto_21

    :cond_46
    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->ddxt2d_sub(I[DZ)V

    move v0, v6

    :goto_4a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v0, v1, :cond_35

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtColumns:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_59
    if-le v8, v2, :cond_b9

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->useThreads:Z

    if-eqz v0, :cond_b9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-lt v0, v8, :cond_b9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-lt v0, v8, :cond_b9

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    div-int v10, v0, v8

    move v7, v6

    :goto_6e
    if-ge v7, v8, :cond_8d

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_8a

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    :goto_78
    new-instance v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$5;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$5;-><init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;II[DZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_6e

    :cond_8a
    add-int v3, v2, v10

    goto :goto_78

    :cond_8d
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    div-int v7, v0, v8

    :goto_94
    if-ge v6, v8, :cond_b2

    mul-int v2, v6, v7

    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_af

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    :goto_9e
    new-instance v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;-><init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;II[DZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_94

    :cond_af
    add-int v3, v2, v7

    goto :goto_9e

    :cond_b2
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_b5
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->yTransform([D)V

    goto :goto_38

    :cond_b9
    move v0, v6

    :goto_ba
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v0, v1, :cond_c9

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtColumns:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_ba

    :cond_c9
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    new-array v2, v0, [D

    move v0, v6

    :goto_ce
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-ge v0, v1, :cond_b5

    move v1, v6

    :goto_d3
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v1, v3, :cond_e2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    aget-wide v3, p1, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    :cond_e2
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DZ)V

    move v1, v6

    :goto_e8
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v1, v3, :cond_f7

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    aget-wide v4, v2, v1

    aput-wide v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    :cond_f7
    add-int/lit8 v0, v0, 0x1

    goto :goto_ce
.end method

.method public inverse([[DZ)V
    .registers 14

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_58

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->oldNthreads:I

    if-eq v8, v0, :cond_29

    mul-int/lit8 v0, v8, 0x4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/lit8 v1, v8, 0x2

    if-ne v0, v1, :cond_39

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    :cond_21
    :goto_21
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->t:[D

    iput v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->oldNthreads:I

    :cond_29
    if-le v8, v2, :cond_46

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->useThreads:Z

    if-eqz v0, :cond_46

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->ddxt2d_subth(I[[DZ)V

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->ddxt2d0_subth(I[[DZ)V

    :cond_35
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->y_transform([[D)V

    :goto_38
    return-void

    :cond_39
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    mul-int/lit8 v1, v8, 0x2

    if-ge v0, v1, :cond_21

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->nt:I

    goto :goto_21

    :cond_46
    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->ddxt2d_sub(I[[DZ)V

    move v0, v6

    :goto_4a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v0, v1, :cond_35

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtColumns:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_58
    if-le v8, v2, :cond_b8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->useThreads:Z

    if-eqz v0, :cond_b8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-lt v0, v8, :cond_b8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-lt v0, v8, :cond_b8

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    div-int v10, v0, v8

    move v7, v6

    :goto_6d
    if-ge v7, v8, :cond_8c

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_89

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    :goto_77
    new-instance v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$7;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$7;-><init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;II[[DZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_6d

    :cond_89
    add-int v3, v2, v10

    goto :goto_77

    :cond_8c
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    div-int v7, v0, v8

    :goto_93
    if-ge v6, v8, :cond_b1

    mul-int v2, v6, v7

    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_ae

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    :goto_9d
    new-instance v0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$8;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$8;-><init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;II[[DZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_93

    :cond_ae
    add-int v3, v2, v7

    goto :goto_9d

    :cond_b1
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_b4
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->y_transform([[D)V

    goto :goto_38

    :cond_b8
    move v0, v6

    :goto_b9
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v0, v1, :cond_c7

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtColumns:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    :cond_c7
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    new-array v2, v0, [D

    move v0, v6

    :goto_cc
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->columns:I

    if-ge v0, v1, :cond_b4

    move v1, v6

    :goto_d1
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v1, v3, :cond_de

    aget-object v3, p1, v1

    aget-wide v3, v3, v0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d1

    :cond_de
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->dhtRows:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DZ)V

    move v1, v6

    :goto_e4
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->rows:I

    if-ge v1, v3, :cond_f1

    aget-object v3, p1, v1

    aget-wide v4, v2, v1

    aput-wide v4, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_e4

    :cond_f1
    add-int/lit8 v0, v0, 0x1

    goto :goto_cc
.end method
