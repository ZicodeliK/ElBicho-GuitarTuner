.class public Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;
.super Ljava/lang/Object;


# instance fields
.field private columns:I

.field private dstColumns:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

.field private dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

.field private dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

.field private isPowerOfTwo:Z

.field private nt:I

.field private oldNthreads:I

.field private rowStride:I

.field private rows:I

.field private sliceStride:I

.field private slices:I

.field private t:[F

.field private useThreads:Z


# direct methods
.method public constructor <init>(III)V
    .registers 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->isPowerOfTwo:Z

    iput-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->useThreads:Z

    if-le p1, v2, :cond_f

    if-le p2, v2, :cond_f

    if-gt p3, v2, :cond_17

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slices, rows and columns must be greater than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput p1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    mul-int v0, p2, p3

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int v0, p1, p2

    mul-int/2addr v0, p3

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_3D()I

    move-result v1

    if-lt v0, v1, :cond_2e

    iput-boolean v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->useThreads:Z

    :cond_2e
    invoke-static {p1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-static {p2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-static {p3}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_70

    iput-boolean v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->isPowerOfTwo:Z

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->oldNthreads:I

    iput p1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    if-ge v0, p2, :cond_50

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    :cond_50
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->oldNthreads:I

    if-le v0, v2, :cond_61

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->oldNthreads:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    :cond_61
    const/4 v0, 0x2

    if-ne p3, v0, :cond_6a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    :cond_6a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    :cond_70
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    if-ne p1, p2, :cond_84

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    :goto_7d
    if-ne p1, p3, :cond_8c

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstColumns:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    :goto_83
    return-void

    :cond_84
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    invoke-direct {v0, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    goto :goto_7d

    :cond_8c
    if-ne p2, p3, :cond_93

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstColumns:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    goto :goto_83

    :cond_93
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    invoke-direct {v0, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstColumns:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    goto :goto_83
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    return v0
.end method

.method static synthetic access$100(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    return v0
.end method

.method static synthetic access$200(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    return v0
.end method

.method static synthetic access$300(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;)Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstColumns:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    return-object v0
.end method

.method static synthetic access$400(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    return v0
.end method

.method static synthetic access$500(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;)Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    return-object v0
.end method

.method static synthetic access$600(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    return v0
.end method

.method static synthetic access$700(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;)Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    return-object v0
.end method

.method static synthetic access$800(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;)[F
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    return-object v0
.end method

.method private ddxt3da_sub(I[FZ)V
    .registers 15

    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_110

    move v0, v1

    :goto_6
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v0, v2, :cond_21b

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int v4, v0, v2

    move v2, v1

    :goto_f
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v3, :cond_1f

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstColumns:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    invoke-virtual {v3, p2, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1f
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-le v2, v10, :cond_be

    move v2, v1

    :goto_24
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v2, v3, :cond_10c

    move v3, v1

    :goto_29
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v3, v5, :cond_5e

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v8, p2, v5

    aput v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    add-int/lit8 v8, v5, 0x1

    aget v8, p2, v8

    aput v8, v7, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v8, v6

    add-int/lit8 v9, v5, 0x2

    aget v9, p2, v9

    aput v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x3

    aget v5, p2, v5

    aput v5, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_5e
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v3, v5, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    invoke-virtual {v3, v5, v6, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v5, v6, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v3, v5, v6, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    move v3, v1

    :goto_85
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v3, v5, :cond_ba

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v7, v7, v3

    aput v7, p2, v5

    add-int/lit8 v7, v5, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v8, v8, v6

    aput v8, p2, v7

    add-int/lit8 v7, v5, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v9, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v9, v6

    aget v8, v8, v9

    aput v8, p2, v7

    add-int/lit8 v5, v5, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    aget v6, v7, v6

    aput v6, p2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    :cond_ba
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_24

    :cond_be
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ne v2, v10, :cond_10c

    move v2, v1

    :goto_c3
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v3, :cond_df

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v6, p2, v3

    aput v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v6, v2

    add-int/lit8 v3, v3, 0x1

    aget v3, p2, v3

    aput v3, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_c3

    :cond_df
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    invoke-virtual {v2, v3, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    move v2, v1

    :goto_f0
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v3, :cond_10c

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v5, v5, v2

    aput v5, p2, v3

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v6, v2

    aget v5, v5, v6

    aput v5, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_f0

    :cond_10c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_110
    move v0, v1

    :goto_111
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v0, v2, :cond_21b

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int v4, v0, v2

    move v2, v1

    :goto_11a
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v3, :cond_12a

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstColumns:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    invoke-virtual {v3, p2, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11a

    :cond_12a
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-le v2, v10, :cond_1c9

    move v2, v1

    :goto_12f
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v2, v3, :cond_217

    move v3, v1

    :goto_134
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v3, v5, :cond_169

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v8, p2, v5

    aput v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    add-int/lit8 v8, v5, 0x1

    aget v8, p2, v8

    aput v8, v7, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v8, v6

    add-int/lit8 v9, v5, 0x2

    aget v9, p2, v9

    aput v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x3

    aget v5, p2, v5

    aput v5, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_134

    :cond_169
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v3, v5, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    invoke-virtual {v3, v5, v6, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v5, v6, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v3, v5, v6, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    move v3, v1

    :goto_190
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v3, v5, :cond_1c5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v7, v7, v3

    aput v7, p2, v5

    add-int/lit8 v7, v5, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v8, v8, v6

    aput v8, p2, v7

    add-int/lit8 v7, v5, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v9, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v9, v6

    aget v8, v8, v9

    aput v8, p2, v7

    add-int/lit8 v5, v5, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    aget v6, v7, v6

    aput v6, p2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_190

    :cond_1c5
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_12f

    :cond_1c9
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ne v2, v10, :cond_217

    move v2, v1

    :goto_1ce
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v3, :cond_1ea

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v6, p2, v3

    aput v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v6, v2

    add-int/lit8 v3, v3, 0x1

    aget v3, p2, v3

    aput v3, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1ce

    :cond_1ea
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    invoke-virtual {v2, v3, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    move v2, v1

    :goto_1fb
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v3, :cond_217

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v5, v5, v2

    aput v5, p2, v3

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v6, v2

    aget v5, v5, v6

    aput v5, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1fb

    :cond_217
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_111

    :cond_21b
    return-void
.end method

.method private ddxt3da_sub(I[[[FZ)V
    .registers 15

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_127

    move v0, v1

    :goto_7
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v0, v2, :cond_248

    move v2, v1

    :goto_c
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v3, :cond_1c

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstColumns:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    aget-object v4, p2, v0

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-le v2, v10, :cond_d1

    move v2, v1

    :goto_21
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v2, v3, :cond_123

    move v3, v1

    :goto_26
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v3, v4, :cond_66

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget-object v6, p2, v0

    aget-object v6, v6, v3

    aget v6, v6, v2

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget-object v6, p2, v0

    aget-object v6, v6, v3

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v6, v4

    aget-object v7, p2, v0

    aget-object v7, v7, v3

    add-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    aget-object v6, p2, v0

    aget-object v6, v6, v3

    add-int/lit8 v7, v2, 0x3

    aget v6, v6, v7

    aput v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_66
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v3, v4, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v5, v5, 0x3

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    move v3, v1

    :goto_8d
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v3, v4, :cond_cd

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v4, v3

    aget-object v5, p2, v0

    aget-object v5, v5, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v6, v6, v3

    aput v6, v5, v2

    aget-object v5, p2, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v7, v7, v4

    aput v7, v5, v6

    aget-object v5, p2, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v2, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v8, v4

    aget v7, v7, v8

    aput v7, v5, v6

    aget-object v5, p2, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v2, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    aget v4, v7, v4

    aput v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    :cond_cd
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_21

    :cond_d1
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ne v2, v10, :cond_123

    move v2, v1

    :goto_d6
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v3, :cond_f4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget-object v4, p2, v0

    aget-object v4, v4, v2

    aget v4, v4, v1

    aput v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v4, v2

    aget-object v5, p2, v0

    aget-object v5, v5, v2

    aget v5, v5, v9

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_d6

    :cond_f4
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    move v2, v1

    :goto_105
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v3, :cond_123

    aget-object v3, p2, v0

    aget-object v3, v3, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v4, v4, v2

    aput v4, v3, v1

    aget-object v3, p2, v0

    aget-object v3, v3, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v5, v2

    aget v4, v4, v5

    aput v4, v3, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_105

    :cond_123
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_127
    move v0, v1

    :goto_128
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v0, v2, :cond_248

    move v2, v1

    :goto_12d
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v3, :cond_13d

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstColumns:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    aget-object v4, p2, v0

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12d

    :cond_13d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-le v2, v10, :cond_1f2

    move v2, v1

    :goto_142
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v2, v3, :cond_244

    move v3, v1

    :goto_147
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v3, v4, :cond_187

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget-object v6, p2, v0

    aget-object v6, v6, v3

    aget v6, v6, v2

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget-object v6, p2, v0

    aget-object v6, v6, v3

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v6, v4

    aget-object v7, p2, v0

    aget-object v7, v7, v3

    add-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    aget-object v6, p2, v0

    aget-object v6, v6, v3

    add-int/lit8 v7, v2, 0x3

    aget v6, v6, v7

    aput v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_147

    :cond_187
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v3, v4, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v5, v5, 0x3

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    move v3, v1

    :goto_1ae
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v3, v4, :cond_1ee

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v4, v3

    aget-object v5, p2, v0

    aget-object v5, v5, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v6, v6, v3

    aput v6, v5, v2

    aget-object v5, p2, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v7, v7, v4

    aput v7, v5, v6

    aget-object v5, p2, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v2, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v8, v4

    aget v7, v7, v8

    aput v7, v5, v6

    aget-object v5, p2, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v2, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    aget v4, v7, v4

    aput v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1ae

    :cond_1ee
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_142

    :cond_1f2
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ne v2, v10, :cond_244

    move v2, v1

    :goto_1f7
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v3, :cond_215

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget-object v4, p2, v0

    aget-object v4, v4, v2

    aget v4, v4, v1

    aput v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v4, v2

    aget-object v5, p2, v0

    aget-object v5, v5, v2

    aget v5, v5, v9

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f7

    :cond_215
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    move v2, v1

    :goto_226
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v3, :cond_244

    aget-object v3, p2, v0

    aget-object v3, v3, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v4, v4, v2

    aput v4, v3, v1

    aget-object v3, p2, v0

    aget-object v3, v3, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    add-int/2addr v5, v2

    aget v4, v4, v5

    aput v4, v3, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_226

    :cond_244
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_128

    :cond_248
    return-void
.end method

.method private ddxt3da_subth(I[FZ)V
    .registers 14

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-le v0, v1, :cond_2f

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    :goto_a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    shr-int/lit8 v0, v0, 0x1

    move v8, v0

    :goto_16
    new-array v9, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_34

    mul-int v7, v8, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$13;

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$13;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;III[FZI)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2f
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v4

    goto :goto_a

    :cond_34
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void

    :cond_38
    move v8, v0

    goto :goto_16
.end method

.method private ddxt3da_subth(I[[[FZ)V
    .registers 14

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-le v0, v1, :cond_2f

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    :goto_a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    shr-int/lit8 v0, v0, 0x1

    move v8, v0

    :goto_16
    new-array v9, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_34

    mul-int v7, v8, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$14;

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$14;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;III[[[FZI)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2f
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v4

    goto :goto_a

    :cond_34
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void

    :cond_38
    move v8, v0

    goto :goto_16
.end method

.method private ddxt3db_sub(I[FZ)V
    .registers 14

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_10b

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-le v0, v2, :cond_b1

    move v0, v1

    :goto_a
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v2, :cond_211

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int v4, v0, v2

    move v2, v1

    :goto_13
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v2, v3, :cond_ad

    move v3, v1

    :goto_18
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v3, v5, :cond_4d

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v8, p2, v5

    aput v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    add-int/lit8 v8, v5, 0x1

    aget v8, p2, v8

    aput v8, v7, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v8, v6

    add-int/lit8 v9, v5, 0x2

    aget v9, p2, v9

    aput v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x3

    aget v5, p2, v5

    aput v5, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_4d
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v3, v5, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    invoke-virtual {v3, v5, v6, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v5, v6, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v3, v5, v6, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    move v3, v1

    :goto_74
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v3, v5, :cond_a9

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v7, v7, v3

    aput v7, p2, v5

    add-int/lit8 v7, v5, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v8, v8, v6

    aput v8, p2, v7

    add-int/lit8 v7, v5, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v9, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v9, v6

    aget v8, v8, v9

    aput v8, p2, v7

    add-int/lit8 v5, v5, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    aget v6, v7, v6

    aput v6, p2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    :cond_a9
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_13

    :cond_ad
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    :cond_b1
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ne v0, v2, :cond_211

    move v0, v1

    :goto_b6
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v2, :cond_211

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int v3, v0, v2

    move v2, v1

    :goto_bf
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v4, :cond_db

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v6, p2, v4

    aput v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v6, v2

    add-int/lit8 v4, v4, 0x1

    aget v4, p2, v4

    aput v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_bf

    :cond_db
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v2, v4, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    invoke-virtual {v2, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    move v2, v1

    :goto_ec
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v4, :cond_108

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v5, v5, v2

    aput v5, p2, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v6, v2

    aget v5, v5, v6

    aput v5, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_ec

    :cond_108
    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :cond_10b
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-le v0, v2, :cond_1b7

    move v0, v1

    :goto_110
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v2, :cond_211

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int v4, v0, v2

    move v2, v1

    :goto_119
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v2, v3, :cond_1b3

    move v3, v1

    :goto_11e
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v3, v5, :cond_153

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v8, p2, v5

    aput v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    add-int/lit8 v8, v5, 0x1

    aget v8, p2, v8

    aput v8, v7, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v8, v6

    add-int/lit8 v9, v5, 0x2

    aget v9, p2, v9

    aput v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x3

    aget v5, p2, v5

    aput v5, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_11e

    :cond_153
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v3, v5, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    invoke-virtual {v3, v5, v6, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v5, v6, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v3, v5, v6, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    move v3, v1

    :goto_17a
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v3, v5, :cond_1af

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v7, v7, v3

    aput v7, p2, v5

    add-int/lit8 v7, v5, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v8, v8, v6

    aput v8, p2, v7

    add-int/lit8 v7, v5, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v9, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v9, v6

    aget v8, v8, v9

    aput v8, p2, v7

    add-int/lit8 v5, v5, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    aget v6, v7, v6

    aput v6, p2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_17a

    :cond_1af
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_119

    :cond_1b3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_110

    :cond_1b7
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ne v0, v2, :cond_211

    move v0, v1

    :goto_1bc
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v2, :cond_211

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int v3, v0, v2

    move v2, v1

    :goto_1c5
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v4, :cond_1e1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v6, p2, v4

    aput v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v6, v2

    add-int/lit8 v4, v4, 0x1

    aget v4, p2, v4

    aput v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c5

    :cond_1e1
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v2, v4, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    invoke-virtual {v2, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    move v2, v1

    :goto_1f2
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v4, :cond_20e

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v5, v5, v2

    aput v5, p2, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v6, v2

    aget v5, v5, v6

    aput v5, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f2

    :cond_20e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1bc

    :cond_211
    return-void
.end method

.method private ddxt3db_sub(I[[[FZ)V
    .registers 13

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_11e

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-le v0, v2, :cond_c4

    move v0, v1

    :goto_b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v2, :cond_236

    move v2, v1

    :goto_10
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v2, v3, :cond_c0

    move v3, v1

    :goto_15
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v3, v4, :cond_55

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    aget v6, v6, v2

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v6, v4

    aget-object v7, p2, v3

    aget-object v7, v7, v0

    add-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    add-int/lit8 v7, v2, 0x3

    aget v6, v6, v7

    aput v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_55
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v3, v4, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v5, v5, 0x3

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    move v3, v1

    :goto_7c
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v3, v4, :cond_bc

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v4, v3

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v6, v6, v3

    aput v6, v5, v2

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v7, v7, v4

    aput v7, v5, v6

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v2, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v8, v4

    aget v7, v7, v8

    aput v7, v5, v6

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v2, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    aget v4, v7, v4

    aput v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    :cond_bc
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_10

    :cond_c0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_c4
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ne v0, v2, :cond_236

    move v0, v1

    :goto_c9
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v2, :cond_236

    move v2, v1

    :goto_ce
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v3, :cond_ec

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget-object v4, p2, v2

    aget-object v4, v4, v0

    aget v4, v4, v1

    aput v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v4, v2

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_ce

    :cond_ec
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    move v2, v1

    :goto_fd
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v3, :cond_11b

    aget-object v3, p2, v2

    aget-object v3, v3, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v4, v4, v2

    aput v4, v3, v1

    aget-object v3, p2, v2

    aget-object v3, v3, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v5, v2

    aget v4, v4, v5

    aput v4, v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_fd

    :cond_11b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c9

    :cond_11e
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-le v0, v2, :cond_1dc

    move v0, v1

    :goto_123
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v2, :cond_236

    move v2, v1

    :goto_128
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v2, v3, :cond_1d8

    move v3, v1

    :goto_12d
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v3, v4, :cond_16d

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    aget v6, v6, v2

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v6, v4

    aget-object v7, p2, v3

    aget-object v7, v7, v0

    add-int/lit8 v8, v2, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    add-int/lit8 v7, v2, 0x3

    aget v6, v6, v7

    aput v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_12d

    :cond_16d
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v3, v4, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v5, v5, 0x3

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    move v3, v1

    :goto_194
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v3, v4, :cond_1d4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v4, v3

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v6, v6, v3

    aput v6, v5, v2

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v7, v7, v4

    aput v7, v5, v6

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v2, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v8, v4

    aget v7, v7, v8

    aput v7, v5, v6

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v2, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    aget v4, v7, v4

    aput v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_194

    :cond_1d4
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_128

    :cond_1d8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_123

    :cond_1dc
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ne v0, v2, :cond_236

    move v0, v1

    :goto_1e1
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v2, :cond_236

    move v2, v1

    :goto_1e6
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v3, :cond_204

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget-object v4, p2, v2

    aget-object v4, v4, v0

    aget v4, v4, v1

    aput v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v4, v2

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e6

    :cond_204
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    move v2, v1

    :goto_215
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v3, :cond_233

    aget-object v3, p2, v2

    aget-object v3, v3, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    aget v4, v4, v2

    aput v4, v3, v1

    aget-object v3, p2, v2

    aget-object v3, v3, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    add-int/2addr v5, v2

    aget v4, v4, v5

    aput v4, v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_215

    :cond_233
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e1

    :cond_236
    return-void
.end method

.method private ddxt3db_subth(I[FZ)V
    .registers 14

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-le v0, v1, :cond_2f

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    :goto_a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    shr-int/lit8 v0, v0, 0x1

    move v8, v0

    :goto_16
    new-array v9, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_34

    mul-int v5, v8, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$15;

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$15;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;IIII[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2f
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v4

    goto :goto_a

    :cond_34
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void

    :cond_38
    move v8, v0

    goto :goto_16
.end method

.method private ddxt3db_subth(I[[[FZ)V
    .registers 14

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-le v0, v1, :cond_2f

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    :goto_a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    shr-int/lit8 v0, v0, 0x1

    move v8, v0

    :goto_16
    new-array v9, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_34

    mul-int v5, v8, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$16;

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$16;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;IIII[[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2f
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v4

    goto :goto_a

    :cond_34
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void

    :cond_38
    move v8, v0

    goto :goto_16
.end method


# virtual methods
.method public forward([FZ)V
    .registers 14

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_51

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->oldNthreads:I

    if-eq v8, v0, :cond_3d

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v1, :cond_1d

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    :cond_1d
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    if-le v8, v3, :cond_2a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    mul-int/2addr v0, v8

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    :cond_2a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    :cond_35
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iput v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->oldNthreads:I

    :cond_3d
    if-le v8, v3, :cond_4a

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->useThreads:Z

    if-eqz v0, :cond_4a

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3da_subth(I[FZ)V

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3db_subth(I[FZ)V

    :cond_49
    :goto_49
    return-void

    :cond_4a
    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3da_sub(I[FZ)V

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3db_sub(I[FZ)V

    goto :goto_49

    :cond_51
    if-le v8, v3, :cond_d6

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->useThreads:Z

    if-eqz v0, :cond_d6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-lt v0, v8, :cond_d6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-lt v0, v8, :cond_d6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-lt v0, v8, :cond_d6

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    div-int v10, v0, v8

    move v7, v6

    :goto_6a
    if-ge v7, v8, :cond_89

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_86

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    :goto_74
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$1;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$1;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;II[FZ)V

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

    move v7, v6

    :goto_8d
    if-ge v7, v8, :cond_ac

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_a9

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    :goto_97
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$2;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$2;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;II[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_8d

    :cond_a9
    add-int v3, v2, v10

    goto :goto_97

    :cond_ac
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    div-int v7, v0, v8

    :goto_b3
    if-ge v6, v8, :cond_d1

    mul-int v2, v6, v7

    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_ce

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    :goto_bd
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$3;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$3;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;II[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b3

    :cond_ce
    add-int v3, v2, v7

    goto :goto_bd

    :cond_d1
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto/16 :goto_49

    :cond_d6
    move v0, v6

    :goto_d7
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v0, v1, :cond_f3

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int v2, v0, v1

    move v1, v6

    :goto_e0
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v1, v3, :cond_f0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstColumns:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-virtual {v3, p1, v4, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e0

    :cond_f0
    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    :cond_f3
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    new-array v3, v0, [F

    move v0, v6

    :goto_f8
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v0, v1, :cond_132

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int v4, v0, v1

    move v1, v6

    :goto_101
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v1, v2, :cond_12f

    move v2, v6

    :goto_106
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v5, :cond_116

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    aget v5, p1, v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_106

    :cond_116
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FZ)V

    move v2, v6

    :goto_11c
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v5, :cond_12c

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    aget v7, v3, v2

    aput v7, p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_11c

    :cond_12c
    add-int/lit8 v1, v1, 0x1

    goto :goto_101

    :cond_12f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f8

    :cond_132
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    new-array v3, v0, [F

    move v0, v6

    :goto_137
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v1, :cond_49

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int v4, v0, v1

    move v1, v6

    :goto_140
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v1, v2, :cond_16e

    move v2, v6

    :goto_145
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v5, :cond_155

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    aget v5, p1, v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_145

    :cond_155
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FZ)V

    move v2, v6

    :goto_15b
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v5, :cond_16b

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    aget v7, v3, v2

    aput v7, p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_15b

    :cond_16b
    add-int/lit8 v1, v1, 0x1

    goto :goto_140

    :cond_16e
    add-int/lit8 v0, v0, 0x1

    goto :goto_137
.end method

.method public forward([[[FZ)V
    .registers 14

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_51

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->oldNthreads:I

    if-eq v8, v0, :cond_3d

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v1, :cond_1d

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    :cond_1d
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    if-le v8, v3, :cond_2a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    mul-int/2addr v0, v8

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    :cond_2a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    :cond_35
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iput v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->oldNthreads:I

    :cond_3d
    if-le v8, v3, :cond_4a

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->useThreads:Z

    if-eqz v0, :cond_4a

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3da_subth(I[[[FZ)V

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3db_subth(I[[[FZ)V

    :cond_49
    :goto_49
    return-void

    :cond_4a
    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3da_sub(I[[[FZ)V

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3db_sub(I[[[FZ)V

    goto :goto_49

    :cond_51
    if-le v8, v3, :cond_d6

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->useThreads:Z

    if-eqz v0, :cond_d6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-lt v0, v8, :cond_d6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-lt v0, v8, :cond_d6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-lt v0, v8, :cond_d6

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    div-int v10, v0, v8

    move v7, v6

    :goto_6a
    if-ge v7, v8, :cond_89

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_86

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    :goto_74
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$4;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$4;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;II[[[FZ)V

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

    move v7, v6

    :goto_8d
    if-ge v7, v8, :cond_ac

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_a9

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    :goto_97
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$5;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$5;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;II[[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_8d

    :cond_a9
    add-int v3, v2, v10

    goto :goto_97

    :cond_ac
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    div-int v7, v0, v8

    :goto_b3
    if-ge v6, v8, :cond_d1

    mul-int v2, v6, v7

    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_ce

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    :goto_bd
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$6;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$6;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;II[[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b3

    :cond_ce
    add-int v3, v2, v7

    goto :goto_bd

    :cond_d1
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto/16 :goto_49

    :cond_d6
    move v0, v6

    :goto_d7
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v0, v1, :cond_ef

    move v1, v6

    :goto_dc
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v1, v2, :cond_ec

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstColumns:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    aget-object v3, p1, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    :cond_ec
    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    :cond_ef
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    new-array v3, v0, [F

    move v0, v6

    :goto_f4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v0, v1, :cond_128

    move v1, v6

    :goto_f9
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v1, v2, :cond_125

    move v2, v6

    :goto_fe
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v4, :cond_10d

    aget-object v4, p1, v0

    aget-object v4, v4, v2

    aget v4, v4, v1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_fe

    :cond_10d
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FZ)V

    move v2, v6

    :goto_113
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v4, :cond_122

    aget-object v4, p1, v0

    aget-object v4, v4, v2

    aget v5, v3, v2

    aput v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_113

    :cond_122
    add-int/lit8 v1, v1, 0x1

    goto :goto_f9

    :cond_125
    add-int/lit8 v0, v0, 0x1

    goto :goto_f4

    :cond_128
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    new-array v3, v0, [F

    move v0, v6

    :goto_12d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v1, :cond_49

    move v1, v6

    :goto_132
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v1, v2, :cond_15e

    move v2, v6

    :goto_137
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v4, :cond_146

    aget-object v4, p1, v2

    aget-object v4, v4, v0

    aget v4, v4, v1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_137

    :cond_146
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FZ)V

    move v2, v6

    :goto_14c
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v4, :cond_15b

    aget-object v4, p1, v2

    aget-object v4, v4, v0

    aget v5, v3, v2

    aput v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_14c

    :cond_15b
    add-int/lit8 v1, v1, 0x1

    goto :goto_132

    :cond_15e
    add-int/lit8 v0, v0, 0x1

    goto :goto_12d
.end method

.method public inverse([FZ)V
    .registers 14

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_50

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->oldNthreads:I

    if-eq v8, v0, :cond_3c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v1, :cond_1c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    :cond_1c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    if-le v8, v2, :cond_29

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    mul-int/2addr v0, v8

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    :cond_29
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    :cond_34
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iput v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->oldNthreads:I

    :cond_3c
    if-le v8, v2, :cond_49

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->useThreads:Z

    if-eqz v0, :cond_49

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3da_subth(I[FZ)V

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3db_subth(I[FZ)V

    :cond_48
    :goto_48
    return-void

    :cond_49
    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3da_sub(I[FZ)V

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3db_sub(I[FZ)V

    goto :goto_48

    :cond_50
    if-le v8, v2, :cond_d5

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->useThreads:Z

    if-eqz v0, :cond_d5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-lt v0, v8, :cond_d5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-lt v0, v8, :cond_d5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-lt v0, v8, :cond_d5

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    div-int v10, v0, v8

    move v7, v6

    :goto_69
    if-ge v7, v8, :cond_88

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_85

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    :goto_73
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$7;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$7;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;II[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_69

    :cond_85
    add-int v3, v2, v10

    goto :goto_73

    :cond_88
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move v7, v6

    :goto_8c
    if-ge v7, v8, :cond_ab

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_a8

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    :goto_96
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$8;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$8;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;II[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_8c

    :cond_a8
    add-int v3, v2, v10

    goto :goto_96

    :cond_ab
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    div-int v7, v0, v8

    :goto_b2
    if-ge v6, v8, :cond_d0

    mul-int v2, v6, v7

    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_cd

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    :goto_bc
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$9;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$9;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;II[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b2

    :cond_cd
    add-int v3, v2, v7

    goto :goto_bc

    :cond_d0
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto/16 :goto_48

    :cond_d5
    move v0, v6

    :goto_d6
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v0, v1, :cond_f2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int v2, v0, v1

    move v1, v6

    :goto_df
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v1, v3, :cond_ef

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstColumns:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-virtual {v3, p1, v4, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_df

    :cond_ef
    add-int/lit8 v0, v0, 0x1

    goto :goto_d6

    :cond_f2
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    new-array v3, v0, [F

    move v0, v6

    :goto_f7
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v0, v1, :cond_131

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int v4, v0, v1

    move v1, v6

    :goto_100
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v1, v2, :cond_12e

    move v2, v6

    :goto_105
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v5, :cond_115

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    aget v5, p1, v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_105

    :cond_115
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FZ)V

    move v2, v6

    :goto_11b
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v5, :cond_12b

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    aget v7, v3, v2

    aput v7, p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_11b

    :cond_12b
    add-int/lit8 v1, v1, 0x1

    goto :goto_100

    :cond_12e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f7

    :cond_131
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    new-array v3, v0, [F

    move v0, v6

    :goto_136
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v1, :cond_48

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rowStride:I

    mul-int v4, v0, v1

    move v1, v6

    :goto_13f
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v1, v2, :cond_16d

    move v2, v6

    :goto_144
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v5, :cond_154

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    aget v5, p1, v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_144

    :cond_154
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FZ)V

    move v2, v6

    :goto_15a
    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v5, :cond_16a

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->sliceStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    aget v7, v3, v2

    aput v7, p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_15a

    :cond_16a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13f

    :cond_16d
    add-int/lit8 v0, v0, 0x1

    goto :goto_136
.end method

.method public inverse([[[FZ)V
    .registers 14

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_50

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->oldNthreads:I

    if-eq v8, v0, :cond_3c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v1, :cond_1c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    :cond_1c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    if-le v8, v2, :cond_29

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    mul-int/2addr v0, v8

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    :cond_29
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    :cond_34
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->nt:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->t:[F

    iput v8, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->oldNthreads:I

    :cond_3c
    if-le v8, v2, :cond_49

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->useThreads:Z

    if-eqz v0, :cond_49

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3da_subth(I[[[FZ)V

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3db_subth(I[[[FZ)V

    :cond_48
    :goto_48
    return-void

    :cond_49
    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3da_sub(I[[[FZ)V

    invoke-direct {p0, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->ddxt3db_sub(I[[[FZ)V

    goto :goto_48

    :cond_50
    if-le v8, v2, :cond_d5

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->useThreads:Z

    if-eqz v0, :cond_d5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-lt v0, v8, :cond_d5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-lt v0, v8, :cond_d5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-lt v0, v8, :cond_d5

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    div-int v10, v0, v8

    move v7, v6

    :goto_69
    if-ge v7, v8, :cond_88

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_85

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    :goto_73
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$10;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$10;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;II[[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_69

    :cond_85
    add-int v3, v2, v10

    goto :goto_73

    :cond_88
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move v7, v6

    :goto_8c
    if-ge v7, v8, :cond_ab

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_a8

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    :goto_96
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$11;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$11;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;II[[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_8c

    :cond_a8
    add-int v3, v2, v10

    goto :goto_96

    :cond_ab
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    div-int v7, v0, v8

    :goto_b2
    if-ge v6, v8, :cond_d0

    mul-int v2, v6, v7

    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_cd

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    :goto_bc
    new-instance v0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$12;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D$12;-><init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;II[[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b2

    :cond_cd
    add-int v3, v2, v7

    goto :goto_bc

    :cond_d0
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto/16 :goto_48

    :cond_d5
    move v0, v6

    :goto_d6
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v0, v1, :cond_ee

    move v1, v6

    :goto_db
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v1, v2, :cond_eb

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstColumns:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    aget-object v3, p1, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_db

    :cond_eb
    add-int/lit8 v0, v0, 0x1

    goto :goto_d6

    :cond_ee
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    new-array v3, v0, [F

    move v0, v6

    :goto_f3
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v0, v1, :cond_127

    move v1, v6

    :goto_f8
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v1, v2, :cond_124

    move v2, v6

    :goto_fd
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v4, :cond_10c

    aget-object v4, p1, v0

    aget-object v4, v4, v2

    aget v4, v4, v1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_fd

    :cond_10c
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstRows:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FZ)V

    move v2, v6

    :goto_112
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v2, v4, :cond_121

    aget-object v4, p1, v0

    aget-object v4, v4, v2

    aget v5, v3, v2

    aput v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_112

    :cond_121
    add-int/lit8 v1, v1, 0x1

    goto :goto_f8

    :cond_124
    add-int/lit8 v0, v0, 0x1

    goto :goto_f3

    :cond_127
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    new-array v3, v0, [F

    move v0, v6

    :goto_12c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->rows:I

    if-ge v0, v1, :cond_48

    move v1, v6

    :goto_131
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->columns:I

    if-ge v1, v2, :cond_15d

    move v2, v6

    :goto_136
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v4, :cond_145

    aget-object v4, p1, v2

    aget-object v4, v4, v0

    aget v4, v4, v1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_136

    :cond_145
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->dstSlices:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FZ)V

    move v2, v6

    :goto_14b
    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_3D;->slices:I

    if-ge v2, v4, :cond_15a

    aget-object v4, p1, v2

    aget-object v4, v4, v0

    aget v5, v3, v2

    aput v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_14b

    :cond_15a
    add-int/lit8 v1, v1, 0x1

    goto :goto_131

    :cond_15d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12c
.end method
