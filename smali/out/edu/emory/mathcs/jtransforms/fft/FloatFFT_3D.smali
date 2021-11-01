.class public Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;
.super Ljava/lang/Object;


# instance fields
.field private columns:I

.field private fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

.field private fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

.field private fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

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
.method public strictfp constructor <init>(III)V
    .registers 8

    const/4 v3, 0x4

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    iput-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-le p1, v2, :cond_10

    if-le p2, v2, :cond_10

    if-gt p3, v2, :cond_18

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slices, rows and columns must be greater than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int v0, p2, p3

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v0, p1, p2

    mul-int/2addr v0, p3

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_3D()I

    move-result v1

    if-lt v0, v1, :cond_2f

    iput-boolean v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    :cond_2f
    invoke-static {p1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-static {p2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-static {p3}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_72

    iput-boolean v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    if-ge v0, p2, :cond_51

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_51
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    if-le v0, v2, :cond_62

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_62
    mul-int/lit8 v0, p3, 0x2

    if-ne v0, v3, :cond_86

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_6c
    :goto_6c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    :cond_72
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    if-ne p1, p2, :cond_91

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    :goto_7f
    if-ne p1, p3, :cond_99

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    :goto_85
    return-void

    :cond_86
    mul-int/lit8 v0, p3, 0x2

    if-ge v0, v3, :cond_6c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    goto :goto_6c

    :cond_91
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-direct {v0, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    goto :goto_7f

    :cond_99
    if-ne p2, p3, :cond_a0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    goto :goto_85

    :cond_a0
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-direct {v0, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    goto :goto_85
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    return v0
.end method

.method static synthetic access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    return v0
.end method

.method static synthetic access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    return v0
.end method

.method static synthetic access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    return-object v0
.end method

.method static synthetic access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    return v0
.end method

.method static synthetic access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    return-object v0
.end method

.method static synthetic access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    return v0
.end method

.method static synthetic access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    return-object v0
.end method

.method static synthetic access$800(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)[F
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    return-object v0
.end method

.method private strictfp cdft3db_sub(I[FZ)V
    .registers 16

    const/4 v3, 0x2

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1f8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-le v0, v2, :cond_114

    move v0, v1

    :goto_b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v2, :cond_3ea

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v4, v0, v2

    move v2, v1

    :goto_14
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v3, :cond_110

    move v3, v1

    :goto_19
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v5, :cond_7e

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    mul-int/lit8 v6, v3, 0x2

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v11, p2, v5

    aput v11, v10, v6

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v11, v5, 0x1

    aget v11, p2, v11

    aput v11, v10, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v10, v5, 0x2

    aget v10, p2, v10

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v10, v5, 0x3

    aget v10, p2, v10

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v5, 0x4

    aget v7, p2, v7

    aput v7, v6, v8

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v8, 0x1

    add-int/lit8 v8, v5, 0x5

    aget v8, p2, v8

    aput v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v5, 0x6

    aget v7, p2, v7

    aput v7, v6, v9

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v9, 0x1

    add-int/lit8 v5, v5, 0x7

    aget v5, p2, v5

    aput v5, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_7e
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    invoke-virtual {v3, v5, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x4

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x6

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v3, v1

    :goto_a7
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v5, :cond_10c

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    mul-int/lit8 v6, v3, 0x2

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v10, v10, v6

    aput v10, p2, v5

    add-int/lit8 v10, v5, 0x1

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v6, v11, v6

    aput v6, p2, v10

    add-int/lit8 v6, v5, 0x2

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v10, v10, v7

    aput v10, p2, v6

    add-int/lit8 v6, v5, 0x3

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v7, 0x1

    aget v7, v10, v7

    aput v7, p2, v6

    add-int/lit8 v6, v5, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, v7, v8

    aput v7, p2, v6

    add-int/lit8 v6, v5, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    aput v7, p2, v6

    add-int/lit8 v6, v5, 0x6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, v7, v9

    aput v7, p2, v6

    add-int/lit8 v5, v5, 0x7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v9, 0x1

    aget v6, v6, v7

    aput v6, p2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_a7

    :cond_10c
    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_14

    :cond_110
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_114
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v0, v2, :cond_1a5

    move v0, v1

    :goto_119
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v2, :cond_3ea

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v3, v0, v2

    move v2, v1

    :goto_122
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v4, :cond_158

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v8, p2, v4

    aput v8, v7, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v4, 0x1

    aget v8, p2, v8

    aput v8, v7, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v4, 0x2

    aget v7, p2, v7

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x3

    aget v4, p2, v4

    aput v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_122

    :cond_158
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    invoke-virtual {v2, v4, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v2, v1

    :goto_16b
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v4, :cond_1a1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, v7, v5

    aput v7, p2, v4

    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v8, v5

    aput v5, p2, v7

    add-int/lit8 v5, v4, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, v7, v6

    aput v7, p2, v5

    add-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_16b

    :cond_1a1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_119

    :cond_1a5
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v0, v3, :cond_3ea

    move v0, v1

    :goto_1aa
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v2, :cond_3ea

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v3, v0, v2

    move v2, v1

    :goto_1b3
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v4, :cond_1d0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    mul-int/lit8 v5, v2, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, p2, v4

    aput v7, v6, v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v4, p2, v4

    aput v4, v6, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b3

    :cond_1d0
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    invoke-virtual {v2, v4, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v2, v1

    :goto_1d8
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v4, :cond_1f5

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    mul-int/lit8 v5, v2, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v5

    aput v6, p2, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v6, v5

    aput v5, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d8

    :cond_1f5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1aa

    :cond_1f8
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-le v0, v2, :cond_306

    move v0, v1

    :goto_1fd
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v2, :cond_3ea

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v4, v0, v2

    move v2, v1

    :goto_206
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v3, :cond_302

    move v3, v1

    :goto_20b
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v5, :cond_270

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    mul-int/lit8 v6, v3, 0x2

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v11, p2, v5

    aput v11, v10, v6

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v11, v5, 0x1

    aget v11, p2, v11

    aput v11, v10, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v10, v5, 0x2

    aget v10, p2, v10

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v10, v5, 0x3

    aget v10, p2, v10

    aput v10, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v5, 0x4

    aget v7, p2, v7

    aput v7, v6, v8

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v8, 0x1

    add-int/lit8 v8, v5, 0x5

    aget v8, p2, v8

    aput v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v5, 0x6

    aget v7, p2, v7

    aput v7, v6, v9

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v9, 0x1

    add-int/lit8 v5, v5, 0x7

    aget v5, p2, v5

    aput v5, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_20b

    :cond_270
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    invoke-virtual {v3, v5, v1, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v5, v6, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x4

    invoke-virtual {v3, v5, v6, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x6

    invoke-virtual {v3, v5, v6, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v3, v1

    :goto_299
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v5, :cond_2fe

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    mul-int/lit8 v6, v3, 0x2

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v10, v10, v6

    aput v10, p2, v5

    add-int/lit8 v10, v5, 0x1

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v6, v11, v6

    aput v6, p2, v10

    add-int/lit8 v6, v5, 0x2

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v10, v10, v7

    aput v10, p2, v6

    add-int/lit8 v6, v5, 0x3

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v7, 0x1

    aget v7, v10, v7

    aput v7, p2, v6

    add-int/lit8 v6, v5, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, v7, v8

    aput v7, p2, v6

    add-int/lit8 v6, v5, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    aput v7, p2, v6

    add-int/lit8 v6, v5, 0x6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, v7, v9

    aput v7, p2, v6

    add-int/lit8 v5, v5, 0x7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v9, 0x1

    aget v6, v6, v7

    aput v6, p2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_299

    :cond_2fe
    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_206

    :cond_302
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1fd

    :cond_306
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v0, v2, :cond_397

    move v0, v1

    :goto_30b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v2, :cond_3ea

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v3, v0, v2

    move v2, v1

    :goto_314
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v4, :cond_34a

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v8, p2, v4

    aput v8, v7, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v4, 0x1

    aget v8, p2, v8

    aput v8, v7, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v4, 0x2

    aget v7, p2, v7

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x3

    aget v4, p2, v4

    aput v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_314

    :cond_34a
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    invoke-virtual {v2, v4, v1, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v2, v1

    :goto_35d
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v4, :cond_393

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, v7, v5

    aput v7, p2, v4

    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v8, v5

    aput v5, p2, v7

    add-int/lit8 v5, v4, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, v7, v6

    aput v7, p2, v5

    add-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_35d

    :cond_393
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_30b

    :cond_397
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v0, v3, :cond_3ea

    move v0, v1

    :goto_39c
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v2, :cond_3ea

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v3, v0, v2

    move v2, v1

    :goto_3a5
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v4, :cond_3c2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    mul-int/lit8 v5, v2, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, p2, v4

    aput v7, v6, v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v4, p2, v4

    aput v4, v6, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a5

    :cond_3c2
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    invoke-virtual {v2, v4, v1, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v2, v1

    :goto_3ca
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v4, :cond_3e7

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    mul-int/lit8 v5, v2, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v5

    aput v6, p2, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v6, v5

    aput v5, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3ca

    :cond_3e7
    add-int/lit8 v0, v0, 0x1

    goto :goto_39c

    :cond_3ea
    return-void
.end method

.method private strictfp cdft3db_sub(I[[[FZ)V
    .registers 15

    const/4 v2, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_234

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-le v0, v2, :cond_148

    move v0, v1

    :goto_d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v2, :cond_460

    move v2, v1

    :goto_12
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v3, :cond_144

    move v3, v1

    :goto_17
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v4, :cond_97

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v9, p2, v3

    aget-object v9, v9, v0

    aget v9, v9, v2

    aput v9, v8, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget-object v9, p2, v3

    aget-object v9, v9, v0

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    aput v9, v8, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v2, 0x2

    aget v8, v8, v9

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v2, 0x3

    aget v8, v8, v9

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    add-int/lit8 v8, v2, 0x4

    aget v5, v5, v8

    aput v5, v4, v6

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v6, 0x1

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    add-int/lit8 v8, v2, 0x5

    aget v6, v6, v8

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v2, 0x6

    aget v5, v5, v6

    aput v5, v4, v7

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v7, 0x1

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    add-int/lit8 v7, v2, 0x7

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_97
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    invoke-virtual {v3, v4, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x6

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v3, v1

    :goto_c0
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v4, :cond_140

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v9, v9, v4

    aput v9, v8, v2

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v2, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v10, v4

    aput v4, v8, v9

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v8, v2, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v9, v9, v5

    aput v9, v4, v8

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v8, v2, 0x3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v9, v5

    aput v5, v4, v8

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v8, v8, v6

    aput v8, v4, v5

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v6, v8, v6

    aput v6, v4, v5

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v7

    aput v6, v4, v5

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_c0

    :cond_140
    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_12

    :cond_144
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    :cond_148
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v0, v2, :cond_1e1

    move v0, v1

    :goto_14d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v2, :cond_460

    move v2, v1

    :goto_152
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v3, :cond_18e

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v6, p2, v2

    aget-object v6, v6, v0

    aget v6, v6, v1

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v6, p2, v2

    aget-object v6, v6, v0

    aget v6, v6, v7

    aput v6, v5, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget v5, v5, v8

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget v5, v5, v9

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_152

    :cond_18e
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    invoke-virtual {v2, v3, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v2, v1

    :goto_1a1
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v3, :cond_1dd

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v3

    aput v6, v5, v1

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v6, v3

    aput v3, v5, v7

    aget-object v3, p2, v2

    aget-object v3, v3, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v4

    aput v5, v3, v8

    aget-object v3, p2, v2

    aget-object v3, v3, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v5, v4

    aput v4, v3, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a1

    :cond_1dd
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_14d

    :cond_1e1
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v0, v8, :cond_460

    move v0, v1

    :goto_1e6
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v2, :cond_460

    move v2, v1

    :goto_1eb
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v3, :cond_20a

    mul-int/lit8 v3, v2, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget v5, v5, v1

    aput v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget v5, v5, v7

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1eb

    :cond_20a
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    invoke-virtual {v2, v3, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v2, v1

    :goto_212
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v3, :cond_231

    mul-int/lit8 v3, v2, 0x2

    aget-object v4, p2, v2

    aget-object v4, v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v3

    aput v5, v4, v1

    aget-object v4, p2, v2

    aget-object v4, v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    aput v3, v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_212

    :cond_231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e6

    :cond_234
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-le v0, v2, :cond_374

    move v0, v1

    :goto_239
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v2, :cond_460

    move v2, v1

    :goto_23e
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v3, :cond_370

    move v3, v1

    :goto_243
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v4, :cond_2c3

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v9, p2, v3

    aget-object v9, v9, v0

    aget v9, v9, v2

    aput v9, v8, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget-object v9, p2, v3

    aget-object v9, v9, v0

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    aput v9, v8, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v2, 0x2

    aget v8, v8, v9

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v2, 0x3

    aget v8, v8, v9

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    add-int/lit8 v8, v2, 0x4

    aget v5, v5, v8

    aput v5, v4, v6

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v6, 0x1

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    add-int/lit8 v8, v2, 0x5

    aget v6, v6, v8

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v2, 0x6

    aget v5, v5, v6

    aput v5, v4, v7

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v7, 0x1

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    add-int/lit8 v7, v2, 0x7

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_243

    :cond_2c3
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    invoke-virtual {v3, v4, v1, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x6

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v3, v1

    :goto_2ec
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v4, :cond_36c

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v9, v9, v4

    aput v9, v8, v2

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v2, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v10, v4

    aput v4, v8, v9

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v8, v2, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v9, v9, v5

    aput v9, v4, v8

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v8, v2, 0x3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v9, v5

    aput v5, v4, v8

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v8, v8, v6

    aput v8, v4, v5

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v6, v8, v6

    aput v6, v4, v5

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v7

    aput v6, v4, v5

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2ec

    :cond_36c
    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_23e

    :cond_370
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_239

    :cond_374
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v0, v2, :cond_40d

    move v0, v1

    :goto_379
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v2, :cond_460

    move v2, v1

    :goto_37e
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v3, :cond_3ba

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v6, p2, v2

    aget-object v6, v6, v0

    aget v6, v6, v1

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v6, p2, v2

    aget-object v6, v6, v0

    aget v6, v6, v7

    aput v6, v5, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget v5, v5, v8

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget v5, v5, v9

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_37e

    :cond_3ba
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v2, v1

    :goto_3cd
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v3, :cond_409

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v3

    aput v6, v5, v1

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v6, v3

    aput v3, v5, v7

    aget-object v3, p2, v2

    aget-object v3, v3, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v4

    aput v5, v3, v8

    aget-object v3, p2, v2

    aget-object v3, v3, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v5, v4

    aput v4, v3, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_3cd

    :cond_409
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_379

    :cond_40d
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v0, v8, :cond_460

    move v0, v1

    :goto_412
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v2, :cond_460

    move v2, v1

    :goto_417
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v3, :cond_436

    mul-int/lit8 v3, v2, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget v5, v5, v1

    aput v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget v5, v5, v7

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_417

    :cond_436
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v2, v1

    :goto_43e
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v3, :cond_45d

    mul-int/lit8 v3, v2, 0x2

    aget-object v4, p2, v2

    aget-object v4, v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v3

    aput v5, v4, v1

    aget-object v4, p2, v2

    aget-object v4, v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    aput v3, v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_43e

    :cond_45d
    add-int/lit8 v0, v0, 0x1

    goto :goto_412

    :cond_460
    return-void
.end method

.method private strictfp cdft3db_subth(I[FZ)V
    .registers 14

    const/4 v2, 0x4

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v2, :cond_2f

    shr-int/lit8 v0, v0, 0x1

    move v8, v0

    :goto_16
    new-array v9, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_37

    mul-int v5, v8, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$37;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_3b

    shr-int/lit8 v0, v0, 0x2

    move v8, v0

    goto :goto_16

    :cond_37
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void

    :cond_3b
    move v8, v0

    goto :goto_16
.end method

.method private strictfp cdft3db_subth(I[[[FZ)V
    .registers 14

    const/4 v2, 0x4

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v2, :cond_2f

    shr-int/lit8 v0, v0, 0x1

    move v8, v0

    :goto_16
    new-array v9, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_37

    mul-int v5, v8, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$38;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_3b

    shr-int/lit8 v0, v0, 0x2

    move v8, v0

    goto :goto_16

    :cond_37
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void

    :cond_3b
    move v8, v0

    goto :goto_16
.end method

.method private strictfp fillSymmetric([F)V
    .registers 21

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v6, v1, 0x2

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/lit8 v12, v1, 0x2

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int/lit8 v15, v1, 0x2

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int v5, v1, v6

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_1f
    const/4 v1, 0x1

    if-lt v3, v1, :cond_62

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v4, v3, v1

    mul-int/lit8 v7, v4, 0x2

    const/4 v1, 0x0

    :goto_2b
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_5e

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v8, v1, v2

    mul-int/lit8 v9, v8, 0x2

    const/4 v2, 0x0

    :goto_3a
    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v10, :cond_5b

    add-int v10, v4, v8

    add-int/2addr v10, v2

    add-int v11, v7, v9

    add-int/2addr v11, v2

    aget v13, p1, v10

    aput v13, p1, v11

    const/4 v13, 0x0

    aput v13, p1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    aget v13, p1, v10

    aput v13, p1, v11

    const/4 v11, 0x0

    aput v11, p1, v10

    add-int/lit8 v2, v2, 0x2

    goto :goto_3a

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_5e
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1f

    :cond_62
    const/4 v1, 0x1

    :goto_63
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_9d

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v2, v1

    mul-int v4, v2, v6

    const/4 v2, 0x0

    :goto_7b
    move-object/from16 v0, p0

    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v7, :cond_9a

    add-int v7, v3, v2

    add-int v8, v4, v2

    aget v9, p1, v7

    aput v9, p1, v8

    const/4 v9, 0x0

    aput v9, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget v9, p1, v7

    aput v9, p1, v8

    const/4 v8, 0x0

    aput v8, p1, v7

    add-int/lit8 v2, v2, 0x2

    goto :goto_7b

    :cond_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    :cond_9d
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v16

    const/4 v1, 0x1

    move/from16 v0, v16

    if-le v0, v1, :cond_1c4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v1, :cond_1c4

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    move/from16 v0, v16

    if-lt v1, v0, :cond_1c4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/util/concurrent/Future;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int v18, v1, v16

    const/4 v1, 0x0

    move v9, v1

    :goto_c2
    move/from16 v0, v16

    if-ge v9, v0, :cond_e7

    mul-int v3, v9, v18

    add-int/lit8 v1, v16, -0x1

    if-ne v9, v1, :cond_e4

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_d0
    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$42;

    move-object/from16 v2, p0

    move v7, v6

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$42;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIIII[F)V

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v9

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_c2

    :cond_e4
    add-int v4, v3, v18

    goto :goto_d0

    :cond_e7
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v1, 0x0

    :goto_eb
    move/from16 v0, v16

    if-ge v1, v0, :cond_110

    mul-int v9, v1, v18

    add-int/lit8 v2, v16, -0x1

    if-ne v1, v2, :cond_10d

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_f9
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$43;

    move-object/from16 v8, p0

    move v11, v5

    move v13, v6

    move-object/from16 v14, p1

    invoke-direct/range {v7 .. v14}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$43;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIIII[F)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v17, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_eb

    :cond_10d
    add-int v10, v9, v18

    goto :goto_f9

    :cond_110
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v1, 0x0

    :goto_114
    move/from16 v0, v16

    if-ge v1, v0, :cond_139

    mul-int v9, v1, v18

    add-int/lit8 v2, v16, -0x1

    if-ne v1, v2, :cond_136

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_122
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;

    move-object/from16 v8, p0

    move v11, v5

    move v13, v6

    move-object/from16 v14, p1

    invoke-direct/range {v7 .. v14}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$44;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIIII[F)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v17, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_114

    :cond_136
    add-int v10, v9, v18

    goto :goto_122

    :cond_139
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_13c
    const/4 v1, 0x1

    :goto_13d
    if-ge v1, v15, :cond_292

    mul-int v2, v1, v5

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v3, v1

    mul-int/2addr v3, v5

    mul-int v4, v12, v6

    add-int v7, v2, v4

    add-int/2addr v4, v3

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v8, v2

    add-int/lit8 v9, v3, 0x1

    aget v9, p1, v9

    aput v9, p1, v8

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v8, v3

    add-int/lit8 v9, v3, 0x1

    aget v9, p1, v9

    aput v9, p1, v8

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v8, v2

    add-int/lit8 v8, v8, 0x1

    aget v9, p1, v3

    neg-float v9, v9

    aput v9, p1, v8

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, 0x1

    aget v9, p1, v3

    aput v9, p1, v8

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v8, v7

    add-int/lit8 v9, v4, 0x1

    aget v9, p1, v9

    aput v9, p1, v8

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v8, v4

    add-int/lit8 v9, v4, 0x1

    aget v9, p1, v9

    aput v9, p1, v8

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x1

    aget v9, p1, v4

    neg-float v9, v9

    aput v9, p1, v8

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x1

    aget v9, p1, v4

    aput v9, p1, v8

    aget v8, p1, v2

    aput v8, p1, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    neg-float v2, v2

    aput v2, p1, v3

    aget v2, p1, v7

    aput v2, p1, v4

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v3, v7, 0x1

    aget v3, p1, v3

    neg-float v3, v3

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13d

    :cond_1c4
    const/4 v1, 0x0

    :goto_1c5
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v1, v2, :cond_214

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    rem-int/2addr v2, v3

    mul-int v4, v2, v5

    mul-int v7, v1, v5

    const/4 v2, 0x0

    :goto_1da
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_211

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v3, v2

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    rem-int/2addr v3, v8

    mul-int v8, v3, v6

    mul-int v9, v2, v6

    const/4 v3, 0x1

    :goto_1ef
    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v10, :cond_20e

    add-int v10, v4, v8

    add-int/2addr v10, v6

    sub-int/2addr v10, v3

    add-int v11, v7, v9

    add-int/2addr v11, v3

    add-int/lit8 v13, v11, 0x2

    aget v13, p1, v13

    neg-float v13, v13

    aput v13, p1, v10

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v11, 0x1

    aget v11, p1, v11

    aput v11, p1, v10

    add-int/lit8 v3, v3, 0x2

    goto :goto_1ef

    :cond_20e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1da

    :cond_211
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c5

    :cond_214
    const/4 v1, 0x0

    :goto_215
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v1, v2, :cond_25d

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    rem-int/2addr v2, v3

    mul-int v3, v2, v5

    mul-int v4, v1, v5

    const/4 v2, 0x1

    :goto_22a
    if-ge v2, v12, :cond_25a

    move-object/from16 v0, p0

    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v7, v2

    mul-int/2addr v7, v6

    add-int/2addr v7, v4

    mul-int v8, v2, v6

    add-int/2addr v8, v3

    move-object/from16 v0, p0

    iget v9, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v9, v7

    add-int/lit8 v10, v7, 0x1

    aget v11, p1, v10

    aput v11, p1, v8

    aget v10, p1, v10

    aput v10, p1, v9

    add-int/lit8 v8, v8, 0x1

    aget v10, p1, v7

    neg-float v10, v10

    aput v10, p1, v8

    add-int/lit8 v8, v9, 0x1

    aget v7, p1, v7

    aput v7, p1, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_22a

    :cond_25a
    add-int/lit8 v1, v1, 0x1

    goto :goto_215

    :cond_25d
    const/4 v1, 0x0

    :goto_25e
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v1, v2, :cond_13c

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    rem-int/2addr v2, v3

    mul-int v3, v2, v5

    mul-int v4, v1, v5

    const/4 v2, 0x1

    :goto_273
    if-ge v2, v12, :cond_28f

    move-object/from16 v0, p0

    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v7, v2

    mul-int/2addr v7, v6

    add-int/2addr v7, v3

    mul-int v8, v2, v6

    add-int/2addr v8, v4

    aget v9, p1, v8

    aput v9, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget v8, p1, v8

    neg-float v8, v8

    aput v8, p1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_273

    :cond_28f
    add-int/lit8 v1, v1, 0x1

    goto :goto_25e

    :cond_292
    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x1

    aget v2, p1, v2

    aput v2, p1, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, p1, v1

    mul-int v1, v12, v6

    mul-int v2, v15, v5

    add-int v3, v1, v2

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v4, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, p1, v5

    aput v5, p1, v4

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    aput v4, p1, v1

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v1, v2

    add-int/lit8 v4, v2, 0x1

    aget v4, p1, v4

    aput v4, p1, v1

    add-int/lit8 v1, v2, 0x1

    const/4 v4, 0x0

    aput v4, p1, v1

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v1, v3

    add-int/lit8 v4, v3, 0x1

    aget v4, p1, v4

    aput v4, p1, v1

    add-int/lit8 v1, v3, 0x1

    const/4 v4, 0x0

    aput v4, p1, v1

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    aput v2, p1, v1

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    aput v2, p1, v1

    return-void
.end method

.method private strictfp fillSymmetric([[[F)V
    .registers 14

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v4, v0, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/lit8 v7, v0, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int/lit8 v8, v0, 0x2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v9

    const/4 v0, 0x1

    if-le v9, v0, :cond_15e

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_15e

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-lt v0, v9, :cond_15e

    new-array v10, v9, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int v11, v0, v9

    const/4 v0, 0x0

    move v6, v0

    :goto_23
    if-ge v6, v9, :cond_41

    mul-int v2, v6, v11

    add-int/lit8 v0, v9, -0x1

    if-ne v6, v0, :cond_3e

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_2d
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$39;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;III[[[F)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_23

    :cond_3e
    add-int v3, v2, v11

    goto :goto_2d

    :cond_41
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_46
    if-ge v6, v9, :cond_65

    mul-int v2, v6, v11

    add-int/lit8 v0, v9, -0x1

    if-ne v6, v0, :cond_62

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_50
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;

    move-object v1, p0

    move v4, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$40;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;III[[[F)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_46

    :cond_62
    add-int v3, v2, v11

    goto :goto_50

    :cond_65
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_6a
    if-ge v6, v9, :cond_89

    mul-int v2, v6, v11

    add-int/lit8 v0, v9, -0x1

    if-ne v6, v0, :cond_86

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_74
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$41;

    move-object v1, p0

    move v4, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$41;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;III[[[F)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_6a

    :cond_86
    add-int v3, v2, v11

    goto :goto_74

    :cond_89
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_8c
    const/4 v0, 0x1

    :goto_8d
    if-ge v0, v8, :cond_233

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v1, v0

    aget-object v2, p1, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    aget-object v4, p1, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    aget-object v2, p1, v1

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    aget-object v4, p1, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    aget-object v2, p1, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p1, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    neg-float v4, v4

    aput v4, v2, v3

    aget-object v2, p1, v1

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p1, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    aget-object v2, p1, v0

    aget-object v2, v2, v7

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    aget-object v4, p1, v1

    aget-object v4, v4, v7

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    aget-object v2, p1, v1

    aget-object v2, v2, v7

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    aget-object v4, p1, v1

    aget-object v4, v4, v7

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    aget-object v2, p1, v0

    aget-object v2, v2, v7

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p1, v1

    aget-object v4, v4, v7

    const/4 v5, 0x0

    aget v4, v4, v5

    neg-float v4, v4

    aput v4, v2, v3

    aget-object v2, p1, v1

    aget-object v2, v2, v7

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p1, v1

    aget-object v4, v4, v7

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    aget-object v2, p1, v1

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v4, p1, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    aget-object v2, p1, v1

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-object v4, p1, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    neg-float v4, v4

    aput v4, v2, v3

    aget-object v2, p1, v1

    aget-object v2, v2, v7

    const/4 v3, 0x0

    aget-object v4, p1, v0

    aget-object v4, v4, v7

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    aget-object v1, p1, v1

    aget-object v1, v1, v7

    const/4 v2, 0x1

    aget-object v3, p1, v0

    aget-object v3, v3, v7

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-float v3, v3

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8d

    :cond_15e
    const/4 v0, 0x0

    :goto_15f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_1a5

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    rem-int v3, v1, v2

    const/4 v1, 0x0

    :goto_16b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_1a2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v2, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    rem-int v5, v2, v5

    const/4 v2, 0x1

    :goto_177
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v6, :cond_19f

    sub-int v6, v4, v2

    aget-object v9, p1, v3

    aget-object v9, v9, v5

    aget-object v10, p1, v0

    aget-object v10, v10, v1

    add-int/lit8 v11, v2, 0x2

    aget v10, v10, v11

    neg-float v10, v10

    aput v10, v9, v6

    aget-object v9, p1, v3

    aget-object v9, v9, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v10, p1, v0

    aget-object v10, v10, v1

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    aput v10, v9, v6

    add-int/lit8 v2, v2, 0x2

    goto :goto_177

    :cond_19f
    add-int/lit8 v1, v1, 0x1

    goto :goto_16b

    :cond_1a2
    add-int/lit8 v0, v0, 0x1

    goto :goto_15f

    :cond_1a5
    const/4 v0, 0x0

    :goto_1a6
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_1fe

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    rem-int v2, v1, v2

    const/4 v1, 0x1

    :goto_1b2
    if-ge v1, v7, :cond_1fb

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v3, v1

    aget-object v4, p1, v2

    aget-object v4, v4, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    aget-object v6, p1, v0

    aget-object v6, v6, v3

    const/4 v9, 0x1

    aget v6, v6, v9

    aput v6, v4, v5

    aget-object v4, p1, v0

    aget-object v4, v4, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    aget-object v6, p1, v0

    aget-object v6, v6, v3

    const/4 v9, 0x1

    aget v6, v6, v9

    aput v6, v4, v5

    aget-object v4, p1, v2

    aget-object v4, v4, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/lit8 v5, v5, 0x1

    aget-object v6, p1, v0

    aget-object v6, v6, v3

    const/4 v9, 0x0

    aget v6, v6, v9

    neg-float v6, v6

    aput v6, v4, v5

    aget-object v4, p1, v0

    aget-object v4, v4, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/lit8 v5, v5, 0x1

    aget-object v6, p1, v0

    aget-object v3, v6, v3

    const/4 v6, 0x0

    aget v3, v3, v6

    aput v3, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b2

    :cond_1fb
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a6

    :cond_1fe
    const/4 v0, 0x0

    :goto_1ff
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_8c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    rem-int v2, v1, v2

    const/4 v1, 0x1

    :goto_20b
    if-ge v1, v7, :cond_230

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v3, v1

    aget-object v4, p1, v2

    aget-object v4, v4, v3

    const/4 v5, 0x0

    aget-object v6, p1, v0

    aget-object v6, v6, v1

    const/4 v9, 0x0

    aget v6, v6, v9

    aput v6, v4, v5

    aget-object v4, p1, v2

    aget-object v3, v4, v3

    const/4 v4, 0x1

    aget-object v5, p1, v0

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    neg-float v5, v5

    aput v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_20b

    :cond_230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ff

    :cond_233
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    aget-object v0, v0, v7

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x0

    aget-object v2, p1, v2

    aget-object v2, v2, v7

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    aget-object v0, v0, v7

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aget-object v0, p1, v8

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    aget-object v2, p1, v8

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    aget-object v0, p1, v8

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aget-object v0, p1, v8

    aget-object v0, v0, v7

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    aget-object v2, p1, v8

    aget-object v2, v2, v7

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    aget-object v0, p1, v8

    aget-object v0, v0, v7

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aget-object v0, p1, v8

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aget-object v0, p1, v8

    aget-object v0, v0, v7

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method private strictfp mixedRadixRealForwardFull([F)V
    .registers 27

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v4, v2, 0x2

    new-array v5, v4, [F

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v20, v2, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_86

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v19, v2

    :goto_20
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/lit8 v7, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/lit8 v9, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int/lit8 v21, v2, 0x2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v22

    const/4 v2, 0x1

    move/from16 v0, v22

    if-le v0, v2, :cond_185

    move-object/from16 v0, p0

    iget-boolean v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v2, :cond_185

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_185

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    move/from16 v0, v22

    if-lt v2, v0, :cond_185

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_185

    move/from16 v0, v22

    new-array v0, v0, [Ljava/util/concurrent/Future;

    move-object/from16 v23, v0

    div-int v24, v21, v22

    const/4 v2, 0x0

    move v10, v2

    :goto_5f
    move/from16 v0, v22

    if-ge v10, v0, :cond_94

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    add-int/lit8 v2, v2, -0x1

    mul-int v3, v10, v24

    sub-int v5, v2, v3

    add-int/lit8 v2, v22, -0x1

    if-ne v10, v2, :cond_91

    add-int/lit8 v6, v21, 0x1

    :goto_73
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$21;

    move-object/from16 v3, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$21;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[FI)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v23, v10

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_5f

    :cond_86
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    move/from16 v19, v2

    goto :goto_20

    :cond_91
    sub-int v6, v5, v24

    goto :goto_73

    :cond_94
    invoke-static/range {v23 .. v23}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    add-int/lit8 v2, v21, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[[F

    const/4 v2, 0x0

    :goto_aa
    move/from16 v0, v22

    if-ge v2, v0, :cond_cb

    mul-int v12, v2, v24

    add-int/lit8 v3, v22, -0x1

    if-ne v2, v3, :cond_c8

    add-int/lit8 v13, v21, 0x1

    :goto_b6
    new-instance v10, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$22;

    move-object/from16 v11, p0

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v15}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$22;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[F[[[F)V

    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v23, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    :cond_c8
    add-int v13, v12, v24

    goto :goto_b6

    :cond_cb
    invoke-static/range {v23 .. v23}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v2, 0x0

    :goto_cf
    move/from16 v0, v22

    if-ge v2, v0, :cond_f5

    mul-int v12, v2, v24

    add-int/lit8 v3, v22, -0x1

    if-ne v2, v3, :cond_f2

    add-int/lit8 v13, v21, 0x1

    :goto_db
    new-instance v10, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$23;

    move-object/from16 v11, p0

    move v14, v7

    move-object/from16 v16, p1

    move/from16 v17, v9

    move/from16 v18, v4

    invoke-direct/range {v10 .. v18}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$23;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;III[[[F[FII)V

    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v23, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_cf

    :cond_f2
    add-int v13, v12, v24

    goto :goto_db

    :cond_f5
    invoke-static/range {v23 .. v23}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int v3, v2, v22

    const/4 v2, 0x0

    :goto_ff
    move/from16 v0, v22

    if-ge v2, v0, :cond_124

    mul-int v12, v2, v3

    add-int/lit8 v5, v22, -0x1

    if-ne v2, v5, :cond_121

    move-object/from16 v0, p0

    iget v13, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_10d
    new-instance v10, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$24;

    move-object/from16 v11, p0

    move v14, v7

    move v15, v9

    move-object/from16 v16, p1

    invoke-direct/range {v10 .. v16}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$24;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[F)V

    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v23, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_ff

    :cond_121
    add-int v13, v12, v3

    goto :goto_10d

    :cond_124
    invoke-static/range {v23 .. v23}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    div-int v3, v20, v22

    const/4 v2, 0x0

    :goto_12a
    move/from16 v0, v22

    if-ge v2, v0, :cond_14d

    mul-int v12, v2, v3

    add-int/lit8 v5, v22, -0x1

    if-ne v2, v5, :cond_14a

    move/from16 v13, v20

    :goto_136
    new-instance v10, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$25;

    move-object/from16 v11, p0

    move v14, v9

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v10 .. v16}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$25;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[F)V

    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v23, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12a

    :cond_14a
    add-int v13, v12, v3

    goto :goto_136

    :cond_14d
    invoke-static/range {v23 .. v23}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int v3, v2, v22

    const/4 v2, 0x0

    :goto_157
    move/from16 v0, v22

    if-ge v2, v0, :cond_181

    mul-int v12, v2, v3

    add-int/lit8 v5, v22, -0x1

    if-ne v2, v5, :cond_17e

    move-object/from16 v0, p0

    iget v13, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_165
    new-instance v10, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$26;

    move-object/from16 v11, p0

    move v14, v7

    move/from16 v15, v19

    move/from16 v16, v9

    move/from16 v17, v4

    move-object/from16 v18, p1

    invoke-direct/range {v10 .. v18}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$26;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIIIII[F)V

    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v23, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_157

    :cond_17e
    add-int v13, v12, v3

    goto :goto_165

    :cond_181
    invoke-static/range {v23 .. v23}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_184
    return-void

    :cond_185
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_18c
    if-ltz v3, :cond_1c5

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v6, v3, v2

    mul-int v8, v3, v7

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    add-int/lit8 v2, v2, -0x1

    :goto_19c
    if-ltz v2, :cond_1c1

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v10, v2

    add-int/2addr v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    move-object/from16 v0, p1

    invoke-static {v0, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v10, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    const/4 v10, 0x0

    mul-int v11, v2, v9

    add-int/2addr v11, v8

    move-object/from16 v0, p1

    invoke-static {v5, v10, v0, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_19c

    :cond_1c1
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_18c

    :cond_1c5
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v2, v2, 0x2

    new-array v6, v2, [F

    const/4 v2, 0x0

    :goto_1ce
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v3, :cond_224

    mul-int v8, v2, v7

    const/4 v3, 0x0

    :goto_1d7
    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v5, :cond_221

    mul-int/lit8 v10, v3, 0x2

    const/4 v5, 0x0

    :goto_1e0
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v5, v11, :cond_1fb

    mul-int/lit8 v11, v5, 0x2

    mul-int v12, v5, v9

    add-int/2addr v12, v8

    add-int/2addr v12, v10

    aget v13, p1, v12

    aput v13, v6, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v12, p1, v12

    aput v12, v6, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e0

    :cond_1fb
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v5, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    const/4 v5, 0x0

    :goto_203
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v5, v11, :cond_21e

    mul-int/lit8 v11, v5, 0x2

    mul-int v12, v5, v9

    add-int/2addr v12, v8

    add-int/2addr v12, v10

    aget v13, v6, v11

    aput v13, p1, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget v11, v6, v11

    aput v11, p1, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_203

    :cond_21e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d7

    :cond_221
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ce

    :cond_224
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v2, v2, 0x2

    new-array v6, v2, [F

    const/4 v2, 0x0

    move v5, v2

    :goto_22e
    move/from16 v0, v20

    if-ge v5, v0, :cond_283

    mul-int v8, v5, v9

    const/4 v2, 0x0

    :goto_235
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v3, :cond_27f

    mul-int/lit8 v10, v2, 0x2

    const/4 v3, 0x0

    :goto_23e
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v11, :cond_259

    mul-int/lit8 v11, v3, 0x2

    mul-int v12, v3, v7

    add-int/2addr v12, v8

    add-int/2addr v12, v10

    aget v13, p1, v12

    aput v13, v6, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v12, p1, v12

    aput v12, v6, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_23e

    :cond_259
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v3, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    const/4 v3, 0x0

    :goto_261
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v11, :cond_27c

    mul-int/lit8 v11, v3, 0x2

    mul-int v12, v3, v7

    add-int/2addr v12, v8

    add-int/2addr v12, v10

    aget v13, v6, v11

    aput v13, p1, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget v11, v6, v11

    aput v11, p1, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_261

    :cond_27c
    add-int/lit8 v2, v2, 0x1

    goto :goto_235

    :cond_27f
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_22e

    :cond_283
    const/4 v2, 0x0

    :goto_284
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v3, :cond_184

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v3, v2

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    rem-int/2addr v3, v5

    mul-int v6, v3, v7

    mul-int v8, v2, v7

    const/4 v3, 0x1

    move v5, v3

    :goto_29a
    move/from16 v0, v19

    if-ge v5, v0, :cond_2cf

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v3, v5

    mul-int/2addr v3, v9

    mul-int v10, v5, v9

    add-int v11, v6, v3

    const/4 v3, 0x0

    :goto_2a9
    move-object/from16 v0, p0

    iget v12, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v12, :cond_2cb

    mul-int/lit8 v12, v3, 0x2

    sub-int v13, v4, v12

    add-int v14, v8, v10

    add-int/2addr v12, v14

    rem-int v14, v13, v4

    add-int/2addr v14, v11

    aget v15, p1, v12

    aput v15, p1, v14

    add-int/lit8 v13, v13, 0x1

    rem-int/2addr v13, v4

    add-int/2addr v13, v11

    add-int/lit8 v12, v12, 0x1

    aget v12, p1, v12

    neg-float v12, v12

    aput v12, p1, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a9

    :cond_2cb
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_29a

    :cond_2cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_284
.end method

.method private strictfp mixedRadixRealForwardFull([[[F)V
    .registers 16

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v8, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v5, v0, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_50

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/lit8 v4, v0, 0x2

    :goto_1c
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v9

    if-le v9, v7, :cond_c5

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_c5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-lt v0, v9, :cond_c5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-lt v0, v9, :cond_c5

    if-lt v1, v9, :cond_c5

    new-array v8, v9, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int v6, v0, v9

    move v3, v2

    :goto_37
    if-ge v3, v9, :cond_5a

    mul-int v7, v3, v6

    add-int/lit8 v0, v9, -0x1

    if-ne v3, v0, :cond_57

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_41
    new-instance v10, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$13;

    invoke-direct {v10, p0, v7, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$13;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[[[F)V

    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v8, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_37

    :cond_50
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v4, v0, 0x2

    goto :goto_1c

    :cond_57
    add-int v0, v7, v6

    goto :goto_41

    :cond_5a
    invoke-static {v8}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move v3, v2

    :goto_5e
    if-ge v3, v9, :cond_7a

    mul-int v7, v3, v6

    add-int/lit8 v0, v9, -0x1

    if-ne v3, v0, :cond_77

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_68
    new-instance v10, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$14;

    invoke-direct {v10, p0, v7, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$14;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[[[F)V

    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v8, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5e

    :cond_77
    add-int v0, v7, v6

    goto :goto_68

    :cond_7a
    invoke-static {v8}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    div-int v6, v1, v9

    move v3, v2

    :goto_80
    if-ge v3, v9, :cond_9b

    mul-int v7, v3, v6

    add-int/lit8 v0, v9, -0x1

    if-ne v3, v0, :cond_98

    move v0, v1

    :goto_89
    new-instance v10, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$15;

    invoke-direct {v10, p0, v7, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$15;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[[[F)V

    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v8, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_80

    :cond_98
    add-int v0, v7, v6

    goto :goto_89

    :cond_9b
    invoke-static {v8}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int v10, v0, v9

    move v7, v2

    :goto_a3
    if-ge v7, v9, :cond_c1

    mul-int v2, v7, v10

    add-int/lit8 v0, v9, -0x1

    if-ne v7, v0, :cond_be

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_ad
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$16;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$16;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[[[F)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v8, v7

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_a3

    :cond_be
    add-int v3, v2, v10

    goto :goto_ad

    :cond_c1
    invoke-static {v8}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_c4
    return-void

    :cond_c5
    move v0, v2

    :goto_c6
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v3, :cond_de

    move v3, v2

    :goto_cb
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v6, :cond_db

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v9, p1, v0

    aget-object v9, v9, v3

    invoke-virtual {v6, v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_cb

    :cond_db
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    :cond_de
    move v0, v2

    :goto_df
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v3, :cond_131

    move v3, v2

    :goto_e4
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v6, :cond_12e

    mul-int/lit8 v9, v3, 0x2

    move v6, v2

    :goto_eb
    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v6, v10, :cond_108

    mul-int/lit8 v10, v6, 0x2

    aget-object v11, p1, v0

    aget-object v11, v11, v6

    aget v11, v11, v9

    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    aget-object v11, p1, v0

    aget-object v11, v11, v6

    add-int/lit8 v12, v9, 0x1

    aget v11, v11, v12

    aput v11, v8, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_eb

    :cond_108
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v6, v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v6, v2

    :goto_10e
    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v6, v10, :cond_12b

    mul-int/lit8 v10, v6, 0x2

    aget-object v11, p1, v0

    aget-object v11, v11, v6

    aget v12, v8, v10

    aput v12, v11, v9

    aget-object v11, p1, v0

    aget-object v11, v11, v6

    add-int/lit8 v12, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    aget v10, v8, v10

    aput v10, v11, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_10e

    :cond_12b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e4

    :cond_12e
    add-int/lit8 v0, v0, 0x1

    goto :goto_df

    :cond_131
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x2

    new-array v8, v0, [F

    move v6, v2

    :goto_138
    if-ge v6, v1, :cond_189

    move v0, v2

    :goto_13b
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v0, v3, :cond_185

    mul-int/lit8 v9, v0, 0x2

    move v3, v2

    :goto_142
    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v10, :cond_15f

    mul-int/lit8 v10, v3, 0x2

    aget-object v11, p1, v3

    aget-object v11, v11, v6

    aget v11, v11, v9

    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    aget-object v11, p1, v3

    aget-object v11, v11, v6

    add-int/lit8 v12, v9, 0x1

    aget v11, v11, v12

    aput v11, v8, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_142

    :cond_15f
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v3, v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v3, v2

    :goto_165
    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v10, :cond_182

    mul-int/lit8 v10, v3, 0x2

    aget-object v11, p1, v3

    aget-object v11, v11, v6

    aget v12, v8, v10

    aput v12, v11, v9

    aget-object v11, p1, v3

    aget-object v11, v11, v6

    add-int/lit8 v12, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    aget v10, v8, v10

    aput v10, v11, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_165

    :cond_182
    add-int/lit8 v0, v0, 0x1

    goto :goto_13b

    :cond_185
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_138

    :cond_189
    move v0, v2

    :goto_18a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_c4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v1, v0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    rem-int v6, v1, v3

    move v3, v7

    :goto_196
    if-ge v3, v4, :cond_1cc

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int v8, v1, v3

    move v1, v2

    :goto_19d
    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v9, :cond_1c8

    mul-int/lit8 v9, v1, 0x2

    sub-int v10, v5, v9

    aget-object v11, p1, v6

    aget-object v11, v11, v8

    rem-int v12, v10, v5

    aget-object v13, p1, v0

    aget-object v13, v13, v3

    aget v13, v13, v9

    aput v13, v11, v12

    aget-object v11, p1, v6

    aget-object v11, v11, v8

    add-int/lit8 v10, v10, 0x1

    rem-int/2addr v10, v5

    aget-object v12, p1, v0

    aget-object v12, v12, v3

    add-int/lit8 v9, v9, 0x1

    aget v9, v12, v9

    neg-float v9, v9

    aput v9, v11, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_19d

    :cond_1c8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_196

    :cond_1cc
    add-int/lit8 v0, v0, 0x1

    goto :goto_18a
.end method

.method private strictfp mixedRadixRealInverseFull([FZ)V
    .registers 29

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v4, v2, 0x2

    new-array v5, v4, [F

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v21, v2, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_88

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v20, v2

    :goto_20
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/lit8 v7, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/lit8 v10, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int/lit8 v22, v2, 0x2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v23

    const/4 v2, 0x1

    move/from16 v0, v23

    if-le v0, v2, :cond_18f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v2, :cond_18f

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_18f

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    move/from16 v0, v23

    if-lt v2, v0, :cond_18f

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_18f

    move/from16 v0, v23

    new-array v0, v0, [Ljava/util/concurrent/Future;

    move-object/from16 v24, v0

    div-int v25, v22, v23

    const/4 v2, 0x0

    move v11, v2

    :goto_5f
    move/from16 v0, v23

    if-ge v11, v0, :cond_96

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    add-int/lit8 v2, v2, -0x1

    mul-int v3, v11, v25

    sub-int v5, v2, v3

    add-int/lit8 v2, v23, -0x1

    if-ne v11, v2, :cond_93

    add-int/lit8 v6, v22, 0x1

    :goto_73
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;

    move-object/from16 v3, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v2 .. v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$27;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[FZI)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v24, v11

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_5f

    :cond_88
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    move/from16 v20, v2

    goto :goto_20

    :cond_93
    sub-int v6, v5, v25

    goto :goto_73

    :cond_96
    invoke-static/range {v24 .. v24}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[[F

    const/4 v2, 0x0

    :goto_ac
    move/from16 v0, v23

    if-ge v2, v0, :cond_cf

    mul-int v13, v2, v25

    add-int/lit8 v3, v23, -0x1

    if-ne v2, v3, :cond_cc

    add-int/lit8 v14, v22, 0x1

    :goto_b8
    new-instance v11, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$28;

    move-object/from16 v12, p0

    move-object/from16 v15, p1

    move/from16 v17, p2

    invoke-direct/range {v11 .. v17}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$28;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[F[[[FZ)V

    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v24, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_ac

    :cond_cc
    add-int v14, v13, v25

    goto :goto_b8

    :cond_cf
    invoke-static/range {v24 .. v24}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v2, 0x0

    :goto_d3
    move/from16 v0, v23

    if-ge v2, v0, :cond_f9

    mul-int v13, v2, v25

    add-int/lit8 v3, v23, -0x1

    if-ne v2, v3, :cond_f6

    add-int/lit8 v14, v22, 0x1

    :goto_df
    new-instance v11, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;

    move-object/from16 v12, p0

    move v15, v7

    move-object/from16 v17, p1

    move/from16 v18, v10

    move/from16 v19, v4

    invoke-direct/range {v11 .. v19}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$29;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;III[[[F[FII)V

    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v24, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    :cond_f6
    add-int v14, v13, v25

    goto :goto_df

    :cond_f9
    invoke-static/range {v24 .. v24}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int v3, v2, v23

    const/4 v2, 0x0

    :goto_103
    move/from16 v0, v23

    if-ge v2, v0, :cond_12b

    mul-int v13, v2, v3

    add-int/lit8 v5, v23, -0x1

    if-ne v2, v5, :cond_128

    move-object/from16 v0, p0

    iget v14, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_111
    new-instance v11, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$30;

    move-object/from16 v12, p0

    move v15, v7

    move/from16 v16, v10

    move-object/from16 v17, p1

    move/from16 v18, p2

    invoke-direct/range {v11 .. v18}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$30;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[FZ)V

    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v24, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_103

    :cond_128
    add-int v14, v13, v3

    goto :goto_111

    :cond_12b
    invoke-static/range {v24 .. v24}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    div-int v3, v21, v23

    const/4 v2, 0x0

    :goto_131
    move/from16 v0, v23

    if-ge v2, v0, :cond_157

    mul-int v13, v2, v3

    add-int/lit8 v5, v23, -0x1

    if-ne v2, v5, :cond_154

    move/from16 v14, v21

    :goto_13d
    new-instance v11, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$31;

    move-object/from16 v12, p0

    move v15, v10

    move/from16 v16, v7

    move-object/from16 v17, p1

    move/from16 v18, p2

    invoke-direct/range {v11 .. v18}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$31;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[FZ)V

    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v24, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_131

    :cond_154
    add-int v14, v13, v3

    goto :goto_13d

    :cond_157
    invoke-static/range {v24 .. v24}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int v3, v2, v23

    const/4 v2, 0x0

    :goto_161
    move/from16 v0, v23

    if-ge v2, v0, :cond_18b

    mul-int v13, v2, v3

    add-int/lit8 v5, v23, -0x1

    if-ne v2, v5, :cond_188

    move-object/from16 v0, p0

    iget v14, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_16f
    new-instance v11, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;

    move-object/from16 v12, p0

    move v15, v7

    move/from16 v16, v20

    move/from16 v17, v10

    move/from16 v18, v4

    move-object/from16 v19, p1

    invoke-direct/range {v11 .. v19}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$32;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIIIII[F)V

    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    aput-object v5, v24, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_161

    :cond_188
    add-int v14, v13, v3

    goto :goto_16f

    :cond_18b
    invoke-static/range {v24 .. v24}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_18e
    return-void

    :cond_18f
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_196
    if-ltz v3, :cond_1d1

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v6, v3, v2

    mul-int v8, v3, v7

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    add-int/lit8 v2, v2, -0x1

    :goto_1a6
    if-ltz v2, :cond_1cd

    move-object/from16 v0, p0

    iget v9, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v9, v2

    add-int/2addr v9, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    move-object/from16 v0, p1

    invoke-static {v0, v9, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move/from16 v0, p2

    invoke-virtual {v9, v5, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    const/4 v9, 0x0

    mul-int v11, v2, v10

    add-int/2addr v11, v8

    move-object/from16 v0, p1

    invoke-static {v5, v9, v0, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1a6

    :cond_1cd
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_196

    :cond_1d1
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v2, v2, 0x2

    new-array v6, v2, [F

    const/4 v2, 0x0

    :goto_1da
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v3, :cond_232

    mul-int v8, v2, v7

    const/4 v3, 0x0

    :goto_1e3
    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v5, :cond_22f

    mul-int/lit8 v9, v3, 0x2

    const/4 v5, 0x0

    :goto_1ec
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v5, v11, :cond_207

    mul-int/lit8 v11, v5, 0x2

    mul-int v12, v5, v10

    add-int/2addr v12, v8

    add-int/2addr v12, v9

    aget v13, p1, v12

    aput v13, v6, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v12, p1, v12

    aput v12, v6, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_1ec

    :cond_207
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move/from16 v0, p2

    invoke-virtual {v5, v6, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    const/4 v5, 0x0

    :goto_211
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v5, v11, :cond_22c

    mul-int/lit8 v11, v5, 0x2

    mul-int v12, v5, v10

    add-int/2addr v12, v8

    add-int/2addr v12, v9

    aget v13, v6, v11

    aput v13, p1, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget v11, v6, v11

    aput v11, p1, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_211

    :cond_22c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e3

    :cond_22f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1da

    :cond_232
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v2, v2, 0x2

    new-array v6, v2, [F

    const/4 v2, 0x0

    move v5, v2

    :goto_23c
    move/from16 v0, v21

    if-ge v5, v0, :cond_293

    mul-int v8, v5, v10

    const/4 v2, 0x0

    :goto_243
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v3, :cond_28f

    mul-int/lit8 v9, v2, 0x2

    const/4 v3, 0x0

    :goto_24c
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v11, :cond_267

    mul-int/lit8 v11, v3, 0x2

    mul-int v12, v3, v7

    add-int/2addr v12, v8

    add-int/2addr v12, v9

    aget v13, p1, v12

    aput v13, v6, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v12, p1, v12

    aput v12, v6, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_24c

    :cond_267
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    const/4 v3, 0x0

    :goto_271
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v11, :cond_28c

    mul-int/lit8 v11, v3, 0x2

    mul-int v12, v3, v7

    add-int/2addr v12, v8

    add-int/2addr v12, v9

    aget v13, v6, v11

    aput v13, p1, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget v11, v6, v11

    aput v11, p1, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_271

    :cond_28c
    add-int/lit8 v2, v2, 0x1

    goto :goto_243

    :cond_28f
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_23c

    :cond_293
    const/4 v2, 0x0

    :goto_294
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v3, :cond_18e

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v3, v2

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    rem-int/2addr v3, v5

    mul-int v6, v3, v7

    mul-int v8, v2, v7

    const/4 v3, 0x1

    move v5, v3

    :goto_2aa
    move/from16 v0, v20

    if-ge v5, v0, :cond_2df

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v3, v5

    mul-int/2addr v3, v10

    mul-int v9, v5, v10

    add-int v11, v6, v3

    const/4 v3, 0x0

    :goto_2b9
    move-object/from16 v0, p0

    iget v12, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v3, v12, :cond_2db

    mul-int/lit8 v12, v3, 0x2

    sub-int v13, v4, v12

    add-int v14, v8, v9

    add-int/2addr v12, v14

    rem-int v14, v13, v4

    add-int/2addr v14, v11

    aget v15, p1, v12

    aput v15, p1, v14

    add-int/lit8 v13, v13, 0x1

    rem-int/2addr v13, v4

    add-int/2addr v13, v11

    add-int/lit8 v12, v12, 0x1

    aget v12, p1, v12

    neg-float v12, v12

    aput v12, p1, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b9

    :cond_2db
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_2aa

    :cond_2df
    add-int/lit8 v2, v2, 0x1

    goto :goto_294
.end method

.method private strictfp mixedRadixRealInverseFull([[[FZ)V
    .registers 16

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v6, v0, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v9, v0, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_54

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int/lit8 v0, v0, 0x2

    move v7, v0

    :goto_1b
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v10

    const/4 v0, 0x1

    if-le v10, v0, :cond_d5

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_d5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-lt v0, v10, :cond_d5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-lt v0, v10, :cond_d5

    if-lt v6, v10, :cond_d5

    new-array v11, v10, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int v12, v0, v10

    const/4 v0, 0x0

    move v8, v0

    :goto_38
    if-ge v8, v10, :cond_5f

    mul-int v2, v8, v12

    add-int/lit8 v0, v10, -0x1

    if-ne v8, v0, :cond_5c

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_42
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$17;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$17;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v8

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_38

    :cond_54
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    move v7, v0

    goto :goto_1b

    :cond_5c
    add-int v3, v2, v12

    goto :goto_42

    :cond_5f
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    move v8, v0

    :goto_64
    if-ge v8, v10, :cond_83

    mul-int v2, v8, v12

    add-int/lit8 v0, v10, -0x1

    if-ne v8, v0, :cond_80

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_6e
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$18;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$18;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v8

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_64

    :cond_80
    add-int v3, v2, v12

    goto :goto_6e

    :cond_83
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    div-int v12, v6, v10

    const/4 v0, 0x0

    move v8, v0

    :goto_8a
    if-ge v8, v10, :cond_a8

    mul-int v2, v8, v12

    add-int/lit8 v0, v10, -0x1

    if-ne v8, v0, :cond_a5

    move v3, v6

    :goto_93
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$19;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$19;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v8

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_8a

    :cond_a5
    add-int v3, v2, v12

    goto :goto_93

    :cond_a8
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int v12, v0, v10

    const/4 v0, 0x0

    move v8, v0

    :goto_b1
    if-ge v8, v10, :cond_d1

    mul-int v2, v8, v12

    add-int/lit8 v0, v10, -0x1

    if-ne v8, v0, :cond_ce

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_bb
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;

    move-object v1, p0

    move v4, v7

    move v5, v9

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$20;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[[[F)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v8

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_b1

    :cond_ce
    add-int v3, v2, v12

    goto :goto_bb

    :cond_d1
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_d4
    return-void

    :cond_d5
    const/4 v0, 0x0

    :goto_d6
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_ee

    const/4 v1, 0x0

    :goto_db
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_eb

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v4, p1, v0

    aget-object v4, v4, v1

    invoke-virtual {v2, v4, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_db

    :cond_eb
    add-int/lit8 v0, v0, 0x1

    goto :goto_d6

    :cond_ee
    const/4 v0, 0x0

    :goto_ef
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_141

    const/4 v1, 0x0

    :goto_f4
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_13e

    mul-int/lit8 v4, v1, 0x2

    const/4 v2, 0x0

    :goto_fb
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v5, :cond_118

    mul-int/lit8 v5, v2, 0x2

    aget-object v8, p1, v0

    aget-object v8, v8, v2

    aget v8, v8, v4

    aput v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v8, p1, v0

    aget-object v8, v8, v2

    add-int/lit8 v10, v4, 0x1

    aget v8, v8, v10

    aput v8, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_fb

    :cond_118
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    const/4 v2, 0x0

    :goto_11e
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v5, :cond_13b

    mul-int/lit8 v5, v2, 0x2

    aget-object v8, p1, v0

    aget-object v8, v8, v2

    aget v10, v3, v5

    aput v10, v8, v4

    aget-object v8, p1, v0

    aget-object v8, v8, v2

    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    aget v5, v3, v5

    aput v5, v8, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_11e

    :cond_13b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f4

    :cond_13e
    add-int/lit8 v0, v0, 0x1

    goto :goto_ef

    :cond_141
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    const/4 v0, 0x0

    move v2, v0

    :goto_149
    if-ge v2, v6, :cond_19a

    const/4 v0, 0x0

    :goto_14c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v0, v1, :cond_196

    mul-int/lit8 v4, v0, 0x2

    const/4 v1, 0x0

    :goto_153
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v1, v5, :cond_170

    mul-int/lit8 v5, v1, 0x2

    aget-object v8, p1, v1

    aget-object v8, v8, v2

    aget v8, v8, v4

    aput v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v8, p1, v1

    aget-object v8, v8, v2

    add-int/lit8 v10, v4, 0x1

    aget v8, v8, v10

    aput v8, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_153

    :cond_170
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v1, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    const/4 v1, 0x0

    :goto_176
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v1, v5, :cond_193

    mul-int/lit8 v5, v1, 0x2

    aget-object v8, p1, v1

    aget-object v8, v8, v2

    aget v10, v3, v5

    aput v10, v8, v4

    aget-object v8, p1, v1

    aget-object v8, v8, v2

    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    aget v5, v3, v5

    aput v5, v8, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_176

    :cond_193
    add-int/lit8 v0, v0, 0x1

    goto :goto_14c

    :cond_196
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_149

    :cond_19a
    const/4 v0, 0x0

    :goto_19b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_d4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int/2addr v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    rem-int v3, v1, v2

    const/4 v1, 0x1

    move v2, v1

    :goto_1a8
    if-ge v2, v7, :cond_1de

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int v4, v1, v2

    const/4 v1, 0x0

    :goto_1af
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v5, :cond_1da

    mul-int/lit8 v5, v1, 0x2

    sub-int v6, v9, v5

    aget-object v8, p1, v3

    aget-object v8, v8, v4

    rem-int v10, v6, v9

    aget-object v11, p1, v0

    aget-object v11, v11, v2

    aget v11, v11, v5

    aput v11, v8, v10

    aget-object v8, p1, v3

    aget-object v8, v8, v4

    add-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v9

    aget-object v10, p1, v0

    aget-object v10, v10, v2

    add-int/lit8 v5, v5, 0x1

    aget v5, v10, v5

    neg-float v5, v5

    aput v5, v8, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1af

    :cond_1da
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1a8

    :cond_1de
    add-int/lit8 v0, v0, 0x1

    goto :goto_19b
.end method

.method private strictfp rdft3d_sub(I[F)V
    .registers 16

    const/4 v0, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    shr-int/lit8 v3, v1, 0x1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    shr-int/lit8 v4, v1, 0x1

    if-gez p1, :cond_152

    move v2, v0

    :goto_e
    if-ge v2, v3, :cond_ea

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int v5, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v1, v2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v6, v5

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v7, v2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v8, v4

    add-int/2addr v7, v8

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v8, v5

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v9, v4

    add-int/2addr v8, v9

    aget v9, p2, v1

    aget v10, p2, v6

    sub-float/2addr v9, v10

    aget v10, p2, v1

    aget v11, p2, v6

    add-float/2addr v10, v11

    aput v10, p2, v1

    aput v9, p2, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, p2, v9

    add-int/lit8 v10, v1, 0x1

    aget v10, p2, v10

    sub-float/2addr v9, v10

    add-int/lit8 v1, v1, 0x1

    aget v10, p2, v1

    add-int/lit8 v11, v6, 0x1

    aget v11, p2, v11

    add-float/2addr v10, v11

    aput v10, p2, v1

    add-int/lit8 v1, v6, 0x1

    aput v9, p2, v1

    aget v1, p2, v7

    aget v6, p2, v8

    sub-float/2addr v1, v6

    aget v6, p2, v7

    aget v9, p2, v8

    add-float/2addr v6, v9

    aput v6, p2, v7

    aput v1, p2, v8

    add-int/lit8 v1, v8, 0x1

    aget v1, p2, v1

    add-int/lit8 v6, v7, 0x1

    aget v6, p2, v6

    sub-float/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    aget v7, p2, v6

    add-int/lit8 v9, v8, 0x1

    aget v9, p2, v9

    add-float/2addr v7, v9

    aput v7, p2, v6

    add-int/lit8 v6, v8, 0x1

    aput v1, p2, v6

    move v1, v0

    :goto_75
    if-ge v1, v4, :cond_e5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v6, v1

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v7, v2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v8, v1

    add-int/2addr v7, v8

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v8, v5

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v9, v6

    add-int/2addr v8, v9

    aget v9, p2, v7

    aget v10, p2, v8

    sub-float/2addr v9, v10

    aget v10, p2, v7

    aget v11, p2, v8

    add-float/2addr v10, v11

    aput v10, p2, v7

    aput v9, p2, v8

    add-int/lit8 v9, v8, 0x1

    aget v9, p2, v9

    add-int/lit8 v10, v7, 0x1

    aget v10, p2, v10

    sub-float/2addr v9, v10

    add-int/lit8 v7, v7, 0x1

    aget v10, p2, v7

    add-int/lit8 v11, v8, 0x1

    aget v11, p2, v11

    add-float/2addr v10, v11

    aput v10, p2, v7

    add-int/lit8 v7, v8, 0x1

    aput v9, p2, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v7, v5

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v8, v1

    add-int/2addr v7, v8

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v8, v2

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v6, v9

    add-int/2addr v6, v8

    aget v8, p2, v7

    aget v9, p2, v6

    sub-float/2addr v8, v9

    aget v9, p2, v7

    aget v10, p2, v6

    add-float/2addr v9, v10

    aput v9, p2, v7

    aput v8, p2, v6

    add-int/lit8 v8, v6, 0x1

    aget v8, p2, v8

    add-int/lit8 v9, v7, 0x1

    aget v9, p2, v9

    sub-float/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    aget v9, p2, v7

    add-int/lit8 v10, v6, 0x1

    aget v10, p2, v10

    add-float/2addr v9, v10

    aput v9, p2, v7

    add-int/lit8 v6, v6, 0x1

    aput v8, p2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    :cond_e5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_e

    :cond_ea
    :goto_ea
    if-ge v0, v4, :cond_2a9

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v5, v1

    aget v6, p2, v2

    aget v7, p2, v5

    sub-float/2addr v6, v7

    aget v7, p2, v2

    aget v8, p2, v5

    add-float/2addr v7, v8

    aput v7, p2, v2

    aput v6, p2, v5

    add-int/lit8 v6, v5, 0x1

    aget v6, p2, v6

    add-int/lit8 v7, v2, 0x1

    aget v7, p2, v7

    sub-float/2addr v6, v7

    add-int/lit8 v2, v2, 0x1

    aget v7, p2, v2

    add-int/lit8 v8, v5, 0x1

    aget v8, p2, v8

    add-float/2addr v7, v8

    aput v7, p2, v2

    add-int/lit8 v2, v5, 0x1

    aput v6, p2, v2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v2, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v5, v0

    add-int/2addr v2, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v5, v3

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v1, v6

    add-int/2addr v1, v5

    aget v5, p2, v2

    aget v6, p2, v1

    sub-float/2addr v5, v6

    aget v6, p2, v2

    aget v7, p2, v1

    add-float/2addr v6, v7

    aput v6, p2, v2

    aput v5, p2, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, p2, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, p2, v6

    sub-float/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    aget v6, p2, v2

    add-int/lit8 v7, v1, 0x1

    aget v7, p2, v7

    add-float/2addr v6, v7

    aput v6, p2, v2

    add-int/lit8 v1, v1, 0x1

    aput v5, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_ea

    :cond_152
    move v2, v0

    :goto_153
    if-ge v2, v3, :cond_23b

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int v5, v1, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v1, v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v6, v2

    aget v7, p2, v6

    aget v8, p2, v1

    sub-float/2addr v7, v8

    mul-float/2addr v7, v12

    aput v7, p2, v1

    aget v7, p2, v6

    aget v8, p2, v1

    sub-float/2addr v7, v8

    aput v7, p2, v6

    add-int/lit8 v7, v1, 0x1

    add-int/lit8 v8, v6, 0x1

    aget v8, p2, v8

    add-int/lit8 v9, v1, 0x1

    aget v9, p2, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, v12

    aput v8, p2, v7

    add-int/lit8 v6, v6, 0x1

    aget v7, p2, v6

    add-int/lit8 v1, v1, 0x1

    aget v1, p2, v1

    sub-float v1, v7, v1

    aput v1, p2, v6

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v1, v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v1, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v6, v2

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    aget v7, p2, v6

    aget v8, p2, v1

    sub-float/2addr v7, v8

    mul-float/2addr v7, v12

    aput v7, p2, v1

    aget v7, p2, v6

    aget v8, p2, v1

    sub-float/2addr v7, v8

    aput v7, p2, v6

    add-int/lit8 v7, v1, 0x1

    add-int/lit8 v8, v6, 0x1

    aget v8, p2, v8

    add-int/lit8 v9, v1, 0x1

    aget v9, p2, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, v12

    aput v8, p2, v7

    add-int/lit8 v6, v6, 0x1

    aget v7, p2, v6

    add-int/lit8 v1, v1, 0x1

    aget v1, p2, v1

    sub-float v1, v7, v1

    aput v1, p2, v6

    move v1, v0

    :goto_1c0
    if-ge v1, v4, :cond_236

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v6, v1

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v7, v5

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v8, v6

    add-int/2addr v7, v8

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v8, v2

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v9, v1

    add-int/2addr v8, v9

    aget v9, p2, v8

    aget v10, p2, v7

    sub-float/2addr v9, v10

    mul-float/2addr v9, v12

    aput v9, p2, v7

    aget v9, p2, v8

    aget v10, p2, v7

    sub-float/2addr v9, v10

    aput v9, p2, v8

    add-int/lit8 v9, v7, 0x1

    add-int/lit8 v10, v8, 0x1

    aget v10, p2, v10

    add-int/lit8 v11, v7, 0x1

    aget v11, p2, v11

    add-float/2addr v10, v11

    mul-float/2addr v10, v12

    aput v10, p2, v9

    add-int/lit8 v8, v8, 0x1

    aget v9, p2, v8

    add-int/lit8 v7, v7, 0x1

    aget v7, p2, v7

    sub-float v7, v9, v7

    aput v7, p2, v8

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v7, v2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v6, v8

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v7, v5

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v8, v1

    add-int/2addr v7, v8

    aget v8, p2, v7

    aget v9, p2, v6

    sub-float/2addr v8, v9

    mul-float/2addr v8, v12

    aput v8, p2, v6

    aget v8, p2, v7

    aget v9, p2, v6

    sub-float/2addr v8, v9

    aput v8, p2, v7

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v9, v7, 0x1

    aget v9, p2, v9

    add-int/lit8 v10, v6, 0x1

    aget v10, p2, v10

    add-float/2addr v9, v10

    mul-float/2addr v9, v12

    aput v9, p2, v8

    add-int/lit8 v7, v7, 0x1

    aget v8, p2, v7

    add-int/lit8 v6, v6, 0x1

    aget v6, p2, v6

    sub-float v6, v8, v6

    aput v6, p2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c0

    :cond_236
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_153

    :cond_23b
    :goto_23b
    if-ge v0, v4, :cond_2a9

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v5, v0

    aget v6, p2, v5

    aget v7, p2, v2

    sub-float/2addr v6, v7

    mul-float/2addr v6, v12

    aput v6, p2, v2

    aget v6, p2, v5

    aget v7, p2, v2

    sub-float/2addr v6, v7

    aput v6, p2, v5

    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v5, 0x1

    aget v7, p2, v7

    add-int/lit8 v8, v2, 0x1

    aget v8, p2, v8

    add-float/2addr v7, v8

    mul-float/2addr v7, v12

    aput v7, p2, v6

    add-int/lit8 v5, v5, 0x1

    aget v6, p2, v5

    add-int/lit8 v2, v2, 0x1

    aget v2, p2, v2

    sub-float v2, v6, v2

    aput v2, p2, v5

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v2, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v1, v5

    add-int/2addr v1, v2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v2, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v5, v0

    add-int/2addr v2, v5

    aget v5, p2, v2

    aget v6, p2, v1

    sub-float/2addr v5, v6

    mul-float/2addr v5, v12

    aput v5, p2, v1

    aget v5, p2, v2

    aget v6, p2, v1

    sub-float/2addr v5, v6

    aput v5, p2, v2

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v2, 0x1

    aget v6, p2, v6

    add-int/lit8 v7, v1, 0x1

    aget v7, p2, v7

    add-float/2addr v6, v7

    mul-float/2addr v6, v12

    aput v6, p2, v5

    add-int/lit8 v2, v2, 0x1

    aget v5, p2, v2

    add-int/lit8 v1, v1, 0x1

    aget v1, p2, v1

    sub-float v1, v5, v1

    aput v1, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_23b

    :cond_2a9
    return-void
.end method

.method private strictfp rdft3d_sub(I[[[F)V
    .registers 15

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    const/4 v11, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    shr-int/lit8 v3, v0, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    shr-int/lit8 v4, v0, 0x1

    if-gez p1, :cond_1c6

    move v2, v1

    :goto_f
    if-ge v2, v3, :cond_134

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int v5, v0, v2

    aget-object v0, p2, v2

    aget-object v0, v0, v11

    aget v0, v0, v11

    aget-object v6, p2, v5

    aget-object v6, v6, v11

    aget v6, v6, v11

    sub-float/2addr v0, v6

    aget-object v6, p2, v2

    aget-object v6, v6, v11

    aget v7, v6, v11

    aget-object v8, p2, v5

    aget-object v8, v8, v11

    aget v8, v8, v11

    add-float/2addr v7, v8

    aput v7, v6, v11

    aget-object v6, p2, v5

    aget-object v6, v6, v11

    aput v0, v6, v11

    aget-object v0, p2, v5

    aget-object v0, v0, v11

    aget v0, v0, v1

    aget-object v6, p2, v2

    aget-object v6, v6, v11

    aget v6, v6, v1

    sub-float/2addr v0, v6

    aget-object v6, p2, v2

    aget-object v6, v6, v11

    aget v7, v6, v1

    aget-object v8, p2, v5

    aget-object v8, v8, v11

    aget v8, v8, v1

    add-float/2addr v7, v8

    aput v7, v6, v1

    aget-object v6, p2, v5

    aget-object v6, v6, v11

    aput v0, v6, v1

    aget-object v0, p2, v2

    aget-object v0, v0, v4

    aget v0, v0, v11

    aget-object v6, p2, v5

    aget-object v6, v6, v4

    aget v6, v6, v11

    sub-float/2addr v0, v6

    aget-object v6, p2, v2

    aget-object v6, v6, v4

    aget v7, v6, v11

    aget-object v8, p2, v5

    aget-object v8, v8, v4

    aget v8, v8, v11

    add-float/2addr v7, v8

    aput v7, v6, v11

    aget-object v6, p2, v5

    aget-object v6, v6, v4

    aput v0, v6, v11

    aget-object v0, p2, v5

    aget-object v0, v0, v4

    aget v0, v0, v1

    aget-object v6, p2, v2

    aget-object v6, v6, v4

    aget v6, v6, v1

    sub-float/2addr v0, v6

    aget-object v6, p2, v2

    aget-object v6, v6, v4

    aget v7, v6, v1

    aget-object v8, p2, v5

    aget-object v8, v8, v4

    aget v8, v8, v1

    add-float/2addr v7, v8

    aput v7, v6, v1

    aget-object v6, p2, v5

    aget-object v6, v6, v4

    aput v0, v6, v1

    move v0, v1

    :goto_9e
    if-ge v0, v4, :cond_12f

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v6, v0

    aget-object v7, p2, v2

    aget-object v7, v7, v0

    aget v7, v7, v11

    aget-object v8, p2, v5

    aget-object v8, v8, v6

    aget v8, v8, v11

    sub-float/2addr v7, v8

    aget-object v8, p2, v2

    aget-object v8, v8, v0

    aget v9, v8, v11

    aget-object v10, p2, v5

    aget-object v10, v10, v6

    aget v10, v10, v11

    add-float/2addr v9, v10

    aput v9, v8, v11

    aget-object v8, p2, v5

    aget-object v8, v8, v6

    aput v7, v8, v11

    aget-object v7, p2, v5

    aget-object v7, v7, v6

    aget v7, v7, v1

    aget-object v8, p2, v2

    aget-object v8, v8, v0

    aget v8, v8, v1

    sub-float/2addr v7, v8

    aget-object v8, p2, v2

    aget-object v8, v8, v0

    aget v9, v8, v1

    aget-object v10, p2, v5

    aget-object v10, v10, v6

    aget v10, v10, v1

    add-float/2addr v9, v10

    aput v9, v8, v1

    aget-object v8, p2, v5

    aget-object v8, v8, v6

    aput v7, v8, v1

    aget-object v7, p2, v5

    aget-object v7, v7, v0

    aget v7, v7, v11

    aget-object v8, p2, v2

    aget-object v8, v8, v6

    aget v8, v8, v11

    sub-float/2addr v7, v8

    aget-object v8, p2, v5

    aget-object v8, v8, v0

    aget v9, v8, v11

    aget-object v10, p2, v2

    aget-object v10, v10, v6

    aget v10, v10, v11

    add-float/2addr v9, v10

    aput v9, v8, v11

    aget-object v8, p2, v2

    aget-object v8, v8, v6

    aput v7, v8, v11

    aget-object v7, p2, v2

    aget-object v7, v7, v6

    aget v7, v7, v1

    aget-object v8, p2, v5

    aget-object v8, v8, v0

    aget v8, v8, v1

    sub-float/2addr v7, v8

    aget-object v8, p2, v5

    aget-object v8, v8, v0

    aget v9, v8, v1

    aget-object v10, p2, v2

    aget-object v10, v10, v6

    aget v10, v10, v1

    add-float/2addr v9, v10

    aput v9, v8, v1

    aget-object v8, p2, v2

    aget-object v6, v8, v6

    aput v7, v6, v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9e

    :cond_12f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_f

    :cond_134
    move v0, v1

    :goto_135
    if-ge v0, v4, :cond_38c

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v2, v0

    aget-object v5, p2, v11

    aget-object v5, v5, v0

    aget v5, v5, v11

    aget-object v6, p2, v11

    aget-object v6, v6, v2

    aget v6, v6, v11

    sub-float/2addr v5, v6

    aget-object v6, p2, v11

    aget-object v6, v6, v0

    aget v7, v6, v11

    aget-object v8, p2, v11

    aget-object v8, v8, v2

    aget v8, v8, v11

    add-float/2addr v7, v8

    aput v7, v6, v11

    aget-object v6, p2, v11

    aget-object v6, v6, v2

    aput v5, v6, v11

    aget-object v5, p2, v11

    aget-object v5, v5, v2

    aget v5, v5, v1

    aget-object v6, p2, v11

    aget-object v6, v6, v0

    aget v6, v6, v1

    sub-float/2addr v5, v6

    aget-object v6, p2, v11

    aget-object v6, v6, v0

    aget v7, v6, v1

    aget-object v8, p2, v11

    aget-object v8, v8, v2

    aget v8, v8, v1

    add-float/2addr v7, v8

    aput v7, v6, v1

    aget-object v6, p2, v11

    aget-object v6, v6, v2

    aput v5, v6, v1

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    aget v5, v5, v11

    aget-object v6, p2, v3

    aget-object v6, v6, v2

    aget v6, v6, v11

    sub-float/2addr v5, v6

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    aget v7, v6, v11

    aget-object v8, p2, v3

    aget-object v8, v8, v2

    aget v8, v8, v11

    add-float/2addr v7, v8

    aput v7, v6, v11

    aget-object v6, p2, v3

    aget-object v6, v6, v2

    aput v5, v6, v11

    aget-object v5, p2, v3

    aget-object v5, v5, v2

    aget v5, v5, v1

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    aget v6, v6, v1

    sub-float/2addr v5, v6

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    aget v7, v6, v1

    aget-object v8, p2, v3

    aget-object v8, v8, v2

    aget v8, v8, v1

    add-float/2addr v7, v8

    aput v7, v6, v1

    aget-object v6, p2, v3

    aget-object v2, v6, v2

    aput v5, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_135

    :cond_1c6
    move v2, v1

    :goto_1c7
    if-ge v2, v3, :cond_2f5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    sub-int v5, v0, v2

    aget-object v0, p2, v5

    aget-object v0, v0, v11

    aget-object v6, p2, v2

    aget-object v6, v6, v11

    aget v6, v6, v11

    aget-object v7, p2, v5

    aget-object v7, v7, v11

    aget v7, v7, v11

    sub-float/2addr v6, v7

    mul-float/2addr v6, v10

    aput v6, v0, v11

    aget-object v0, p2, v2

    aget-object v0, v0, v11

    aget v6, v0, v11

    aget-object v7, p2, v5

    aget-object v7, v7, v11

    aget v7, v7, v11

    sub-float/2addr v6, v7

    aput v6, v0, v11

    aget-object v0, p2, v5

    aget-object v0, v0, v11

    aget-object v6, p2, v2

    aget-object v6, v6, v11

    aget v6, v6, v1

    aget-object v7, p2, v5

    aget-object v7, v7, v11

    aget v7, v7, v1

    add-float/2addr v6, v7

    mul-float/2addr v6, v10

    aput v6, v0, v1

    aget-object v0, p2, v2

    aget-object v0, v0, v11

    aget v6, v0, v1

    aget-object v7, p2, v5

    aget-object v7, v7, v11

    aget v7, v7, v1

    sub-float/2addr v6, v7

    aput v6, v0, v1

    aget-object v0, p2, v5

    aget-object v0, v0, v4

    aget-object v6, p2, v2

    aget-object v6, v6, v4

    aget v6, v6, v11

    aget-object v7, p2, v5

    aget-object v7, v7, v4

    aget v7, v7, v11

    sub-float/2addr v6, v7

    mul-float/2addr v6, v10

    aput v6, v0, v11

    aget-object v0, p2, v2

    aget-object v0, v0, v4

    aget v6, v0, v11

    aget-object v7, p2, v5

    aget-object v7, v7, v4

    aget v7, v7, v11

    sub-float/2addr v6, v7

    aput v6, v0, v11

    aget-object v0, p2, v5

    aget-object v0, v0, v4

    aget-object v6, p2, v2

    aget-object v6, v6, v4

    aget v6, v6, v1

    aget-object v7, p2, v5

    aget-object v7, v7, v4

    aget v7, v7, v1

    add-float/2addr v6, v7

    mul-float/2addr v6, v10

    aput v6, v0, v1

    aget-object v0, p2, v2

    aget-object v0, v0, v4

    aget v6, v0, v1

    aget-object v7, p2, v5

    aget-object v7, v7, v4

    aget v7, v7, v1

    sub-float/2addr v6, v7

    aput v6, v0, v1

    move v0, v1

    :goto_25a
    if-ge v0, v4, :cond_2f0

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v6, v0

    aget-object v7, p2, v5

    aget-object v7, v7, v6

    aget-object v8, p2, v2

    aget-object v8, v8, v0

    aget v8, v8, v11

    aget-object v9, p2, v5

    aget-object v9, v9, v6

    aget v9, v9, v11

    sub-float/2addr v8, v9

    mul-float/2addr v8, v10

    aput v8, v7, v11

    aget-object v7, p2, v2

    aget-object v7, v7, v0

    aget v8, v7, v11

    aget-object v9, p2, v5

    aget-object v9, v9, v6

    aget v9, v9, v11

    sub-float/2addr v8, v9

    aput v8, v7, v11

    aget-object v7, p2, v5

    aget-object v7, v7, v6

    aget-object v8, p2, v2

    aget-object v8, v8, v0

    aget v8, v8, v1

    aget-object v9, p2, v5

    aget-object v9, v9, v6

    aget v9, v9, v1

    add-float/2addr v8, v9

    mul-float/2addr v8, v10

    aput v8, v7, v1

    aget-object v7, p2, v2

    aget-object v7, v7, v0

    aget v8, v7, v1

    aget-object v9, p2, v5

    aget-object v9, v9, v6

    aget v9, v9, v1

    sub-float/2addr v8, v9

    aput v8, v7, v1

    aget-object v7, p2, v2

    aget-object v7, v7, v6

    aget-object v8, p2, v5

    aget-object v8, v8, v0

    aget v8, v8, v11

    aget-object v9, p2, v2

    aget-object v9, v9, v6

    aget v9, v9, v11

    sub-float/2addr v8, v9

    mul-float/2addr v8, v10

    aput v8, v7, v11

    aget-object v7, p2, v5

    aget-object v7, v7, v0

    aget v8, v7, v11

    aget-object v9, p2, v2

    aget-object v9, v9, v6

    aget v9, v9, v11

    sub-float/2addr v8, v9

    aput v8, v7, v11

    aget-object v7, p2, v2

    aget-object v7, v7, v6

    aget-object v8, p2, v5

    aget-object v8, v8, v0

    aget v8, v8, v1

    aget-object v9, p2, v2

    aget-object v9, v9, v6

    aget v9, v9, v1

    add-float/2addr v8, v9

    mul-float/2addr v8, v10

    aput v8, v7, v1

    aget-object v7, p2, v5

    aget-object v7, v7, v0

    aget v8, v7, v1

    aget-object v9, p2, v2

    aget-object v6, v9, v6

    aget v6, v6, v1

    sub-float v6, v8, v6

    aput v6, v7, v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_25a

    :cond_2f0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1c7

    :cond_2f5
    move v0, v1

    :goto_2f6
    if-ge v0, v4, :cond_38c

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    sub-int/2addr v2, v0

    aget-object v5, p2, v11

    aget-object v5, v5, v2

    aget-object v6, p2, v11

    aget-object v6, v6, v0

    aget v6, v6, v11

    aget-object v7, p2, v11

    aget-object v7, v7, v2

    aget v7, v7, v11

    sub-float/2addr v6, v7

    mul-float/2addr v6, v10

    aput v6, v5, v11

    aget-object v5, p2, v11

    aget-object v5, v5, v0

    aget v6, v5, v11

    aget-object v7, p2, v11

    aget-object v7, v7, v2

    aget v7, v7, v11

    sub-float/2addr v6, v7

    aput v6, v5, v11

    aget-object v5, p2, v11

    aget-object v5, v5, v2

    aget-object v6, p2, v11

    aget-object v6, v6, v0

    aget v6, v6, v1

    aget-object v7, p2, v11

    aget-object v7, v7, v2

    aget v7, v7, v1

    add-float/2addr v6, v7

    mul-float/2addr v6, v10

    aput v6, v5, v1

    aget-object v5, p2, v11

    aget-object v5, v5, v0

    aget v6, v5, v1

    aget-object v7, p2, v11

    aget-object v7, v7, v2

    aget v7, v7, v1

    sub-float/2addr v6, v7

    aput v6, v5, v1

    aget-object v5, p2, v3

    aget-object v5, v5, v2

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    aget v6, v6, v11

    aget-object v7, p2, v3

    aget-object v7, v7, v2

    aget v7, v7, v11

    sub-float/2addr v6, v7

    mul-float/2addr v6, v10

    aput v6, v5, v11

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    aget v6, v5, v11

    aget-object v7, p2, v3

    aget-object v7, v7, v2

    aget v7, v7, v11

    sub-float/2addr v6, v7

    aput v6, v5, v11

    aget-object v5, p2, v3

    aget-object v5, v5, v2

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    aget v6, v6, v1

    aget-object v7, p2, v3

    aget-object v7, v7, v2

    aget v7, v7, v1

    add-float/2addr v6, v7

    mul-float/2addr v6, v10

    aput v6, v5, v1

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    aget v6, v5, v1

    aget-object v7, p2, v3

    aget-object v2, v7, v2

    aget v2, v2, v1

    sub-float v2, v6, v2

    aput v2, v5, v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2f6

    :cond_38c
    return-void
.end method

.method private strictfp xdft3da_sub1(II[FZ)V
    .registers 16

    const/4 v0, -0x1

    if-ne p2, v0, :cond_206

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_40b

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v3, v0, v1

    if-nez p1, :cond_1f

    const/4 v1, 0x0

    :goto_f
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_30

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    invoke-virtual {v2, p3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_30

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    invoke-virtual {v2, p3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_30
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_133

    const/4 v1, 0x0

    :goto_36
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_202

    const/4 v2, 0x0

    :goto_3b
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v4, :cond_a0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v10, p3, v4

    aput v10, v9, v5

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v4, 0x1

    aget v10, p3, v10

    aput v10, v9, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v9, v4, 0x2

    aget v9, p3, v9

    aput v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v4, 0x3

    aget v9, p3, v9

    aput v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v4, 0x4

    aget v6, p3, v6

    aput v6, v5, v7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v7, v4, 0x5

    aget v7, p3, v7

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v4, 0x6

    aget v6, p3, v6

    aput v6, v5, v8

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v8, 0x1

    add-int/lit8 v4, v4, 0x7

    aget v4, p3, v4

    aput v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_a0
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x6

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    const/4 v2, 0x0

    :goto_ca
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v4, :cond_12f

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v9, v9, v5

    aput v9, p3, v4

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v10, v5

    aput v5, p3, v9

    add-int/lit8 v5, v4, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v9, v9, v6

    aput v9, p3, v5

    add-int/lit8 v5, v4, 0x3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v6, v9, v6

    aput v6, p3, v5

    add-int/lit8 v5, v4, 0x4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v7

    aput v6, p3, v5

    add-int/lit8 v5, v4, 0x5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, p3, v5

    add-int/lit8 v5, v4, 0x6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v8

    aput v6, p3, v5

    add-int/lit8 v4, v4, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v8, 0x1

    aget v5, v5, v6

    aput v5, p3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_ca

    :cond_12f
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_36

    :cond_133
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1b9

    const/4 v1, 0x0

    :goto_139
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_16f

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, p3, v2

    aput v7, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v2, 0x1

    aget v7, p3, v7

    aput v7, v6, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v2, 0x2

    aget v6, p3, v6

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x3

    aget v2, p3, v2

    aput v2, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_139

    :cond_16f
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v2, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    const/4 v1, 0x0

    :goto_183
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_202

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v4

    aput v6, p3, v2

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v7, v4

    aput v4, p3, v6

    add-int/lit8 v4, v2, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v5

    aput v6, p3, v4

    add-int/lit8 v2, v2, 0x3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    aput v4, p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_183

    :cond_1b9
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_202

    const/4 v1, 0x0

    :goto_1bf
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_1dc

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, p3, v2

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    aget v2, p3, v2

    aput v2, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1bf

    :cond_1dc
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    const/4 v1, 0x0

    :goto_1e5
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_202

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v4

    aput v5, p3, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v5, v4

    aput v4, p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e5

    :cond_202
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_206
    const/4 v0, 0x0

    :goto_207
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_40b

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v3, v0, v1

    if-nez p1, :cond_222

    const/4 v1, 0x0

    :goto_212
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_222

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    invoke-virtual {v2, p3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_212

    :cond_222
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_325

    const/4 v1, 0x0

    :goto_228
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_3f4

    const/4 v2, 0x0

    :goto_22d
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v4, :cond_292

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v10, p3, v4

    aput v10, v9, v5

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v4, 0x1

    aget v10, p3, v10

    aput v10, v9, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v9, v4, 0x2

    aget v9, p3, v9

    aput v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v4, 0x3

    aget v9, p3, v9

    aput v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v4, 0x4

    aget v6, p3, v6

    aput v6, v5, v7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v7, v4, 0x5

    aget v7, p3, v7

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v4, 0x6

    aget v6, p3, v6

    aput v6, v5, v8

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v8, 0x1

    add-int/lit8 v4, v4, 0x7

    aget v4, p3, v4

    aput v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_22d

    :cond_292
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v4, v5, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x6

    invoke-virtual {v2, v4, v5, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    const/4 v2, 0x0

    :goto_2bc
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v4, :cond_321

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v9, v9, v5

    aput v9, p3, v4

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v10, v5

    aput v5, p3, v9

    add-int/lit8 v5, v4, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v9, v9, v6

    aput v9, p3, v5

    add-int/lit8 v5, v4, 0x3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v6, v9, v6

    aput v6, p3, v5

    add-int/lit8 v5, v4, 0x4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v7

    aput v6, p3, v5

    add-int/lit8 v5, v4, 0x5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, p3, v5

    add-int/lit8 v5, v4, 0x6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v8

    aput v6, p3, v5

    add-int/lit8 v4, v4, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v8, 0x1

    aget v5, v5, v6

    aput v5, p3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2bc

    :cond_321
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_228

    :cond_325
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3ab

    const/4 v1, 0x0

    :goto_32b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_361

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, p3, v2

    aput v7, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v2, 0x1

    aget v7, p3, v7

    aput v7, v6, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v2, 0x2

    aget v6, p3, v6

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x3

    aget v2, p3, v2

    aput v2, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_32b

    :cond_361
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v2, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    const/4 v1, 0x0

    :goto_375
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_3f4

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v4

    aput v6, p3, v2

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v7, v4

    aput v4, p3, v6

    add-int/lit8 v4, v2, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v5

    aput v6, p3, v4

    add-int/lit8 v2, v2, 0x3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    aput v4, p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_375

    :cond_3ab
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3f4

    const/4 v1, 0x0

    :goto_3b1
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_3ce

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, p3, v2

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    aget v2, p3, v2

    aput v2, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b1

    :cond_3ce
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    const/4 v1, 0x0

    :goto_3d7
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_3f4

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v4

    aput v5, p3, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v5, v4

    aput v4, p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d7

    :cond_3f4
    if-eqz p1, :cond_407

    const/4 v1, 0x0

    :goto_3f7
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_407

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    invoke-virtual {v2, p3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse([FIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f7

    :cond_407
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_207

    :cond_40b
    return-void
.end method

.method private strictfp xdft3da_sub1(II[[[FZ)V
    .registers 15

    const/4 v0, -0x1

    if-ne p2, v0, :cond_255

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_4a9

    if-nez p1, :cond_1b

    const/4 v1, 0x0

    :goto_b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_2d

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_2d

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_166

    const/4 v1, 0x0

    :goto_33
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_251

    const/4 v2, 0x0

    :goto_38
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_b8

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    aget v8, v8, v1

    aput v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    aput v8, v7, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x2

    aget v7, v7, v8

    aput v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x3

    aget v7, v7, v8

    aput v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v7, v1, 0x4

    aget v4, v4, v7

    aput v4, v3, v5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v5, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v7, v1, 0x5

    aget v5, v5, v7

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v5, v1, 0x6

    aget v4, v4, v5

    aput v4, v3, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v6, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v6, v1, 0x7

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_b8
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    const/4 v2, 0x0

    :goto_e2
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_162

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v8, v8, v3

    aput v8, v7, v1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v9, v3

    aput v3, v7, v8

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v8, v8, v4

    aput v8, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v8, v4

    aput v4, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, v7, v5

    aput v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    aput v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v6

    aput v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_e2

    :cond_162
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_33

    :cond_166
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_200

    const/4 v1, 0x0

    :goto_16c
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_1ac

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    aput v5, v4, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget v4, v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_16c

    :cond_1ac
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    const/4 v1, 0x0

    :goto_1c0
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_251

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v2

    aput v6, v4, v5

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v6, v2

    aput v2, v4, v5

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v3

    aput v5, v2, v4

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    aput v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c0

    :cond_200
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_251

    const/4 v1, 0x0

    :goto_206
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_227

    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_206

    :cond_227
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    const/4 v1, 0x0

    :goto_230
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_251

    mul-int/lit8 v2, v1, 0x2

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v2

    aput v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v5, v2

    aput v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_230

    :cond_251
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_255
    const/4 v0, 0x0

    :goto_256
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_4a9

    if-nez p1, :cond_26d

    const/4 v1, 0x0

    :goto_25d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_26d

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25d

    :cond_26d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_3a6

    const/4 v1, 0x0

    :goto_273
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_491

    const/4 v2, 0x0

    :goto_278
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_2f8

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    aget v8, v8, v1

    aput v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    aput v8, v7, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x2

    aget v7, v7, v8

    aput v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x3

    aget v7, v7, v8

    aput v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v7, v1, 0x4

    aget v4, v4, v7

    aput v4, v3, v5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v5, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v7, v1, 0x5

    aget v5, v5, v7

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v5, v1, 0x6

    aget v4, v4, v5

    aput v4, v3, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v6, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v6, v1, 0x7

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_278

    :cond_2f8
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    const/4 v2, 0x0

    :goto_322
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_3a2

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v8, v8, v3

    aput v8, v7, v1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v9, v3

    aput v3, v7, v8

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v8, v8, v4

    aput v8, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v8, v4

    aput v4, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, v7, v5

    aput v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    aput v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v6

    aput v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_322

    :cond_3a2
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_273

    :cond_3a6
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_440

    const/4 v1, 0x0

    :goto_3ac
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_3ec

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    aput v5, v4, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget v4, v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ac

    :cond_3ec
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    const/4 v1, 0x0

    :goto_400
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_491

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v2

    aput v6, v4, v5

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v6, v2

    aput v2, v4, v5

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v3

    aput v5, v2, v4

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    aput v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_400

    :cond_440
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_491

    const/4 v1, 0x0

    :goto_446
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_467

    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_446

    :cond_467
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    const/4 v1, 0x0

    :goto_470
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_491

    mul-int/lit8 v2, v1, 0x2

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v2

    aput v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v5, v2

    aput v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_470

    :cond_491
    if-eqz p1, :cond_4a5

    const/4 v1, 0x0

    :goto_494
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_4a5

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse([FIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_494

    :cond_4a5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_256

    :cond_4a9
    return-void
.end method

.method private strictfp xdft3da_sub2(II[FZ)V
    .registers 16

    const/4 v0, -0x1

    if-ne p2, v0, :cond_206

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_409

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v3, v0, v1

    if-nez p1, :cond_1f

    const/4 v1, 0x0

    :goto_f
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_30

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    invoke-virtual {v2, p3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_30

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    invoke-virtual {v2, p3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_30
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_133

    const/4 v1, 0x0

    :goto_36
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_202

    const/4 v2, 0x0

    :goto_3b
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v4, :cond_a0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v10, p3, v4

    aput v10, v9, v5

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v4, 0x1

    aget v10, p3, v10

    aput v10, v9, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v9, v4, 0x2

    aget v9, p3, v9

    aput v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v4, 0x3

    aget v9, p3, v9

    aput v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v4, 0x4

    aget v6, p3, v6

    aput v6, v5, v7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v7, v4, 0x5

    aget v7, p3, v7

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v4, 0x6

    aget v6, p3, v6

    aput v6, v5, v8

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v8, 0x1

    add-int/lit8 v4, v4, 0x7

    aget v4, p3, v4

    aput v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_a0
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x6

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    const/4 v2, 0x0

    :goto_ca
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v4, :cond_12f

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v9, v9, v5

    aput v9, p3, v4

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v10, v5

    aput v5, p3, v9

    add-int/lit8 v5, v4, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v9, v9, v6

    aput v9, p3, v5

    add-int/lit8 v5, v4, 0x3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v6, v9, v6

    aput v6, p3, v5

    add-int/lit8 v5, v4, 0x4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v7

    aput v6, p3, v5

    add-int/lit8 v5, v4, 0x5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, p3, v5

    add-int/lit8 v5, v4, 0x6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v8

    aput v6, p3, v5

    add-int/lit8 v4, v4, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v8, 0x1

    aget v5, v5, v6

    aput v5, p3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_ca

    :cond_12f
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_36

    :cond_133
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1b9

    const/4 v1, 0x0

    :goto_139
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_16f

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, p3, v2

    aput v7, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v2, 0x1

    aget v7, p3, v7

    aput v7, v6, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v2, 0x2

    aget v6, p3, v6

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x3

    aget v2, p3, v2

    aput v2, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_139

    :cond_16f
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v2, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    const/4 v1, 0x0

    :goto_183
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_202

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v4

    aput v6, p3, v2

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v7, v4

    aput v4, p3, v6

    add-int/lit8 v4, v2, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v5

    aput v6, p3, v4

    add-int/lit8 v2, v2, 0x3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    aput v4, p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_183

    :cond_1b9
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_202

    const/4 v1, 0x0

    :goto_1bf
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_1dc

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, p3, v2

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    aget v2, p3, v2

    aput v2, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1bf

    :cond_1dc
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    const/4 v1, 0x0

    :goto_1e5
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_202

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v4

    aput v5, p3, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v5, v4

    aput v4, p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e5

    :cond_202
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_206
    const/4 v0, 0x0

    :goto_207
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_409

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v3, v0, v1

    if-nez p1, :cond_222

    const/4 v1, 0x0

    :goto_212
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_233

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    invoke-virtual {v2, p3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_212

    :cond_222
    const/4 v1, 0x0

    :goto_223
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_233

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v3

    invoke-virtual {v2, p3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_223

    :cond_233
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_336

    const/4 v1, 0x0

    :goto_239
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_405

    const/4 v2, 0x0

    :goto_23e
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v4, :cond_2a3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v10, p3, v4

    aput v10, v9, v5

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v4, 0x1

    aget v10, p3, v10

    aput v10, v9, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v9, v4, 0x2

    aget v9, p3, v9

    aput v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v4, 0x3

    aget v9, p3, v9

    aput v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v4, 0x4

    aget v6, p3, v6

    aput v6, v5, v7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v7, v4, 0x5

    aget v7, p3, v7

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v4, 0x6

    aget v6, p3, v6

    aput v6, v5, v8

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v8, 0x1

    add-int/lit8 v4, v4, 0x7

    aget v4, p3, v4

    aput v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_23e

    :cond_2a3
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v4, v5, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x6

    invoke-virtual {v2, v4, v5, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    const/4 v2, 0x0

    :goto_2cd
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v4, :cond_332

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v9, v9, v5

    aput v9, p3, v4

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v10, v5

    aput v5, p3, v9

    add-int/lit8 v5, v4, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v9, v9, v6

    aput v9, p3, v5

    add-int/lit8 v5, v4, 0x3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v6, v9, v6

    aput v6, p3, v5

    add-int/lit8 v5, v4, 0x4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v7

    aput v6, p3, v5

    add-int/lit8 v5, v4, 0x5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, p3, v5

    add-int/lit8 v5, v4, 0x6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v8

    aput v6, p3, v5

    add-int/lit8 v4, v4, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v8, 0x1

    aget v5, v5, v6

    aput v5, p3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2cd

    :cond_332
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_239

    :cond_336
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3bc

    const/4 v1, 0x0

    :goto_33c
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_372

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, p3, v2

    aput v7, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v2, 0x1

    aget v7, p3, v7

    aput v7, v6, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v2, 0x2

    aget v6, p3, v6

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x3

    aget v2, p3, v2

    aput v2, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_33c

    :cond_372
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v2, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    const/4 v1, 0x0

    :goto_386
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_405

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v4

    aput v6, p3, v2

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v7, v4

    aput v4, p3, v6

    add-int/lit8 v4, v2, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v5

    aput v6, p3, v4

    add-int/lit8 v2, v2, 0x3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    aput v4, p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_386

    :cond_3bc
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_405

    const/4 v1, 0x0

    :goto_3c2
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_3df

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, p3, v2

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    aget v2, p3, v2

    aput v2, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c2

    :cond_3df
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    const/4 v1, 0x0

    :goto_3e8
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_405

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v4

    aput v5, p3, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v5, v4

    aput v4, p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e8

    :cond_405
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_207

    :cond_409
    return-void
.end method

.method private strictfp xdft3da_sub2(II[[[FZ)V
    .registers 15

    const/4 v0, -0x1

    if-ne p2, v0, :cond_254

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_4a6

    if-nez p1, :cond_1b

    const/4 v1, 0x0

    :goto_b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_165

    const/4 v1, 0x0

    :goto_32
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_250

    const/4 v2, 0x0

    :goto_37
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_b7

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    aget v8, v8, v1

    aput v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    aput v8, v7, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x2

    aget v7, v7, v8

    aput v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x3

    aget v7, v7, v8

    aput v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v7, v1, 0x4

    aget v4, v4, v7

    aput v4, v3, v5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v5, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v7, v1, 0x5

    aget v5, v5, v7

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v5, v1, 0x6

    aget v4, v4, v5

    aput v4, v3, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v6, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v6, v1, 0x7

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_b7
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    const/4 v2, 0x0

    :goto_e1
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_161

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v8, v8, v3

    aput v8, v7, v1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v9, v3

    aput v3, v7, v8

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v8, v8, v4

    aput v8, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v8, v4

    aput v4, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, v7, v5

    aput v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    aput v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v6

    aput v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_e1

    :cond_161
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_32

    :cond_165
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1ff

    const/4 v1, 0x0

    :goto_16b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_1ab

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    aput v5, v4, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget v4, v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_16b

    :cond_1ab
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    const/4 v1, 0x0

    :goto_1bf
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_250

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v2

    aput v6, v4, v5

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v6, v2

    aput v2, v4, v5

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v3

    aput v5, v2, v4

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    aput v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1bf

    :cond_1ff
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_250

    const/4 v1, 0x0

    :goto_205
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_226

    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_205

    :cond_226
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    const/4 v1, 0x0

    :goto_22f
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_250

    mul-int/lit8 v2, v1, 0x2

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v2

    aput v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v5, v2

    aput v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_22f

    :cond_250
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_254
    const/4 v0, 0x0

    :goto_255
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_4a6

    if-nez p1, :cond_26c

    const/4 v1, 0x0

    :goto_25c
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_27e

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25c

    :cond_26c
    const/4 v1, 0x0

    :goto_26d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_27e

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_26d

    :cond_27e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_3b7

    const/4 v1, 0x0

    :goto_284
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_4a2

    const/4 v2, 0x0

    :goto_289
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_309

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    aget v8, v8, v1

    aput v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    aput v8, v7, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x2

    aget v7, v7, v8

    aput v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x3

    aget v7, v7, v8

    aput v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v7, v1, 0x4

    aget v4, v4, v7

    aput v4, v3, v5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v5, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v7, v1, 0x5

    aget v5, v5, v7

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v5, v1, 0x6

    aget v4, v4, v5

    aput v4, v3, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v6, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v6, v1, 0x7

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_289

    :cond_309
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    const/4 v2, 0x0

    :goto_333
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_3b3

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v8, v8, v3

    aput v8, v7, v1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v9, v3

    aput v3, v7, v8

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v8, v8, v4

    aput v8, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v8, v4

    aput v4, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v7, v7, v5

    aput v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    aput v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v6

    aput v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_333

    :cond_3b3
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_284

    :cond_3b7
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_451

    const/4 v1, 0x0

    :goto_3bd
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_3fd

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    aput v5, v4, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget v4, v4, v5

    aput v4, v2, v3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3bd

    :cond_3fd
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    const/4 v1, 0x0

    :goto_411
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_4a2

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v6, v6, v2

    aput v6, v4, v5

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v6, v2

    aput v2, v4, v5

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v3

    aput v5, v2, v4

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    aput v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_411

    :cond_451
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4a2

    const/4 v1, 0x0

    :goto_457
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_478

    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_457

    :cond_478
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    const/4 v1, 0x0

    :goto_481
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_4a2

    mul-int/lit8 v2, v1, 0x2

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    aget v5, v5, v2

    aput v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v5, v2

    aput v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_481

    :cond_4a2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_255

    :cond_4a6
    return-void
.end method

.method private strictfp xdft3da_subth1(II[FZ)V
    .registers 16

    const/4 v2, 0x4

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v2, :cond_30

    shr-int/lit8 v0, v0, 0x1

    move v9, v0

    :goto_16
    new-array v10, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_38

    mul-int v7, v9, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;

    move-object v1, p0

    move v2, p2

    move v5, p1

    move-object v6, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$33;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[FIZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_30
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_3c

    shr-int/lit8 v0, v0, 0x2

    move v9, v0

    goto :goto_16

    :cond_38
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void

    :cond_3c
    move v9, v0

    goto :goto_16
.end method

.method private strictfp xdft3da_subth1(II[[[FZ)V
    .registers 16

    const/4 v2, 0x4

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v2, :cond_30

    shr-int/lit8 v0, v0, 0x1

    move v9, v0

    :goto_16
    new-array v10, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_38

    mul-int v7, v9, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$35;

    move-object v1, p0

    move v2, p2

    move v5, p1

    move-object v6, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$35;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[[[FIZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_30
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_3c

    shr-int/lit8 v0, v0, 0x2

    move v9, v0

    goto :goto_16

    :cond_38
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void

    :cond_3c
    move v9, v0

    goto :goto_16
.end method

.method private strictfp xdft3da_subth2(II[FZ)V
    .registers 16

    const/4 v2, 0x4

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v2, :cond_30

    shr-int/lit8 v0, v0, 0x1

    move v9, v0

    :goto_16
    new-array v10, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_38

    mul-int v7, v9, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$34;

    move-object v1, p0

    move v2, p2

    move v5, p1

    move-object v6, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$34;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[FIZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_30
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_3c

    shr-int/lit8 v0, v0, 0x2

    move v9, v0

    goto :goto_16

    :cond_38
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void

    :cond_3c
    move v9, v0

    goto :goto_16
.end method

.method private strictfp xdft3da_subth2(II[[[FZ)V
    .registers 16

    const/4 v2, 0x4

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v2, :cond_30

    shr-int/lit8 v0, v0, 0x1

    move v9, v0

    :goto_16
    new-array v10, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_38

    mul-int v7, v9, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;

    move-object v1, p0

    move v2, p2

    move v5, p1

    move-object v6, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$36;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;IIII[[[FIZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_30
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_3c

    shr-int/lit8 v0, v0, 0x2

    move v9, v0

    goto :goto_16

    :cond_38
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void

    :cond_3c
    move v9, v0

    goto :goto_16
.end method


# virtual methods
.method public strictfp complexForward([F)V
    .registers 12

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_7c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr v2, v4

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    if-eq v3, v2, :cond_50

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v4, :cond_31

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_31
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/lit8 v2, v2, 0x8

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    if-le v3, v5, :cond_3e

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/2addr v2, v3

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_3e
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v2, v7, :cond_6a

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_48
    :goto_48
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    new-array v2, v2, [F

    iput-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iput v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    :cond_50
    if-le v3, v5, :cond_75

    iget-boolean v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v2, :cond_75

    invoke-direct {p0, v1, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[FZ)V

    invoke-direct {p0, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[FZ)V

    :goto_5c
    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    :goto_69
    return-void

    :cond_6a
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v7, :cond_48

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    goto :goto_48

    :cond_75
    invoke-direct {p0, v1, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[FZ)V

    invoke-direct {p0, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[FZ)V

    goto :goto_5c

    :cond_7c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr v0, v2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    if-le v3, v5, :cond_112

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_112

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-lt v0, v3, :cond_112

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-lt v0, v3, :cond_112

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-lt v0, v3, :cond_112

    new-array v4, v3, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int v5, v0, v3

    move v2, v1

    :goto_a4
    if-ge v2, v3, :cond_c0

    mul-int v6, v2, v5

    add-int/lit8 v0, v3, -0x1

    if-ne v2, v0, :cond_bd

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_ae
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$1;

    invoke-direct {v7, p0, v6, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$1;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[F)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a4

    :cond_bd
    add-int v0, v6, v5

    goto :goto_ae

    :cond_c0
    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move v2, v1

    :goto_c4
    if-ge v2, v3, :cond_e0

    mul-int v6, v2, v5

    add-int/lit8 v0, v3, -0x1

    if-ne v2, v0, :cond_dd

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_ce
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$2;

    invoke-direct {v7, p0, v6, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$2;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[F)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c4

    :cond_dd
    add-int v0, v6, v5

    goto :goto_ce

    :cond_e0
    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int v2, v0, v3

    :goto_e7
    if-ge v1, v3, :cond_102

    mul-int v5, v1, v2

    add-int/lit8 v0, v3, -0x1

    if-ne v1, v0, :cond_ff

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    :goto_f1
    new-instance v6, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$3;

    invoke-direct {v6, p0, v5, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$3;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[F)V

    invoke-static {v6}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e7

    :cond_ff
    add-int v0, v5, v2

    goto :goto_f1

    :cond_102
    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_105
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    goto/16 :goto_69

    :cond_112
    move v0, v1

    :goto_113
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v2, :cond_12f

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v3, v0, v2

    move v2, v1

    :goto_11c
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v4, :cond_12c

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v3

    invoke-virtual {v4, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11c

    :cond_12c
    add-int/lit8 v0, v0, 0x1

    goto :goto_113

    :cond_12f
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [F

    move v0, v1

    :goto_136
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v2, :cond_188

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v5, v0, v2

    move v2, v1

    :goto_13f
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v3, :cond_185

    mul-int/lit8 v6, v2, 0x2

    move v3, v1

    :goto_146
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v7, :cond_161

    add-int v7, v5, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    mul-int/lit8 v8, v3, 0x2

    aget v9, p1, v7

    aput v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v7, p1, v7

    aput v7, v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_146

    :cond_161
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v3, v1

    :goto_167
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v7, :cond_182

    add-int v7, v5, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    mul-int/lit8 v8, v3, 0x2

    aget v9, v4, v8

    aput v9, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget v8, v4, v8

    aput v8, p1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_167

    :cond_182
    add-int/lit8 v2, v2, 0x1

    goto :goto_13f

    :cond_185
    add-int/lit8 v0, v0, 0x1

    goto :goto_136

    :cond_188
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [F

    move v0, v1

    :goto_18f
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v2, :cond_105

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v5, v0, v2

    move v2, v1

    :goto_198
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v3, :cond_1dc

    mul-int/lit8 v6, v2, 0x2

    move v3, v1

    :goto_19f
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v7, :cond_1b9

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    mul-int/lit8 v8, v3, 0x2

    aget v9, p1, v7

    aput v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v7, p1, v7

    aput v7, v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_19f

    :cond_1b9
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v3, v1

    :goto_1bf
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v7, :cond_1d9

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    mul-int/lit8 v8, v3, 0x2

    aget v9, v4, v8

    aput v9, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget v8, v4, v8

    aput v8, p1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1bf

    :cond_1d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_198

    :cond_1dc
    add-int/lit8 v0, v0, 0x1

    goto :goto_18f
.end method

.method public strictfp complexForward([[[F)V
    .registers 11

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_7c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr v2, v4

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    if-eq v3, v2, :cond_50

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v4, :cond_31

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_31
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/lit8 v2, v2, 0x8

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    if-le v3, v5, :cond_3e

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/2addr v2, v3

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_3e
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v2, v7, :cond_6a

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_48
    :goto_48
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    new-array v2, v2, [F

    iput-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iput v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    :cond_50
    if-le v3, v5, :cond_75

    iget-boolean v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v2, :cond_75

    invoke-direct {p0, v1, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[[[FZ)V

    invoke-direct {p0, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[[[FZ)V

    :goto_5c
    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    :cond_69
    :goto_69
    return-void

    :cond_6a
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v7, :cond_48

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    goto :goto_48

    :cond_75
    invoke-direct {p0, v1, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[[[FZ)V

    invoke-direct {p0, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[[[FZ)V

    goto :goto_5c

    :cond_7c
    if-le v3, v5, :cond_f8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_f8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-lt v0, v3, :cond_f8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-lt v0, v3, :cond_f8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-lt v0, v3, :cond_f8

    new-array v4, v3, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int v5, v0, v3

    move v2, v1

    :goto_95
    if-ge v2, v3, :cond_b1

    mul-int v6, v2, v5

    add-int/lit8 v0, v3, -0x1

    if-ne v2, v0, :cond_ae

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_9f
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$4;

    invoke-direct {v7, p0, v6, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$4;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[[[F)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_95

    :cond_ae
    add-int v0, v6, v5

    goto :goto_9f

    :cond_b1
    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move v2, v1

    :goto_b5
    if-ge v2, v3, :cond_d1

    mul-int v6, v2, v5

    add-int/lit8 v0, v3, -0x1

    if-ne v2, v0, :cond_ce

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_bf
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;

    invoke-direct {v7, p0, v6, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[[[F)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b5

    :cond_ce
    add-int v0, v6, v5

    goto :goto_bf

    :cond_d1
    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int v2, v0, v3

    :goto_d8
    if-ge v1, v3, :cond_f3

    mul-int v5, v1, v2

    add-int/lit8 v0, v3, -0x1

    if-ne v1, v0, :cond_f0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    :goto_e2
    new-instance v6, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$6;

    invoke-direct {v6, p0, v5, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$6;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[[[F)V

    invoke-static {v6}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d8

    :cond_f0
    add-int v0, v5, v2

    goto :goto_e2

    :cond_f3
    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto/16 :goto_69

    :cond_f8
    move v0, v1

    :goto_f9
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v2, :cond_111

    move v2, v1

    :goto_fe
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v3, :cond_10e

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v4, p1, v0

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_fe

    :cond_10e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f9

    :cond_111
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [F

    move v0, v1

    :goto_118
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v2, :cond_16a

    move v2, v1

    :goto_11d
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v3, :cond_167

    mul-int/lit8 v5, v2, 0x2

    move v3, v1

    :goto_124
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v6, :cond_141

    mul-int/lit8 v6, v3, 0x2

    aget-object v7, p1, v0

    aget-object v7, v7, v3

    aget v7, v7, v5

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    aget-object v7, p1, v0

    aget-object v7, v7, v3

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    aput v7, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_124

    :cond_141
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v3, v1

    :goto_147
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v3, v6, :cond_164

    mul-int/lit8 v6, v3, 0x2

    aget-object v7, p1, v0

    aget-object v7, v7, v3

    aget v8, v4, v6

    aput v8, v7, v5

    aget-object v7, p1, v0

    aget-object v7, v7, v3

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v6, v4, v6

    aput v6, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_147

    :cond_164
    add-int/lit8 v2, v2, 0x1

    goto :goto_11d

    :cond_167
    add-int/lit8 v0, v0, 0x1

    goto :goto_118

    :cond_16a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [F

    move v0, v1

    :goto_171
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v2, :cond_69

    move v2, v1

    :goto_176
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v2, v3, :cond_1c0

    mul-int/lit8 v5, v2, 0x2

    move v3, v1

    :goto_17d
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v6, :cond_19a

    mul-int/lit8 v6, v3, 0x2

    aget-object v7, p1, v3

    aget-object v7, v7, v0

    aget v7, v7, v5

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    aget-object v7, p1, v3

    aget-object v7, v7, v0

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    aput v7, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_17d

    :cond_19a
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v3, v1

    :goto_1a0
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v3, v6, :cond_1bd

    mul-int/lit8 v6, v3, 0x2

    aget-object v7, p1, v3

    aget-object v7, v7, v0

    aget v8, v4, v6

    aput v8, v7, v5

    aget-object v7, p1, v3

    aget-object v7, v7, v0

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v6, v4, v6

    aput v6, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a0

    :cond_1bd
    add-int/lit8 v2, v2, 0x1

    goto :goto_176

    :cond_1c0
    add-int/lit8 v0, v0, 0x1

    goto :goto_171
.end method

.method public strictfp complexInverse([FZ)V
    .registers 14

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_7b

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    if-eq v8, v1, :cond_4f

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_30

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_30
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    if-le v8, v3, :cond_3d

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/2addr v1, v8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_3d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v4, :cond_69

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_47
    :goto_47
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iput v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    :cond_4f
    if-le v8, v3, :cond_74

    iget-boolean v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v1, :cond_74

    invoke-direct {p0, v6, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[FZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[FZ)V

    :goto_5b
    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    :goto_68
    return-void

    :cond_69
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v4, :cond_47

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    goto :goto_47

    :cond_74
    invoke-direct {p0, v6, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[FZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[FZ)V

    goto :goto_5b

    :cond_7b
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    if-le v8, v3, :cond_11a

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_11a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-lt v0, v8, :cond_11a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-lt v0, v8, :cond_11a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-lt v0, v8, :cond_11a

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int v10, v0, v8

    move v7, v6

    :goto_a3
    if-ge v7, v8, :cond_c2

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_bf

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_ad
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$7;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$7;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_a3

    :cond_bf
    add-int v3, v2, v10

    goto :goto_ad

    :cond_c2
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move v7, v6

    :goto_c6
    if-ge v7, v8, :cond_e5

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_e2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_d0
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$8;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$8;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_c6

    :cond_e2
    add-int v3, v2, v10

    goto :goto_d0

    :cond_e5
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int v7, v0, v8

    :goto_ec
    if-ge v6, v8, :cond_10a

    mul-int v2, v6, v7

    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_107

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    :goto_f6
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_ec

    :cond_107
    add-int v3, v2, v7

    goto :goto_f6

    :cond_10a
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_10d
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    goto/16 :goto_68

    :cond_11a
    move v0, v6

    :goto_11b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_137

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v2, v0, v1

    move v1, v6

    :goto_124
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v3, :cond_134

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-virtual {v3, p1, v4, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_124

    :cond_134
    add-int/lit8 v0, v0, 0x1

    goto :goto_11b

    :cond_137
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    move v0, v6

    :goto_13e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_190

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int v4, v0, v1

    move v1, v6

    :goto_147
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_18d

    mul-int/lit8 v5, v1, 0x2

    move v2, v6

    :goto_14e
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v7, :cond_169

    add-int v7, v4, v5

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v8, v2

    add-int/2addr v7, v8

    mul-int/lit8 v8, v2, 0x2

    aget v9, p1, v7

    aput v9, v3, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v7, p1, v7

    aput v7, v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_14e

    :cond_169
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    move v2, v6

    :goto_16f
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v7, :cond_18a

    add-int v7, v4, v5

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int/2addr v8, v2

    add-int/2addr v7, v8

    mul-int/lit8 v8, v2, 0x2

    aget v9, v3, v8

    aput v9, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget v8, v3, v8

    aput v8, p1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_16f

    :cond_18a
    add-int/lit8 v1, v1, 0x1

    goto :goto_147

    :cond_18d
    add-int/lit8 v0, v0, 0x1

    goto :goto_13e

    :cond_190
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    move v0, v6

    :goto_197
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v1, :cond_10d

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    mul-int v4, v0, v1

    move v1, v6

    :goto_1a0
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_1e4

    mul-int/lit8 v5, v1, 0x2

    move v2, v6

    :goto_1a7
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v7, :cond_1c1

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v7, v2

    add-int/2addr v7, v4

    add-int/2addr v7, v5

    mul-int/lit8 v8, v2, 0x2

    aget v9, p1, v7

    aput v9, v3, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v7, p1, v7

    aput v7, v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a7

    :cond_1c1
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    move v2, v6

    :goto_1c7
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v7, :cond_1e1

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    mul-int/2addr v7, v2

    add-int/2addr v7, v4

    add-int/2addr v7, v5

    mul-int/lit8 v8, v2, 0x2

    aget v9, v3, v8

    aput v9, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget v8, v3, v8

    aput v8, p1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c7

    :cond_1e1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a0

    :cond_1e4
    add-int/lit8 v0, v0, 0x1

    goto :goto_197
.end method

.method public strictfp complexInverse([[[FZ)V
    .registers 14

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_7b

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    if-eq v8, v1, :cond_4f

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_30

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_30
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    if-le v8, v3, :cond_3d

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/2addr v1, v8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_3d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v4, :cond_69

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_47
    :goto_47
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iput v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    :cond_4f
    if-le v8, v3, :cond_74

    iget-boolean v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v1, :cond_74

    invoke-direct {p0, v6, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[[[FZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[[[FZ)V

    :goto_5b
    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rowStride:I

    :cond_68
    :goto_68
    return-void

    :cond_69
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v4, :cond_47

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    goto :goto_47

    :cond_74
    invoke-direct {p0, v6, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[[[FZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[[[FZ)V

    goto :goto_5b

    :cond_7b
    if-le v8, v3, :cond_100

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_100

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-lt v0, v8, :cond_100

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-lt v0, v8, :cond_100

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-lt v0, v8, :cond_100

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    div-int v10, v0, v8

    move v7, v6

    :goto_94
    if-ge v7, v8, :cond_b3

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_b0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_9e
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$10;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$10;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_94

    :cond_b0
    add-int v3, v2, v10

    goto :goto_9e

    :cond_b3
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move v7, v6

    :goto_b7
    if-ge v7, v8, :cond_d6

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_d3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    :goto_c1
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$11;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$11;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_b7

    :cond_d3
    add-int v3, v2, v10

    goto :goto_c1

    :cond_d6
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    div-int v7, v0, v8

    :goto_dd
    if-ge v6, v8, :cond_fb

    mul-int v2, v6, v7

    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_f8

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    :goto_e7
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$12;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$12;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_dd

    :cond_f8
    add-int v3, v2, v7

    goto :goto_e7

    :cond_fb
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto/16 :goto_68

    :cond_100
    move v0, v6

    :goto_101
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_119

    move v1, v6

    :goto_106
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_116

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v3, p1, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_106

    :cond_116
    add-int/lit8 v0, v0, 0x1

    goto :goto_101

    :cond_119
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    move v0, v6

    :goto_120
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v0, v1, :cond_172

    move v1, v6

    :goto_125
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_16f

    mul-int/lit8 v4, v1, 0x2

    move v2, v6

    :goto_12c
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v5, :cond_149

    mul-int/lit8 v5, v2, 0x2

    aget-object v7, p1, v0

    aget-object v7, v7, v2

    aget v7, v7, v4

    aput v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v7, p1, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    aput v7, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_12c

    :cond_149
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    move v2, v6

    :goto_14f
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v2, v5, :cond_16c

    mul-int/lit8 v5, v2, 0x2

    aget-object v7, p1, v0

    aget-object v7, v7, v2

    aget v8, v3, v5

    aput v8, v7, v4

    aget-object v7, p1, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    aget v5, v3, v5

    aput v5, v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_14f

    :cond_16c
    add-int/lit8 v1, v1, 0x1

    goto :goto_125

    :cond_16f
    add-int/lit8 v0, v0, 0x1

    goto :goto_120

    :cond_172
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    move v0, v6

    :goto_179
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v0, v1, :cond_68

    move v1, v6

    :goto_17e
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v2, :cond_1c8

    mul-int/lit8 v4, v1, 0x2

    move v2, v6

    :goto_185
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v5, :cond_1a2

    mul-int/lit8 v5, v2, 0x2

    aget-object v7, p1, v2

    aget-object v7, v7, v0

    aget v7, v7, v4

    aput v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v7, p1, v2

    aget-object v7, v7, v0

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    aput v7, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_185

    :cond_1a2
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    move v2, v6

    :goto_1a8
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    if-ge v2, v5, :cond_1c5

    mul-int/lit8 v5, v2, 0x2

    aget-object v7, p1, v2

    aget-object v7, v7, v0

    aget v8, v3, v5

    aput v8, v7, v4

    aget-object v7, p1, v2

    aget-object v7, v7, v0

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    aget v5, v3, v5

    aput v5, v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a8

    :cond_1c5
    add-int/lit8 v1, v1, 0x1

    goto :goto_17e

    :cond_1c8
    add-int/lit8 v0, v0, 0x1

    goto :goto_179
.end method

.method public strictfp realForward([F)V
    .registers 8

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slices, rows and columns must be power of two numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_44

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_25

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_25
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    if-le v0, v3, :cond_32

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_32
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v5, :cond_54

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_3c
    :goto_3c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    :cond_44
    if-le v0, v3, :cond_5f

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_5f

    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_subth1(II[FZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    :goto_53
    return-void

    :cond_54
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v5, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    goto :goto_3c

    :cond_5f
    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_sub1(II[FZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    goto :goto_53
.end method

.method public strictfp realForward([[[F)V
    .registers 8

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slices, rows and columns must be power of two numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_44

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_25

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_25
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    if-le v0, v3, :cond_32

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_32
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v5, :cond_54

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_3c
    :goto_3c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    :cond_44
    if-le v0, v3, :cond_5f

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_5f

    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_subth1(II[[[FZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[[[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    :goto_53
    return-void

    :cond_54
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v5, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    goto :goto_3c

    :cond_5f
    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_sub1(II[[[FZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[[[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    goto :goto_53
.end method

.method public strictfp realForwardFull([F)V
    .registers 8

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_64

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_1d

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_1d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    if-le v0, v3, :cond_2a

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_2a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v5, :cond_4f

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_34
    :goto_34
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    :cond_3c
    if-le v0, v3, :cond_5a

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_5a

    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[FZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    :goto_4b
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fillSymmetric([F)V

    :goto_4e
    return-void

    :cond_4f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v5, :cond_34

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    goto :goto_34

    :cond_5a
    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[FZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    goto :goto_4b

    :cond_64
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->mixedRadixRealForwardFull([F)V

    goto :goto_4e
.end method

.method public strictfp realForwardFull([[[F)V
    .registers 8

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_64

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_1d

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_1d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    if-le v0, v3, :cond_2a

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_2a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v5, :cond_4f

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_34
    :goto_34
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    :cond_3c
    if-le v0, v3, :cond_5a

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_5a

    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[[[FZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[[[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    :goto_4b
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fillSymmetric([[[F)V

    :goto_4e
    return-void

    :cond_4f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v5, :cond_34

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    goto :goto_34

    :cond_5a
    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[[[FZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[[[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    goto :goto_4b

    :cond_64
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->mixedRadixRealForwardFull([[[F)V

    goto :goto_4e
.end method

.method public strictfp realInverse([FZ)V
    .registers 9

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slices, rows and columns must be power of two numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_44

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_25

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_25
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    if-le v0, v3, :cond_32

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_32
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v5, :cond_54

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_3c
    :goto_3c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    :cond_44
    if-le v0, v3, :cond_5f

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_5f

    invoke-direct {p0, v4, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[FZ)V

    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_subth1(II[FZ)V

    :goto_53
    return-void

    :cond_54
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v5, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    goto :goto_3c

    :cond_5f
    invoke-direct {p0, v4, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[FZ)V

    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_sub1(II[FZ)V

    goto :goto_53
.end method

.method public strictfp realInverse([[[FZ)V
    .registers 9

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slices, rows and columns must be power of two numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_44

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_25

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_25
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    if-le v0, v3, :cond_32

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_32
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v5, :cond_54

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_3c
    :goto_3c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    :cond_44
    if-le v0, v3, :cond_5f

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_5f

    invoke-direct {p0, v4, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[[[FZ)V

    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_subth1(II[[[FZ)V

    :goto_53
    return-void

    :cond_54
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v5, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    goto :goto_3c

    :cond_5f
    invoke-direct {p0, v4, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[[[FZ)V

    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_sub1(II[[[FZ)V

    goto :goto_53
.end method

.method public strictfp realInverseFull([FZ)V
    .registers 8

    const/4 v4, 0x4

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_63

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_3b

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_1c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_1c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    if-le v0, v3, :cond_29

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_29
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v4, :cond_4e

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_33
    :goto_33
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    :cond_3b
    if-le v0, v3, :cond_59

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_59

    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[FZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    :goto_4a
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fillSymmetric([F)V

    :goto_4d
    return-void

    :cond_4e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v4, :cond_33

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    goto :goto_33

    :cond_59
    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[FZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[F)V

    goto :goto_4a

    :cond_63
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->mixedRadixRealInverseFull([FZ)V

    goto :goto_4d
.end method

.method public strictfp realInverseFull([[[FZ)V
    .registers 8

    const/4 v4, 0x4

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_63

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_3b

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    if-ge v1, v2, :cond_1c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_1c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    if-le v0, v3, :cond_29

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_29
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ne v1, v4, :cond_4e

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    :cond_33
    :goto_33
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->oldNthreads:I

    :cond_3b
    if-le v0, v3, :cond_59

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->useThreads:Z

    if-eqz v0, :cond_59

    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[[[FZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[[[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    :goto_4a
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->fillSymmetric([[[F)V

    :goto_4d
    return-void

    :cond_4e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->columns:I

    if-ge v1, v4, :cond_33

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->nt:I

    goto :goto_33

    :cond_59
    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->xdft3da_sub2(II[[[FZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->cdft3db_sub(I[[[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->rdft3d_sub(I[[[F)V

    goto :goto_4a

    :cond_63
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->mixedRadixRealInverseFull([[[FZ)V

    goto :goto_4d
.end method
