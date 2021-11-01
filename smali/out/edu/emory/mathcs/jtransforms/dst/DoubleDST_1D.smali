.class public Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;
.super Ljava/lang/Object;


# instance fields
.field private dct:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

.field private n:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->n:I

    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->dct:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

    return-void
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->n:I

    return v0
.end method


# virtual methods
.method public forward([DIZ)V
    .registers 16

    const/4 v0, 0x0

    const/4 v11, 0x1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->n:I

    if-ne v1, v11, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->n:I

    div-int/lit8 v6, v1, 0x2

    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->n:I

    add-int/2addr v2, p2

    :goto_10
    if-ge v1, v2, :cond_1a

    aget-wide v3, p1, v1

    neg-double v3, v3

    aput-wide v3, p1, v1

    add-int/lit8 v1, v1, 0x2

    goto :goto_10

    :cond_1a
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->dct:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v1, p1, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    if-le v1, v11, :cond_51

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v6, v1, :cond_51

    const/4 v8, 0x2

    div-int v9, v6, v8

    new-array v10, v8, [Ljava/util/concurrent/Future;

    move v7, v0

    :goto_31
    if-ge v7, v8, :cond_4d

    mul-int v3, v7, v9

    if-ne v7, v11, :cond_4a

    move v4, v6

    :goto_38
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D$1;

    move-object v1, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D$1;-><init>(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;III[D)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_31

    :cond_4a
    add-int v4, v3, v9

    goto :goto_38

    :cond_4d
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_6

    :cond_51
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->n:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    :goto_56
    if-ge v0, v6, :cond_6

    add-int v2, p2, v0

    aget-wide v3, p1, v2

    sub-int v5, v1, v0

    aget-wide v7, p1, v5

    aput-wide v7, p1, v2

    aput-wide v3, p1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_56
.end method

.method public forward([DZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    return-void
.end method

.method public inverse([DIZ)V
    .registers 16

    const/4 v0, 0x0

    const/4 v11, 0x1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->n:I

    if-ne v1, v11, :cond_7

    :cond_6
    return-void

    :cond_7
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->n:I

    div-int/lit8 v6, v1, 0x2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    if-le v1, v11, :cond_50

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v6, v1, :cond_50

    const/4 v8, 0x2

    div-int v9, v6, v8

    new-array v10, v8, [Ljava/util/concurrent/Future;

    move v7, v0

    :goto_1d
    if-ge v7, v8, :cond_39

    mul-int v3, v7, v9

    if-ne v7, v11, :cond_36

    move v4, v6

    :goto_24
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D$2;

    move-object v1, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D$2;-><init>(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;III[D)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1d

    :cond_36
    add-int v4, v3, v9

    goto :goto_24

    :cond_39
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_3c
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->dct:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

    invoke-virtual {v0, p1, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->n:I

    add-int/2addr v1, p2

    :goto_46
    if-ge v0, v1, :cond_6

    aget-wide v2, p1, v0

    neg-double v2, v2

    aput-wide v2, p1, v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_46

    :cond_50
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->n:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    :goto_55
    if-ge v0, v6, :cond_3c

    add-int v2, p2, v0

    aget-wide v2, p1, v2

    add-int v4, p2, v0

    sub-int v5, v1, v0

    aget-wide v7, p1, v5

    aput-wide v7, p1, v4

    sub-int v4, v1, v0

    aput-wide v2, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_55
.end method

.method public inverse([DZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    return-void
.end method
