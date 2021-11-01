.class public Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;
.super Ljava/lang/Object;


# instance fields
.field private columns:I

.field private dctColumns:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

.field private dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

.field private isPowerOfTwo:Z

.field private nt:I

.field private oldNthreads:I

.field private rows:I

.field private t:[F

.field private useThreads:Z


# direct methods
.method public constructor <init>(II)V
    .registers 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->isPowerOfTwo:Z

    iput-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-le p1, v2, :cond_d

    if-gt p2, v2, :cond_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rows and columns must be greater than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iput p1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int v0, p1, p2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_2D()I

    move-result v1

    if-lt v0, v1, :cond_23

    iput-boolean v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    :cond_23
    invoke-static {p1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-static {p2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_50

    iput-boolean v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->isPowerOfTwo:Z

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->oldNthreads:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->oldNthreads:I

    mul-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, p1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->oldNthreads:I

    mul-int/lit8 v0, v0, 0x2

    if-ne p2, v0, :cond_5e

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    :cond_4a
    :goto_4a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    :cond_50
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    invoke-direct {v0, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctColumns:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    if-ne p2, p1, :cond_6b

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctColumns:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    :goto_5d
    return-void

    :cond_5e
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->oldNthreads:I

    mul-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_4a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    goto :goto_4a

    :cond_6b
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    goto :goto_5d
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    return v0
.end method

.method static synthetic access$100(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctColumns:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    return-object v0
.end method

.method static synthetic access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    return v0
.end method

.method static synthetic access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    return-object v0
.end method

.method static synthetic access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    return-object v0
.end method

.method private ddxt2d0_subth(I[FZ)V
    .registers 12

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-le v0, v1, :cond_21

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    :goto_a
    new-array v7, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v4, :cond_26

    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$11;

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$11;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;III[FZ)V

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

.method private ddxt2d0_subth(I[[FZ)V
    .registers 12

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-le v0, v1, :cond_21

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    :goto_a
    new-array v7, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v4, :cond_26

    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$12;

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$12;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;III[[FZ)V

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

.method private ddxt2d_sub(I[FZ)V
    .registers 12

    const/4 v2, 0x2

    const/4 v5, -0x1

    const/4 v1, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-le v0, v2, :cond_13b

    if-ne p1, v5, :cond_a2

    move v0, v1

    :goto_a
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge v0, v2, :cond_199

    move v2, v1

    :goto_f
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v3, :cond_43

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget v6, p2, v3

    aput v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    add-int/lit8 v6, v3, 0x1

    aget v6, p2, v6

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v6, v4

    add-int/lit8 v7, v3, 0x2

    aget v7, p2, v7

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x3

    aget v3, p2, v3

    aput v3, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_43
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    move v2, v1

    :goto_6a
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v3, :cond_9e

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget v5, v5, v2

    aput v5, p2, v3

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget v6, v6, v4

    aput v6, p2, v5

    add-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v7, v4

    aget v6, v6, v7

    aput v6, p2, v5

    add-int/lit8 v3, v3, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    aget v4, v5, v4

    aput v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_9e
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_a

    :cond_a2
    move v0, v1

    :goto_a3
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge v0, v2, :cond_199

    move v2, v1

    :goto_a8
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v3, :cond_dc

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget v6, p2, v3

    aput v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    add-int/lit8 v6, v3, 0x1

    aget v6, p2, v6

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v6, v4

    add-int/lit8 v7, v3, 0x2

    aget v7, p2, v7

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x3

    aget v3, p2, v3

    aput v3, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    :cond_dc
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    move v2, v1

    :goto_103
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v3, :cond_137

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget v5, v5, v2

    aput v5, p2, v3

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget v6, v6, v4

    aput v6, p2, v5

    add-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v7, v4

    aget v6, v6, v7

    aput v6, p2, v5

    add-int/lit8 v3, v3, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    aget v4, v5, v4

    aput v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_103

    :cond_137
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_a3

    :cond_13b
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ne v0, v2, :cond_199

    move v0, v1

    :goto_140
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v0, v2, :cond_15b

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v2, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget v4, p2, v2

    aput v4, v3, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v4, v0

    add-int/lit8 v2, v2, 0x1

    aget v2, p2, v2

    aput v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_140

    :cond_15b
    if-ne p1, v5, :cond_188

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    invoke-virtual {v0, v2, v1, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {v0, v2, v3, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    :goto_16d
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v0, :cond_199

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v0, v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget v2, v2, v1

    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v3, v1

    aget v2, v2, v3

    aput v2, p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_16d

    :cond_188
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    invoke-virtual {v0, v2, v1, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {v0, v2, v3, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    goto :goto_16d

    :cond_199
    return-void
.end method

.method private ddxt2d_sub(I[[FZ)V
    .registers 12

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-le v0, v2, :cond_14c

    if-ne p1, v5, :cond_ab

    move v0, v1

    :goto_b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge v0, v2, :cond_1a9

    move v2, v1

    :goto_10
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v3, :cond_48

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v3, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget-object v5, p2, v2

    aget v5, v5, v0

    aput v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget-object v5, p2, v2

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    aput v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v5, v3

    aget-object v6, p2, v2

    add-int/lit8 v7, v0, 0x2

    aget v6, v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    aget-object v5, p2, v2

    add-int/lit8 v6, v0, 0x3

    aget v5, v5, v6

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_48
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    move v2, v1

    :goto_6f
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v3, :cond_a7

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v3, v2

    aget-object v4, p2, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget v5, v5, v2

    aput v5, v4, v0

    aget-object v4, p2, v2

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget v6, v6, v3

    aput v6, v4, v5

    aget-object v4, p2, v2

    add-int/lit8 v5, v0, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v7, v3

    aget v6, v6, v7

    aput v6, v4, v5

    aget-object v4, p2, v2

    add-int/lit8 v5, v0, 0x3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    aget v3, v6, v3

    aput v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    :cond_a7
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_b

    :cond_ab
    move v0, v1

    :goto_ac
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge v0, v2, :cond_1a9

    move v2, v1

    :goto_b1
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v3, :cond_e9

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v3, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget-object v5, p2, v2

    aget v5, v5, v0

    aput v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget-object v5, p2, v2

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    aput v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v5, v3

    aget-object v6, p2, v2

    add-int/lit8 v7, v0, 0x2

    aget v6, v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    aget-object v5, p2, v2

    add-int/lit8 v6, v0, 0x3

    aget v5, v5, v6

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    :cond_e9
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    move v2, v1

    :goto_110
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v2, v3, :cond_148

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v3, v2

    aget-object v4, p2, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget v5, v5, v2

    aput v5, v4, v0

    aget-object v4, p2, v2

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget v6, v6, v3

    aput v6, v4, v5

    aget-object v4, p2, v2

    add-int/lit8 v5, v0, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v7, v3

    aget v6, v6, v7

    aput v6, v4, v5

    aget-object v4, p2, v2

    add-int/lit8 v5, v0, 0x3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    aget v3, v6, v3

    aput v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_110

    :cond_148
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_ac

    :cond_14c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ne v0, v2, :cond_1a9

    move v0, v1

    :goto_151
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v0, v2, :cond_16b

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget-object v3, p2, v0

    aget v3, v3, v1

    aput v3, v2, v0

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v3, v0

    aget-object v4, p2, v0

    aget v4, v4, v6

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_151

    :cond_16b
    if-ne p1, v5, :cond_198

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    invoke-virtual {v0, v2, v1, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {v0, v2, v3, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    :goto_17d
    move v0, v1

    :goto_17e
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v0, v2, :cond_1a9

    aget-object v2, p2, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    aget v3, v3, v0

    aput v3, v2, v1

    aget-object v2, p2, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    add-int/2addr v4, v0

    aget v3, v3, v4

    aput v3, v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_17e

    :cond_198
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    invoke-virtual {v0, v2, v1, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    invoke-virtual {v0, v2, v3, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    goto :goto_17d

    :cond_1a9
    return-void
.end method

.method private ddxt2d_subth(I[FZ)V
    .registers 14

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

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

    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;

    move-object v1, p0

    move v3, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;IIII[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_3a

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

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

.method private ddxt2d_subth(I[[FZ)V
    .registers 14

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

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

    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$10;

    move-object v1, p0

    move v3, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$10;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;IIII[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_3a

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

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


# virtual methods
.method public forward([FZ)V
    .registers 14

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_57

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->oldNthreads:I

    if-eq v8, v0, :cond_2a

    mul-int/lit8 v0, v8, 0x4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/lit8 v1, v8, 0x2

    if-ne v0, v1, :cond_37

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    :cond_22
    :goto_22
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iput v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->oldNthreads:I

    :cond_2a
    if-le v8, v3, :cond_44

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v0, :cond_44

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->ddxt2d_subth(I[FZ)V

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->ddxt2d0_subth(I[FZ)V

    :cond_36
    :goto_36
    return-void

    :cond_37
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/lit8 v1, v8, 0x2

    if-ge v0, v1, :cond_22

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    goto :goto_22

    :cond_44
    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->ddxt2d_sub(I[FZ)V

    move v0, v6

    :goto_48
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v0, v1, :cond_36

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctColumns:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_57
    if-le v8, v3, :cond_b4

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v0, :cond_b4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-lt v0, v8, :cond_b4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-lt v0, v8, :cond_b4

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    div-int v10, v0, v8

    move v7, v6

    :goto_6c
    if-ge v7, v8, :cond_8b

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_88

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    :goto_76
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$1;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$1;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;II[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_6c

    :cond_88
    add-int v3, v2, v10

    goto :goto_76

    :cond_8b
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    div-int v7, v0, v8

    :goto_92
    if-ge v6, v8, :cond_b0

    mul-int v2, v6, v7

    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_ad

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    :goto_9c
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$2;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$2;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;II[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_92

    :cond_ad
    add-int v3, v2, v7

    goto :goto_9c

    :cond_b0
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_36

    :cond_b4
    move v0, v6

    :goto_b5
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v0, v1, :cond_c4

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctColumns:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    :cond_c4
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    new-array v2, v0, [F

    move v0, v6

    :goto_c9
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge v0, v1, :cond_36

    move v1, v6

    :goto_ce
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_dd

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    aget v3, p1, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_ce

    :cond_dd
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FZ)V

    move v1, v6

    :goto_e3
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_f2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    aget v4, v2, v1

    aput v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e3

    :cond_f2
    add-int/lit8 v0, v0, 0x1

    goto :goto_c9
.end method

.method public forward([[FZ)V
    .registers 14

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_56

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->oldNthreads:I

    if-eq v8, v0, :cond_2a

    mul-int/lit8 v0, v8, 0x4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/lit8 v1, v8, 0x2

    if-ne v0, v1, :cond_37

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    :cond_22
    :goto_22
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iput v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->oldNthreads:I

    :cond_2a
    if-le v8, v3, :cond_44

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v0, :cond_44

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->ddxt2d_subth(I[[FZ)V

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->ddxt2d0_subth(I[[FZ)V

    :cond_36
    :goto_36
    return-void

    :cond_37
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/lit8 v1, v8, 0x2

    if-ge v0, v1, :cond_22

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    goto :goto_22

    :cond_44
    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->ddxt2d_sub(I[[FZ)V

    move v0, v6

    :goto_48
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v0, v1, :cond_36

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctColumns:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_56
    if-le v8, v3, :cond_b3

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v0, :cond_b3

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-lt v0, v8, :cond_b3

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-lt v0, v8, :cond_b3

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    div-int v10, v0, v8

    move v7, v6

    :goto_6b
    if-ge v7, v8, :cond_8a

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_87

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    :goto_75
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$3;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$3;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;II[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_6b

    :cond_87
    add-int v3, v2, v10

    goto :goto_75

    :cond_8a
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    div-int v7, v0, v8

    :goto_91
    if-ge v6, v8, :cond_af

    mul-int v2, v6, v7

    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_ac

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    :goto_9b
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$4;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$4;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;II[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_91

    :cond_ac
    add-int v3, v2, v7

    goto :goto_9b

    :cond_af
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_36

    :cond_b3
    move v0, v6

    :goto_b4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v0, v1, :cond_c2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctColumns:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    :cond_c2
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    new-array v2, v0, [F

    move v0, v6

    :goto_c7
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge v0, v1, :cond_36

    move v1, v6

    :goto_cc
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_d9

    aget-object v3, p1, v1

    aget v3, v3, v0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_cc

    :cond_d9
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FZ)V

    move v1, v6

    :goto_df
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_ec

    aget-object v3, p1, v1

    aget v4, v2, v1

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_df

    :cond_ec
    add-int/lit8 v0, v0, 0x1

    goto :goto_c7
.end method

.method public inverse([FZ)V
    .registers 14

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_56

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->oldNthreads:I

    if-eq v8, v0, :cond_29

    mul-int/lit8 v0, v8, 0x4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/lit8 v1, v8, 0x2

    if-ne v0, v1, :cond_36

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    :cond_21
    :goto_21
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iput v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->oldNthreads:I

    :cond_29
    if-le v8, v2, :cond_43

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v0, :cond_43

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->ddxt2d_subth(I[FZ)V

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->ddxt2d0_subth(I[FZ)V

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/lit8 v1, v8, 0x2

    if-ge v0, v1, :cond_21

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    goto :goto_21

    :cond_43
    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->ddxt2d_sub(I[FZ)V

    move v0, v6

    :goto_47
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v0, v1, :cond_35

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctColumns:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_56
    if-le v8, v2, :cond_b3

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v0, :cond_b3

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-lt v0, v8, :cond_b3

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-lt v0, v8, :cond_b3

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    div-int v10, v0, v8

    move v7, v6

    :goto_6b
    if-ge v7, v8, :cond_8a

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_87

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    :goto_75
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$5;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$5;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;II[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_6b

    :cond_87
    add-int v3, v2, v10

    goto :goto_75

    :cond_8a
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    div-int v7, v0, v8

    :goto_91
    if-ge v6, v8, :cond_af

    mul-int v2, v6, v7

    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_ac

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    :goto_9b
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$6;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$6;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;II[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_91

    :cond_ac
    add-int v3, v2, v7

    goto :goto_9b

    :cond_af
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_35

    :cond_b3
    move v0, v6

    :goto_b4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v0, v1, :cond_c3

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctColumns:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    :cond_c3
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    new-array v2, v0, [F

    move v0, v6

    :goto_c8
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge v0, v1, :cond_35

    move v1, v6

    :goto_cd
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_dc

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    aget v3, p1, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_cd

    :cond_dc
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FZ)V

    move v1, v6

    :goto_e2
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_f1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    aget v4, v2, v1

    aput v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e2

    :cond_f1
    add-int/lit8 v0, v0, 0x1

    goto :goto_c8
.end method

.method public inverse([[FZ)V
    .registers 14

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_55

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->oldNthreads:I

    if-eq v8, v0, :cond_29

    mul-int/lit8 v0, v8, 0x4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/lit8 v1, v8, 0x2

    if-ne v0, v1, :cond_36

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    :cond_21
    :goto_21
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->t:[F

    iput v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->oldNthreads:I

    :cond_29
    if-le v8, v2, :cond_43

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v0, :cond_43

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->ddxt2d_subth(I[[FZ)V

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->ddxt2d0_subth(I[[FZ)V

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    mul-int/lit8 v1, v8, 0x2

    if-ge v0, v1, :cond_21

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->nt:I

    goto :goto_21

    :cond_43
    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->ddxt2d_sub(I[[FZ)V

    move v0, v6

    :goto_47
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v0, v1, :cond_35

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctColumns:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_55
    if-le v8, v2, :cond_b2

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->useThreads:Z

    if-eqz v0, :cond_b2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-lt v0, v8, :cond_b2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-lt v0, v8, :cond_b2

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    div-int v10, v0, v8

    move v7, v6

    :goto_6a
    if-ge v7, v8, :cond_89

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_86

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    :goto_74
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$7;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$7;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;II[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_6a

    :cond_86
    add-int v3, v2, v10

    goto :goto_74

    :cond_89
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    div-int v7, v0, v8

    :goto_90
    if-ge v6, v8, :cond_ae

    mul-int v2, v6, v7

    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_ab

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    :goto_9a
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$8;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$8;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;II[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_90

    :cond_ab
    add-int v3, v2, v7

    goto :goto_9a

    :cond_ae
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_35

    :cond_b2
    move v0, v6

    :goto_b3
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v0, v1, :cond_c1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctColumns:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    :cond_c1
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    new-array v2, v0, [F

    move v0, v6

    :goto_c6
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->columns:I

    if-ge v0, v1, :cond_35

    move v1, v6

    :goto_cb
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_d8

    aget-object v3, p1, v1

    aget v3, v3, v0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_cb

    :cond_d8
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->dctRows:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FZ)V

    move v1, v6

    :goto_de
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->rows:I

    if-ge v1, v3, :cond_eb

    aget-object v3, p1, v1

    aget v4, v2, v1

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_de

    :cond_eb
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6
.end method
