.class public Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;
.super Ljava/lang/Object;


# instance fields
.field private columns:I

.field private fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

.field private fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

.field private isPowerOfTwo:Z

.field private nt:I

.field private oldNthreads:I

.field private rows:I

.field private t:[F

.field private useThreads:Z


# direct methods
.method public strictfp constructor <init>(II)V
    .registers 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    iput-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-le p1, v2, :cond_d

    if-gt p2, v2, :cond_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rows and columns must be greater than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int v0, p1, p2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_2D()I

    move-result v1

    if-lt v0, v1, :cond_23

    iput-boolean v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    :cond_23
    invoke-static {p1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {p2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_52

    iput-boolean v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    mul-int/lit8 v0, v0, 0x8

    mul-int/2addr v0, p1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    mul-int/lit8 v0, p2, 0x2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    mul-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_60

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    :cond_4c
    :goto_4c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    :cond_52
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    if-ne p1, p2, :cond_6f

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    :goto_5f
    return-void

    :cond_60
    mul-int/lit8 v0, p2, 0x2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    mul-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_4c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    goto :goto_4c

    :cond_6f
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-direct {v0, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    goto :goto_5f
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    return-object v0
.end method

.method static synthetic access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    return v0
.end method

.method static synthetic access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    return-object v0
.end method

.method static synthetic access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    return v0
.end method

.method static synthetic access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)[F
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    return-object v0
.end method

.method private strictfp cdft2d_sub(I[FZ)V
    .registers 14

    const/4 v3, 0x2

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1ca

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-le v0, v2, :cond_105

    move v0, v1

    :goto_b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v0, v2, :cond_38e

    move v2, v1

    :goto_10
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_74

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    mul-int/lit8 v4, v2, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v9, p2, v3

    aput v9, v8, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v3, 0x1

    aget v9, p2, v9

    aput v9, v8, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v8, v3, 0x2

    aget v8, p2, v8

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v3, 0x3

    aget v8, p2, v8

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v3, 0x4

    aget v5, p2, v5

    aput v5, v4, v6

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v6, v3, 0x5

    aget v6, p2, v6

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v3, 0x6

    aget v5, p2, v5

    aput v5, v4, v7

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v3, v3, 0x7

    aget v3, p2, v3

    aput v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_74
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    invoke-virtual {v2, v3, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v2, v1

    :goto_9d
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_101

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    mul-int/lit8 v4, v2, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v8, v8, v4

    aput v8, p2, v3

    add-int/lit8 v8, v3, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v9, v4

    aput v4, p2, v8

    add-int/lit8 v4, v3, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v8, v8, v5

    aput v8, p2, v4

    add-int/lit8 v4, v3, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v8, v5

    aput v5, p2, v4

    add-int/lit8 v4, v3, 0x4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v5, v5, v6

    aput v5, p2, v4

    add-int/lit8 v4, v3, 0x5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, p2, v4

    add-int/lit8 v4, v3, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v5, v5, v7

    aput v5, p2, v4

    add-int/lit8 v3, v3, 0x7

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v7, 0x1

    aget v4, v4, v5

    aput v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9d

    :cond_101
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_b

    :cond_105
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ne v0, v2, :cond_186

    move v0, v1

    :goto_10a
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_13f

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    mul-int/lit8 v3, v0, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v6, p2, v2

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v2, 0x1

    aget v6, p2, v6

    aput v6, v5, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v2, 0x2

    aget v5, p2, v5

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x3

    aget v2, p2, v2

    aput v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_10a

    :cond_13f
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    invoke-virtual {v0, v2, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    :goto_151
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v0, :cond_38e

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v0, v1

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v4, v4, v2

    aput v4, p2, v0

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v5, v2

    aput v2, p2, v4

    add-int/lit8 v2, v0, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v4, v4, v3

    aput v4, p2, v2

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    aput v2, p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_151

    :cond_186
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ne v0, v3, :cond_38e

    move v0, v1

    :goto_18b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_1a7

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    mul-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v5, p2, v2

    aput v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    aget v2, p2, v2

    aput v2, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_18b

    :cond_1a7
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    invoke-virtual {v0, v2, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    :goto_1ae
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v0, :cond_38e

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v0, v1

    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v3, v3, v2

    aput v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v3, v2

    aput v2, p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ae

    :cond_1ca
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-le v0, v2, :cond_2c9

    move v0, v1

    :goto_1cf
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v0, v2, :cond_38e

    move v2, v1

    :goto_1d4
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_238

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    mul-int/lit8 v4, v2, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v9, p2, v3

    aput v9, v8, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v3, 0x1

    aget v9, p2, v9

    aput v9, v8, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v8, v3, 0x2

    aget v8, p2, v8

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v3, 0x3

    aget v8, p2, v8

    aput v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v3, 0x4

    aget v5, p2, v5

    aput v5, v4, v6

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v6, v3, 0x5

    aget v6, p2, v6

    aput v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v3, 0x6

    aget v5, p2, v5

    aput v5, v4, v7

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v3, v3, 0x7

    aget v3, p2, v3

    aput v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d4

    :cond_238
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v2, v1

    :goto_261
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_2c5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    mul-int/lit8 v4, v2, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v8, v8, v4

    aput v8, p2, v3

    add-int/lit8 v8, v3, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v9, v4

    aput v4, p2, v8

    add-int/lit8 v4, v3, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v8, v8, v5

    aput v8, p2, v4

    add-int/lit8 v4, v3, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v8, v5

    aput v5, p2, v4

    add-int/lit8 v4, v3, 0x4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v5, v5, v6

    aput v5, p2, v4

    add-int/lit8 v4, v3, 0x5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, p2, v4

    add-int/lit8 v4, v3, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v5, v5, v7

    aput v5, p2, v4

    add-int/lit8 v3, v3, 0x7

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v7, 0x1

    aget v4, v4, v5

    aput v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_261

    :cond_2c5
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_1cf

    :cond_2c9
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ne v0, v2, :cond_34a

    move v0, v1

    :goto_2ce
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_303

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    mul-int/lit8 v3, v0, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v6, p2, v2

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v2, 0x1

    aget v6, p2, v6

    aput v6, v5, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v2, 0x2

    aget v5, p2, v5

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x3

    aget v2, p2, v2

    aput v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2ce

    :cond_303
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    invoke-virtual {v0, v2, v1, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v3, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    :goto_315
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v0, :cond_38e

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v0, v1

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v4, v4, v2

    aput v4, p2, v0

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v5, v2

    aput v2, p2, v4

    add-int/lit8 v2, v0, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v4, v4, v3

    aput v4, p2, v2

    add-int/lit8 v0, v0, 0x3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    aput v2, p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_315

    :cond_34a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ne v0, v3, :cond_38e

    move v0, v1

    :goto_34f
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_36b

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    mul-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v5, p2, v2

    aput v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    aget v2, p2, v2

    aput v2, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_34f

    :cond_36b
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    invoke-virtual {v0, v2, v1, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    :goto_372
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v0, :cond_38e

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v0, v1

    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v3, v3, v2

    aput v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v3, v2

    aput v2, p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_372

    :cond_38e
    return-void
.end method

.method private strictfp cdft2d_sub(I[[FZ)V
    .registers 14

    const/4 v2, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1e2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-le v0, v2, :cond_11f

    move v0, v1

    :goto_d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v0, v2, :cond_3bc

    move v2, v1

    :goto_12
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_82

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget-object v8, p2, v2

    aget v8, v8, v0

    aput v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v8, p2, v2

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    aput v8, v7, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget-object v7, p2, v2

    add-int/lit8 v8, v0, 0x2

    aget v7, v7, v8

    aput v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget-object v7, p2, v2

    add-int/lit8 v8, v0, 0x3

    aget v7, v7, v8

    aput v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget-object v4, p2, v2

    add-int/lit8 v7, v0, 0x4

    aget v4, v4, v7

    aput v4, v3, v5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v4, v5, 0x1

    aget-object v5, p2, v2

    add-int/lit8 v7, v0, 0x5

    aget v5, v5, v7

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget-object v4, p2, v2

    add-int/lit8 v5, v0, 0x6

    aget v4, v4, v5

    aput v4, v3, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v4, v6, 0x1

    aget-object v5, p2, v2

    add-int/lit8 v6, v0, 0x7

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_82
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    invoke-virtual {v2, v3, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v2, v1

    :goto_ab
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_11b

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    aget-object v7, p2, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v8, v8, v3

    aput v8, v7, v0

    aget-object v7, p2, v2

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v9, v3

    aput v3, v7, v8

    aget-object v3, p2, v2

    add-int/lit8 v7, v0, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v8, v8, v4

    aput v8, v3, v7

    aget-object v3, p2, v2

    add-int/lit8 v7, v0, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v8, v4

    aput v4, v3, v7

    aget-object v3, p2, v2

    add-int/lit8 v4, v0, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v7, v7, v5

    aput v7, v3, v4

    aget-object v3, p2, v2

    add-int/lit8 v4, v0, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    aput v5, v3, v4

    aget-object v3, p2, v2

    add-int/lit8 v4, v0, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v5, v5, v6

    aput v5, v3, v4

    aget-object v3, p2, v2

    add-int/lit8 v4, v0, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    :cond_11b
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_d

    :cond_11f
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ne v0, v2, :cond_19f

    move v0, v1

    :goto_124
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_158

    mul-int/lit8 v2, v0, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget-object v5, p2, v0

    aget v5, v5, v1

    aput v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget-object v5, p2, v0

    aget v5, v5, v6

    aput v5, v4, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget-object v4, p2, v0

    aget v4, v4, v7

    aput v4, v2, v3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p2, v0

    aget v4, v4, v8

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_124

    :cond_158
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    invoke-virtual {v0, v2, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v0, v1

    :goto_16b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_3bc

    mul-int/lit8 v2, v0, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    aget-object v4, p2, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v5, v5, v2

    aput v5, v4, v1

    aget-object v4, p2, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v5, v2

    aput v2, v4, v6

    aget-object v2, p2, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v4, v4, v3

    aput v4, v2, v7

    aget-object v2, p2, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v4, v3

    aput v3, v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_16b

    :cond_19f
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ne v0, v7, :cond_3bc

    move v0, v1

    :goto_1a4
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_1bf

    mul-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget-object v4, p2, v0

    aget v4, v4, v1

    aput v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget-object v4, p2, v0

    aget v4, v4, v6

    aput v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a4

    :cond_1bf
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    invoke-virtual {v0, v2, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v0, v1

    :goto_1c7
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_3bc

    mul-int/lit8 v2, v0, 0x2

    aget-object v3, p2, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v4, v4, v2

    aput v4, v3, v1

    aget-object v3, p2, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v4, v2

    aput v2, v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c7

    :cond_1e2
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-le v0, v2, :cond_2f9

    move v0, v1

    :goto_1e7
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v0, v2, :cond_3bc

    move v2, v1

    :goto_1ec
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_25c

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget-object v8, p2, v2

    aget v8, v8, v0

    aput v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v8, p2, v2

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    aput v8, v7, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget-object v7, p2, v2

    add-int/lit8 v8, v0, 0x2

    aget v7, v7, v8

    aput v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget-object v7, p2, v2

    add-int/lit8 v8, v0, 0x3

    aget v7, v7, v8

    aput v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget-object v4, p2, v2

    add-int/lit8 v7, v0, 0x4

    aget v4, v4, v7

    aput v4, v3, v5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v4, v5, 0x1

    aget-object v5, p2, v2

    add-int/lit8 v7, v0, 0x5

    aget v5, v5, v7

    aput v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget-object v4, p2, v2

    add-int/lit8 v5, v0, 0x6

    aget v4, v4, v5

    aput v4, v3, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v4, v6, 0x1

    aget-object v5, p2, v2

    add-int/lit8 v6, v0, 0x7

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1ec

    :cond_25c
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v2, v1

    :goto_285
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_2f5

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    aget-object v7, p2, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v8, v8, v3

    aput v8, v7, v0

    aget-object v7, p2, v2

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v9, v3

    aput v3, v7, v8

    aget-object v3, p2, v2

    add-int/lit8 v7, v0, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v8, v8, v4

    aput v8, v3, v7

    aget-object v3, p2, v2

    add-int/lit8 v7, v0, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v8, v4

    aput v4, v3, v7

    aget-object v3, p2, v2

    add-int/lit8 v4, v0, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v7, v7, v5

    aput v7, v3, v4

    aget-object v3, p2, v2

    add-int/lit8 v4, v0, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    aput v5, v3, v4

    aget-object v3, p2, v2

    add-int/lit8 v4, v0, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v5, v5, v6

    aput v5, v3, v4

    aget-object v3, p2, v2

    add-int/lit8 v4, v0, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_285

    :cond_2f5
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_1e7

    :cond_2f9
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ne v0, v2, :cond_379

    move v0, v1

    :goto_2fe
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_332

    mul-int/lit8 v2, v0, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget-object v5, p2, v0

    aget v5, v5, v1

    aput v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget-object v5, p2, v0

    aget v5, v5, v6

    aput v5, v4, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget-object v4, p2, v0

    aget v4, v4, v7

    aput v4, v2, v3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p2, v0

    aget v4, v4, v8

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2fe

    :cond_332
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    invoke-virtual {v0, v2, v1, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v3, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v0, v1

    :goto_345
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_3bc

    mul-int/lit8 v2, v0, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    aget-object v4, p2, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v5, v5, v2

    aput v5, v4, v1

    aget-object v4, p2, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v5, v2

    aput v2, v4, v6

    aget-object v2, p2, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v4, v4, v3

    aput v4, v2, v7

    aget-object v2, p2, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v4, v3

    aput v3, v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_345

    :cond_379
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ne v0, v7, :cond_3bc

    move v0, v1

    :goto_37e
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_399

    mul-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget-object v4, p2, v0

    aget v4, v4, v1

    aput v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget-object v4, p2, v0

    aget v4, v4, v6

    aput v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_37e

    :cond_399
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    invoke-virtual {v0, v2, v1, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v0, v1

    :goto_3a1
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_3bc

    mul-int/lit8 v2, v0, 0x2

    aget-object v3, p2, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    aget v4, v4, v2

    aput v4, v3, v1

    aget-object v3, p2, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    add-int/lit8 v2, v2, 0x1

    aget v2, v4, v2

    aput v2, v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a1

    :cond_3bc
    return-void
.end method

.method private strictfp cdft2d_subth(I[FZ)V
    .registers 14

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v3, 0x4

    if-ne v1, v2, :cond_2a

    shr-int/lit8 v0, v0, 0x1

    move v8, v0

    :goto_11
    new-array v9, v3, [Ljava/util/concurrent/Future;

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v3, :cond_38

    mul-int v5, v8, v4

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$29;

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$29;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;IIII[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v3, 0x4

    if-ge v1, v2, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    shr-int/lit8 v3, v1, 0x1

    shr-int/lit8 v0, v0, 0x2

    move v8, v0

    goto :goto_11

    :cond_38
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void

    :cond_3c
    move v8, v0

    goto :goto_11
.end method

.method private strictfp cdft2d_subth(I[[FZ)V
    .registers 14

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v3, 0x4

    if-ne v1, v2, :cond_2a

    shr-int/lit8 v0, v0, 0x1

    move v8, v0

    :goto_11
    new-array v9, v3, [Ljava/util/concurrent/Future;

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v3, :cond_38

    mul-int v5, v8, v4

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$30;

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$30;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;IIII[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v3, 0x4

    if-ge v1, v2, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    shr-int/lit8 v3, v1, 0x1

    shr-int/lit8 v0, v0, 0x2

    move v8, v0

    goto :goto_11

    :cond_38
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void

    :cond_3c
    move v8, v0

    goto :goto_11
.end method

.method private strictfp fillSymmetric([F)V
    .registers 16

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v9, v0, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int/lit8 v10, v0, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    const/4 v0, 0x1

    if-lt v1, v0, :cond_42

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int v2, v1, v0

    mul-int/lit8 v3, v2, 0x2

    const/4 v0, 0x0

    :goto_17
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v0, v4, :cond_3e

    add-int v4, v3, v0

    add-int v5, v2, v0

    aget v5, p1, v5

    aput v5, p1, v4

    add-int v4, v2, v0

    const/4 v5, 0x0

    aput v5, p1, v4

    add-int v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    add-int v5, v2, v0

    add-int/lit8 v5, v5, 0x1

    aget v5, p1, v5

    aput v5, p1, v4

    add-int v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    aput v5, p1, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_17

    :cond_3e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    :cond_42
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v11

    const/4 v0, 0x1

    if-le v11, v0, :cond_b2

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_b2

    if-lt v10, v11, :cond_b2

    new-array v12, v11, [Ljava/util/concurrent/Future;

    div-int v13, v10, v11

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v4, v0, 0x2

    const/4 v0, 0x0

    move v8, v0

    :goto_59
    if-ge v8, v11, :cond_89

    if-nez v8, :cond_81

    mul-int v0, v8, v13

    add-int/lit8 v2, v0, 0x1

    :goto_61
    mul-int v0, v8, v13

    add-int v3, v0, v13

    mul-int v6, v8, v13

    add-int/lit8 v0, v11, -0x1

    if-ne v8, v0, :cond_84

    mul-int v0, v8, v13

    add-int/2addr v0, v13

    add-int/lit8 v7, v0, 0x1

    :goto_70
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;III[FII)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v12, v8

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_59

    :cond_81
    mul-int v2, v8, v13

    goto :goto_61

    :cond_84
    mul-int v0, v8, v13

    add-int v7, v0, v13

    goto :goto_70

    :cond_89
    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_8c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v1, 0x1

    aget v1, p1, v1

    neg-float v1, v1

    aput v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    mul-int v0, v10, v9

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    add-int/2addr v1, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    neg-float v2, v2

    aput v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    aput v2, p1, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    return-void

    :cond_b2
    const/4 v0, 0x1

    :goto_b3
    if-ge v0, v10, :cond_d1

    mul-int v1, v0, v9

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v2, v0

    mul-int/2addr v2, v9

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    add-int/2addr v3, v1

    add-int/lit8 v4, v2, 0x1

    aget v4, p1, v4

    aput v4, p1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    aget v2, p1, v2

    neg-float v2, v2

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    :cond_d1
    const/4 v0, 0x1

    move v1, v0

    :goto_d3
    if-ge v1, v10, :cond_100

    mul-int v2, v1, v9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int v3, v0, v9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    add-int/lit8 v0, v0, 0x2

    :goto_e2
    if-ge v0, v9, :cond_fc

    add-int v4, v2, v0

    sub-int v5, v3, v0

    aget v5, p1, v5

    aput v5, p1, v4

    add-int v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    sub-int v5, v3, v0

    add-int/lit8 v5, v5, 0x1

    aget v5, p1, v5

    neg-float v5, v5

    aput v5, p1, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_e2

    :cond_fc
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d3

    :cond_100
    const/4 v0, 0x0

    :goto_101
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_8c

    mul-int v2, v0, v9

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v1, v0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    rem-int/2addr v1, v3

    mul-int v3, v1, v9

    const/4 v1, 0x0

    :goto_112
    if-ge v1, v9, :cond_12a

    add-int v4, v2, v1

    sub-int v5, v9, v1

    rem-int/2addr v5, v9

    add-int/2addr v5, v3

    aget v6, p1, v4

    aput v6, p1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    neg-float v4, v4

    aput v4, p1, v5

    add-int/lit8 v1, v1, 0x2

    goto :goto_112

    :cond_12a
    add-int/lit8 v0, v0, 0x1

    goto :goto_101
.end method

.method private strictfp fillSymmetric([[F)V
    .registers 15

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v5, v0, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int/lit8 v9, v0, 0x2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v10

    const/4 v0, 0x1

    if-le v10, v0, :cond_7f

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_7f

    if-lt v9, v10, :cond_7f

    new-array v11, v10, [Ljava/util/concurrent/Future;

    div-int v12, v9, v10

    const/4 v0, 0x0

    move v8, v0

    :goto_1b
    if-ge v8, v10, :cond_4b

    if-nez v8, :cond_43

    mul-int v0, v8, v12

    add-int/lit8 v2, v0, 0x1

    :goto_23
    mul-int v0, v8, v12

    add-int v3, v0, v12

    mul-int v6, v8, v12

    add-int/lit8 v0, v10, -0x1

    if-ne v8, v0, :cond_46

    mul-int v0, v8, v12

    add-int/2addr v0, v12

    add-int/lit8 v7, v0, 0x1

    :goto_32
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$32;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$32;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[[FIII)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v8

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1b

    :cond_43
    mul-int v2, v8, v12

    goto :goto_23

    :cond_46
    mul-int v0, v8, v12

    add-int v7, v0, v12

    goto :goto_32

    :cond_4b
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_4e
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget v2, v2, v3

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aget-object v0, p1, v9

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    aget-object v2, p1, v9

    const/4 v3, 0x1

    aget v2, v2, v3

    neg-float v2, v2

    aput v2, v0, v1

    aget-object v0, p1, v9

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    aget-object v0, p1, v9

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void

    :cond_7f
    const/4 v0, 0x1

    :goto_80
    if-ge v0, v9, :cond_a1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v1, v0

    aget-object v2, p1, v0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    aget-object v4, p1, v1

    const/4 v6, 0x1

    aget v4, v4, v6

    aput v4, v2, v3

    aget-object v2, p1, v0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    add-int/lit8 v3, v3, 0x1

    aget-object v1, p1, v1

    const/4 v4, 0x0

    aget v1, v1, v4

    neg-float v1, v1

    aput v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    :cond_a1
    const/4 v0, 0x1

    move v1, v0

    :goto_a3
    if-ge v1, v9, :cond_cd

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int v2, v0, v1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    add-int/lit8 v0, v0, 0x2

    :goto_ad
    if-ge v0, v5, :cond_c9

    sub-int v3, v5, v0

    aget-object v4, p1, v1

    aget-object v6, p1, v2

    aget v6, v6, v3

    aput v6, v4, v0

    aget-object v4, p1, v1

    add-int/lit8 v6, v0, 0x1

    aget-object v7, p1, v2

    add-int/lit8 v3, v3, 0x1

    aget v3, v7, v3

    neg-float v3, v3

    aput v3, v4, v6

    add-int/lit8 v0, v0, 0x2

    goto :goto_ad

    :cond_c9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a3

    :cond_cd
    const/4 v0, 0x0

    :goto_ce
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_4e

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    rem-int v2, v1, v2

    const/4 v1, 0x0

    :goto_dc
    if-ge v1, v5, :cond_f9

    sub-int v3, v5, v1

    rem-int/2addr v3, v5

    aget-object v4, p1, v2

    aget-object v6, p1, v0

    aget v6, v6, v1

    aput v6, v4, v3

    aget-object v4, p1, v2

    add-int/lit8 v3, v3, 0x1

    aget-object v6, p1, v0

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    neg-float v6, v6

    aput v6, v4, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_dc

    :cond_f9
    add-int/lit8 v0, v0, 0x1

    goto :goto_ce
.end method

.method private strictfp mixedRadixRealForwardFull([F)V
    .registers 20

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v12, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v11, v2, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v11, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[F

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v15

    const/4 v2, 0x1

    if-le v15, v2, :cond_165

    move-object/from16 v0, p0

    iget-boolean v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v2, :cond_165

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v2, v15, :cond_165

    if-lt v11, v15, :cond_165

    new-array v0, v15, [Ljava/util/concurrent/Future;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int v4, v2, v15

    const/4 v2, 0x0

    move v3, v2

    :goto_41
    if-ge v3, v15, :cond_63

    mul-int v5, v3, v4

    add-int/lit8 v2, v15, -0x1

    if-ne v3, v2, :cond_60

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_4d
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v5, v2, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$13;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[F)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v16, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_41

    :cond_60
    add-int v2, v5, v4

    goto :goto_4d

    :cond_63
    invoke-static/range {v16 .. v16}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v2, 0x0

    :goto_67
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_7c

    const/4 v3, 0x0

    aget-object v3, v6, v3

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v2

    aget v4, p1, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    :cond_7c
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    div-int v9, v11, v15

    const/4 v2, 0x0

    move v8, v2

    :goto_8a
    if-ge v8, v15, :cond_ac

    mul-int v2, v8, v9

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v2, v15, -0x1

    if-ne v8, v2, :cond_a9

    add-int/lit8 v5, v11, -0x1

    :goto_96
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$14;

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$14;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[[F[F)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v16, v8

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_8a

    :cond_a9
    add-int v5, v4, v9

    goto :goto_96

    :cond_ac
    invoke-static/range {v16 .. v16}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_101

    const/4 v2, 0x0

    :goto_b8
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_d0

    add-int/lit8 v3, v11, -0x1

    aget-object v3, v6, v3

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b8

    :cond_d0
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v3, v11, -0x1

    aget-object v3, v6, v3

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    :goto_db
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int v17, v2, v15

    const/4 v2, 0x0

    :goto_e2
    if-ge v2, v15, :cond_136

    mul-int v9, v2, v17

    add-int/lit8 v3, v15, -0x1

    if-ne v2, v3, :cond_133

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_ee
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$15;

    move-object/from16 v8, p0

    move-object/from16 v13, p1

    move-object v14, v6

    invoke-direct/range {v7 .. v14}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$15;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;IIII[F[[F)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v16, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e2

    :cond_101
    const/4 v2, 0x0

    :goto_102
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_127

    mul-int/lit8 v3, v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/lit8 v5, v11, -0x1

    aget-object v7, v6, v5

    mul-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v4

    aget v8, p1, v8

    aput v8, v7, v3

    aget-object v5, v6, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    aput v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_102

    :cond_127
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v3, v11, -0x1

    aget-object v3, v6, v3

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    goto :goto_db

    :cond_133
    add-int v10, v9, v17

    goto :goto_ee

    :cond_136
    invoke-static/range {v16 .. v16}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v2, 0x0

    move v9, v2

    :goto_13b
    if-ge v9, v15, :cond_161

    mul-int v2, v9, v17

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v2, v15, -0x1

    if-ne v9, v2, :cond_15e

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_149
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$16;

    move-object/from16 v3, p0

    move v6, v12

    move v7, v11

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$16;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;IIII[F)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v16, v9

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_13b

    :cond_15e
    add-int v5, v4, v17

    goto :goto_149

    :cond_161
    invoke-static/range {v16 .. v16}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_164
    return-void

    :cond_165
    const/4 v2, 0x0

    :goto_166
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_17d

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v2

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_166

    :cond_17d
    const/4 v2, 0x0

    :goto_17e
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_193

    const/4 v3, 0x0

    aget-object v3, v6, v3

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v2

    aget v4, p1, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17e

    :cond_193
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    const/4 v2, 0x1

    move v3, v2

    :goto_19f
    add-int/lit8 v2, v11, -0x1

    if-ge v3, v2, :cond_1d4

    mul-int/lit8 v4, v3, 0x2

    const/4 v2, 0x0

    :goto_1a6
    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v5, :cond_1c7

    mul-int/lit8 v5, v2, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v7, v2

    add-int/2addr v7, v4

    aget-object v8, v6, v3

    aget v9, p1, v7

    aput v9, v8, v5

    aget-object v8, v6, v3

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v7, p1, v7

    aput v7, v8, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a6

    :cond_1c7
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v4, v6, v3

    invoke-virtual {v2, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_19f

    :cond_1d4
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_224

    const/4 v2, 0x0

    :goto_1dd
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_1f5

    add-int/lit8 v3, v11, -0x1

    aget-object v3, v6, v3

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1dd

    :cond_1f5
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v3, v11, -0x1

    aget-object v3, v6, v3

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    :goto_200
    const/4 v2, 0x0

    :goto_201
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_259

    mul-int/lit8 v4, v2, 0x2

    const/4 v3, 0x0

    :goto_20a
    if-ge v3, v11, :cond_256

    mul-int/lit8 v5, v3, 0x2

    mul-int v7, v2, v12

    add-int/2addr v5, v7

    aget-object v7, v6, v3

    aget v7, v7, v4

    aput v7, p1, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v7, v6, v3

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    aput v7, p1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_20a

    :cond_224
    const/4 v2, 0x0

    :goto_225
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_24a

    mul-int/lit8 v3, v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/lit8 v5, v11, -0x1

    aget-object v7, v6, v5

    mul-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v4

    aget v8, p1, v8

    aput v8, v7, v3

    aget-object v5, v6, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    aput v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_225

    :cond_24a
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v3, v11, -0x1

    aget-object v3, v6, v3

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    goto :goto_200

    :cond_256
    add-int/lit8 v2, v2, 0x1

    goto :goto_201

    :cond_259
    const/4 v2, 0x1

    :goto_25a
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_164

    mul-int v4, v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    mul-int v5, v3, v12

    move v3, v11

    :goto_26c
    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v3, v6, :cond_29c

    mul-int/lit8 v6, v3, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    sub-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0x2

    aget v8, p1, v7

    aput v8, p1, v6

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v7, p1, v7

    neg-float v7, v7

    aput v7, p1, v8

    add-int v7, v4, v6

    sub-int v6, v5, v6

    aget v8, p1, v6

    aput v8, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v6, p1, v6

    neg-float v6, v6

    aput v6, p1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_26c

    :cond_29c
    add-int/lit8 v2, v2, 0x1

    goto :goto_25a
.end method

.method private strictfp mixedRadixRealForwardFull([[F)V
    .registers 16

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v9, v0, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    filled-new-array {v9, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v12

    const/4 v0, 0x1

    if-le v12, v0, :cond_126

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_126

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v0, v12, :cond_126

    if-lt v9, v12, :cond_126

    new-array v13, v12, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int v2, v0, v12

    const/4 v0, 0x0

    move v1, v0

    :goto_2f
    if-ge v1, v12, :cond_4b

    mul-int v3, v1, v2

    add-int/lit8 v0, v12, -0x1

    if-ne v1, v0, :cond_48

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_39
    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$9;

    invoke-direct {v5, p0, v3, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$9;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[[F)V

    invoke-static {v5}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    :cond_48
    add-int v0, v3, v2

    goto :goto_39

    :cond_4b
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    :goto_4f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_60

    const/4 v1, 0x0

    aget-object v1, v4, v1

    aget-object v2, p1, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_60
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    const/4 v1, 0x0

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    div-int v7, v9, v12

    const/4 v0, 0x0

    move v6, v0

    :goto_6c
    if-ge v6, v12, :cond_8c

    mul-int v0, v6, v7

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v12, -0x1

    if-ne v6, v0, :cond_89

    add-int/lit8 v3, v9, -0x1

    :goto_78
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$10;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$10;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[[F[[F)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_6c

    :cond_89
    add-int v3, v2, v7

    goto :goto_78

    :cond_8c
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d1

    const/4 v0, 0x0

    :goto_96
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_a8

    add-int/lit8 v1, v9, -0x1

    aget-object v1, v4, v1

    aget-object v2, p1, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    :cond_a8
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v1, v9, -0x1

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    :goto_b1
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int v1, v0, v12

    const/4 v0, 0x0

    :goto_b6
    if-ge v0, v12, :cond_ff

    mul-int v7, v0, v1

    add-int/lit8 v2, v12, -0x1

    if-ne v0, v2, :cond_fc

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_c0
    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$11;

    move-object v6, p0

    move-object v10, p1

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$11;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;III[[F[[F)V

    invoke-static {v5}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :cond_d1
    const/4 v0, 0x0

    :goto_d2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_f2

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v9, -0x1

    aget-object v3, v4, v2

    aget-object v5, p1, v0

    mul-int/lit8 v6, v2, 0x2

    aget v5, v5, v6

    aput v5, v3, v1

    aget-object v2, v4, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p1, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    aput v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_d2

    :cond_f2
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v1, v9, -0x1

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    goto :goto_b1

    :cond_fc
    add-int v8, v7, v1

    goto :goto_c0

    :cond_ff
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    :goto_103
    if-ge v0, v12, :cond_122

    mul-int v2, v0, v1

    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v2, v12, -0x1

    if-ne v0, v2, :cond_11f

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_10f
    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;

    move-object v6, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;III[[F)V

    invoke-static {v5}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_103

    :cond_11f
    add-int v8, v7, v1

    goto :goto_10f

    :cond_122
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_125
    return-void

    :cond_126
    const/4 v0, 0x0

    :goto_127
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_135

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_127

    :cond_135
    const/4 v0, 0x0

    :goto_136
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_147

    const/4 v1, 0x0

    aget-object v1, v4, v1

    aget-object v2, p1, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_136

    :cond_147
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    const/4 v1, 0x0

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    const/4 v0, 0x1

    move v1, v0

    :goto_151
    add-int/lit8 v0, v9, -0x1

    if-ge v1, v0, :cond_180

    mul-int/lit8 v2, v1, 0x2

    const/4 v0, 0x0

    :goto_158
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v3, :cond_175

    mul-int/lit8 v3, v0, 0x2

    aget-object v5, v4, v1

    aget-object v6, p1, v0

    aget v6, v6, v2

    aput v6, v5, v3

    aget-object v5, v4, v1

    add-int/lit8 v3, v3, 0x1

    aget-object v6, p1, v0

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    aput v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_158

    :cond_175
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_151

    :cond_180
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1c5

    const/4 v0, 0x0

    :goto_187
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_199

    add-int/lit8 v1, v9, -0x1

    aget-object v1, v4, v1

    aget-object v2, p1, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_187

    :cond_199
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v1, v9, -0x1

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForwardFull([F)V

    :goto_1a2
    const/4 v0, 0x0

    :goto_1a3
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_1f3

    mul-int/lit8 v2, v0, 0x2

    const/4 v1, 0x0

    :goto_1aa
    if-ge v1, v9, :cond_1f0

    mul-int/lit8 v3, v1, 0x2

    aget-object v5, p1, v0

    aget-object v6, v4, v1

    aget v6, v6, v2

    aput v6, v5, v3

    aget-object v5, p1, v0

    add-int/lit8 v3, v3, 0x1

    aget-object v6, v4, v1

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    aput v6, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1aa

    :cond_1c5
    const/4 v0, 0x0

    :goto_1c6
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_1e6

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v9, -0x1

    aget-object v3, v4, v2

    aget-object v5, p1, v0

    mul-int/lit8 v6, v2, 0x2

    aget v5, v5, v6

    aput v5, v3, v1

    aget-object v2, v4, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p1, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    aput v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c6

    :cond_1e6
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v1, v9, -0x1

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    goto :goto_1a2

    :cond_1f0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a3

    :cond_1f3
    const/4 v0, 0x1

    :goto_1f4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_125

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int v2, v1, v0

    move v1, v9

    :goto_1fd
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v1, v3, :cond_239

    mul-int/lit8 v3, v1, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    sub-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    aget-object v5, p1, v5

    const/4 v6, 0x0

    aget-object v6, p1, v6

    aget v6, v6, v4

    aput v6, v5, v3

    const/4 v5, 0x0

    aget-object v5, p1, v5

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x0

    aget-object v7, p1, v7

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    neg-float v7, v7

    aput v7, v5, v6

    aget-object v5, p1, v0

    aget-object v6, p1, v2

    aget v6, v6, v4

    aput v6, v5, v3

    aget-object v5, p1, v0

    add-int/lit8 v3, v3, 0x1

    aget-object v6, p1, v2

    add-int/lit8 v4, v4, 0x1

    aget v4, v6, v4

    neg-float v4, v4

    aput v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1fd

    :cond_239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f4
.end method

.method private strictfp mixedRadixRealInverseFull([FZ)V
    .registers 19

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v12, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v10, v2, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v10, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[F

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v13

    const/4 v2, 0x1

    if-le v13, v2, :cond_171

    move-object/from16 v0, p0

    iget-boolean v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v2, :cond_171

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v2, v13, :cond_171

    if-lt v10, v13, :cond_171

    new-array v14, v13, [Ljava/util/concurrent/Future;

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int v11, v2, v13

    const/4 v2, 0x0

    move v8, v2

    :goto_3f
    if-ge v8, v13, :cond_63

    mul-int v4, v8, v11

    add-int/lit8 v2, v13, -0x1

    if-ne v8, v2, :cond_60

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_4b
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$21;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$21;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[FZ)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v14, v8

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_3f

    :cond_60
    add-int v5, v4, v11

    goto :goto_4b

    :cond_63
    invoke-static {v14}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v2, 0x0

    :goto_67
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_7c

    const/4 v3, 0x0

    aget-object v3, v9, v3

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v2

    aget v4, p1, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    :cond_7c
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    const/4 v3, 0x0

    aget-object v3, v9, v3

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    div-int v15, v10, v13

    const/4 v2, 0x0

    move v11, v2

    :goto_8c
    if-ge v11, v13, :cond_b1

    mul-int v2, v11, v15

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v2, v13, -0x1

    if-ne v11, v2, :cond_ae

    add-int/lit8 v5, v10, -0x1

    :goto_98
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;

    move-object/from16 v3, p0

    move-object v6, v9

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$22;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[[F[FZ)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v14, v11

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_8c

    :cond_ae
    add-int v5, v4, v15

    goto :goto_98

    :cond_b1
    invoke-static {v14}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_10b

    const/4 v2, 0x0

    :goto_bd
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_d5

    add-int/lit8 v3, v10, -0x1

    aget-object v3, v9, v3

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    :cond_d5
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v3, v10, -0x1

    aget-object v3, v9, v3

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    :goto_e2
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int v15, v2, v13

    const/4 v2, 0x0

    move v11, v2

    :goto_ea
    if-ge v11, v13, :cond_142

    mul-int v4, v11, v15

    add-int/lit8 v2, v13, -0x1

    if-ne v11, v2, :cond_13f

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_f6
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$23;

    move-object/from16 v3, p0

    move v6, v10

    move v7, v12

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$23;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;IIII[F[[F)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v14, v11

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_ea

    :cond_10b
    const/4 v2, 0x0

    :goto_10c
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_131

    mul-int/lit8 v3, v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/lit8 v5, v10, -0x1

    aget-object v6, v9, v5

    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v4

    aget v7, p1, v7

    aput v7, v6, v3

    aget-object v5, v9, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    aput v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_10c

    :cond_131
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v3, v10, -0x1

    aget-object v3, v9, v3

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    goto :goto_e2

    :cond_13f
    add-int v5, v4, v15

    goto :goto_f6

    :cond_142
    invoke-static {v14}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v2, 0x0

    move v9, v2

    :goto_147
    if-ge v9, v13, :cond_16d

    mul-int v2, v9, v15

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v2, v13, -0x1

    if-ne v9, v2, :cond_16a

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_155
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$24;

    move-object/from16 v3, p0

    move v6, v12

    move v7, v10

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$24;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;IIII[F)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v14, v9

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_147

    :cond_16a
    add-int v5, v4, v15

    goto :goto_155

    :cond_16d
    invoke-static {v14}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_170
    return-void

    :cond_171
    const/4 v2, 0x0

    :goto_172
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_18b

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v2

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v4, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_172

    :cond_18b
    const/4 v2, 0x0

    :goto_18c
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_1a1

    const/4 v3, 0x0

    aget-object v3, v9, v3

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v2

    aget v4, p1, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18c

    :cond_1a1
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    const/4 v3, 0x0

    aget-object v3, v9, v3

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    const/4 v2, 0x1

    move v3, v2

    :goto_1af
    add-int/lit8 v2, v10, -0x1

    if-ge v3, v2, :cond_1e6

    mul-int/lit8 v4, v3, 0x2

    const/4 v2, 0x0

    :goto_1b6
    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v5, :cond_1d7

    mul-int/lit8 v5, v2, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v4

    aget-object v7, v9, v3

    aget v8, p1, v6

    aput v8, v7, v5

    aget-object v7, v9, v3

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v6, p1, v6

    aput v6, v7, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b6

    :cond_1d7
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v4, v9, v3

    move/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1af

    :cond_1e6
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_238

    const/4 v2, 0x0

    :goto_1ef
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_207

    add-int/lit8 v3, v10, -0x1

    aget-object v3, v9, v3

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1ef

    :cond_207
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v3, v10, -0x1

    aget-object v3, v9, v3

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    :goto_214
    const/4 v2, 0x0

    :goto_215
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_26f

    mul-int/lit8 v4, v2, 0x2

    const/4 v3, 0x0

    :goto_21e
    if-ge v3, v10, :cond_26c

    mul-int/lit8 v5, v3, 0x2

    mul-int v6, v2, v12

    add-int/2addr v5, v6

    aget-object v6, v9, v3

    aget v6, v6, v4

    aput v6, p1, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v6, v9, v3

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    aput v6, p1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_21e

    :cond_238
    const/4 v2, 0x0

    :goto_239
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_25e

    mul-int/lit8 v3, v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v4, v2

    add-int/lit8 v5, v10, -0x1

    aget-object v6, v9, v5

    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v4

    aget v7, p1, v7

    aput v7, v6, v3

    aget-object v5, v9, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    aput v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_239

    :cond_25e
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v3, v10, -0x1

    aget-object v3, v9, v3

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    goto :goto_214

    :cond_26c
    add-int/lit8 v2, v2, 0x1

    goto :goto_215

    :cond_26f
    const/4 v2, 0x1

    :goto_270
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v3, :cond_170

    mul-int v4, v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    mul-int v5, v3, v12

    move v3, v10

    :goto_282
    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v3, v6, :cond_2b2

    mul-int/lit8 v6, v3, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    sub-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0x2

    aget v8, p1, v7

    aput v8, p1, v6

    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v7, p1, v7

    neg-float v7, v7

    aput v7, p1, v8

    add-int v7, v4, v6

    sub-int v6, v5, v6

    aget v8, p1, v6

    aput v8, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v6, p1, v6

    neg-float v6, v6

    aput v6, p1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_282

    :cond_2b2
    add-int/lit8 v2, v2, 0x1

    goto :goto_270
.end method

.method private strictfp mixedRadixRealInverseFull([[FZ)V
    .registers 16

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v8, v0, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    filled-new-array {v8, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [[F

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v10

    const/4 v0, 0x1

    if-le v10, v0, :cond_132

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_132

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v0, v10, :cond_132

    if-lt v8, v10, :cond_132

    new-array v11, v10, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int v9, v0, v10

    const/4 v0, 0x0

    move v6, v0

    :goto_30
    if-ge v6, v10, :cond_4f

    mul-int v2, v6, v9

    add-int/lit8 v0, v10, -0x1

    if-ne v6, v0, :cond_4c

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_3a
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$17;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$17;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_30

    :cond_4c
    add-int v3, v2, v9

    goto :goto_3a

    :cond_4f
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    :goto_53
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_64

    const/4 v1, 0x0

    aget-object v1, v7, v1

    aget-object v2, p1, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_64
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v0, v1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    div-int v12, v8, v10

    const/4 v0, 0x0

    move v9, v0

    :goto_70
    if-ge v9, v10, :cond_92

    mul-int v0, v9, v12

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v10, -0x1

    if-ne v9, v0, :cond_8f

    add-int/lit8 v3, v8, -0x1

    :goto_7c
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$18;

    move-object v1, p0

    move-object v4, v7

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$18;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[[F[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v9

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_70

    :cond_8f
    add-int v3, v2, v12

    goto :goto_7c

    :cond_92
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_da

    const/4 v0, 0x0

    :goto_9c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_ae

    add-int/lit8 v1, v8, -0x1

    aget-object v1, v7, v1

    aget-object v2, p1, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    :cond_ae
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v1, v8, -0x1

    aget-object v1, v7, v1

    invoke-virtual {v0, v1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    :goto_b7
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int v12, v0, v10

    const/4 v0, 0x0

    move v9, v0

    :goto_bd
    if-ge v9, v10, :cond_108

    mul-int v2, v9, v12

    add-int/lit8 v0, v10, -0x1

    if-ne v9, v0, :cond_105

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_c7
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$19;

    move-object v1, p0

    move v4, v8

    move-object v5, p1

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$19;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;III[[F[[F)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v9

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_bd

    :cond_da
    const/4 v0, 0x0

    :goto_db
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_fb

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v8, -0x1

    aget-object v3, v7, v2

    aget-object v4, p1, v0

    mul-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    aput v4, v3, v1

    aget-object v2, v7, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p1, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_db

    :cond_fb
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v1, v8, -0x1

    aget-object v1, v7, v1

    invoke-virtual {v0, v1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    goto :goto_b7

    :cond_105
    add-int v3, v2, v12

    goto :goto_c7

    :cond_108
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_10d
    if-ge v6, v10, :cond_12e

    mul-int v0, v6, v12

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v10, -0x1

    if-ne v6, v0, :cond_12b

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_119
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$20;

    move-object v1, p0

    move v4, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$20;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;III[[F)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_10d

    :cond_12b
    add-int v3, v2, v12

    goto :goto_119

    :cond_12e
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_131
    return-void

    :cond_132
    const/4 v0, 0x0

    :goto_133
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_142

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v2, p1, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_133

    :cond_142
    const/4 v0, 0x0

    :goto_143
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_154

    const/4 v1, 0x0

    aget-object v1, v7, v1

    aget-object v2, p1, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_143

    :cond_154
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v0, v1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    const/4 v0, 0x1

    move v1, v0

    :goto_15e
    add-int/lit8 v0, v8, -0x1

    if-ge v1, v0, :cond_18d

    mul-int/lit8 v2, v1, 0x2

    const/4 v0, 0x0

    :goto_165
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v3, :cond_182

    mul-int/lit8 v3, v0, 0x2

    aget-object v4, v7, v1

    aget-object v5, p1, v0

    aget v5, v5, v2

    aput v5, v4, v3

    aget-object v4, v7, v1

    add-int/lit8 v3, v3, 0x1

    aget-object v5, p1, v0

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    aput v5, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_165

    :cond_182
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v2, v7, v1

    invoke-virtual {v0, v2, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15e

    :cond_18d
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1d2

    const/4 v0, 0x0

    :goto_194
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_1a6

    add-int/lit8 v1, v8, -0x1

    aget-object v1, v7, v1

    aget-object v2, p1, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_194

    :cond_1a6
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v1, v8, -0x1

    aget-object v1, v7, v1

    invoke-virtual {v0, v1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    :goto_1af
    const/4 v0, 0x0

    :goto_1b0
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_200

    mul-int/lit8 v2, v0, 0x2

    const/4 v1, 0x0

    :goto_1b7
    if-ge v1, v8, :cond_1fd

    mul-int/lit8 v3, v1, 0x2

    aget-object v4, p1, v0

    aget-object v5, v7, v1

    aget v5, v5, v2

    aput v5, v4, v3

    aget-object v4, p1, v0

    add-int/lit8 v3, v3, 0x1

    aget-object v5, v7, v1

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    aput v5, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b7

    :cond_1d2
    const/4 v0, 0x0

    :goto_1d3
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_1f3

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v8, -0x1

    aget-object v3, v7, v2

    aget-object v4, p1, v0

    mul-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    aput v4, v3, v1

    aget-object v2, v7, v2

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p1, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d3

    :cond_1f3
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    add-int/lit8 v1, v8, -0x1

    aget-object v1, v7, v1

    invoke-virtual {v0, v1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    goto :goto_1af

    :cond_1fd
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b0

    :cond_200
    const/4 v0, 0x1

    :goto_201
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_131

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int v2, v1, v0

    move v1, v8

    :goto_20a
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v1, v3, :cond_246

    mul-int/lit8 v3, v1, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    sub-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    aget-object v5, p1, v5

    const/4 v6, 0x0

    aget-object v6, p1, v6

    aget v6, v6, v4

    aput v6, v5, v3

    const/4 v5, 0x0

    aget-object v5, p1, v5

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x0

    aget-object v7, p1, v7

    add-int/lit8 v9, v4, 0x1

    aget v7, v7, v9

    neg-float v7, v7

    aput v7, v5, v6

    aget-object v5, p1, v0

    aget-object v6, p1, v2

    aget v6, v6, v4

    aput v6, v5, v3

    aget-object v5, p1, v0

    add-int/lit8 v3, v3, 0x1

    aget-object v6, p1, v2

    add-int/lit8 v4, v4, 0x1

    aget v4, v6, v4

    neg-float v4, v4

    aput v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_20a

    :cond_246
    add-int/lit8 v0, v0, 0x1

    goto :goto_201
.end method

.method private strictfp rdft2d_sub(I[F)V
    .registers 11

    const/4 v0, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    shr-int/lit8 v1, v1, 0x1

    if-gez p1, :cond_3d

    :goto_9
    if-ge v0, v1, :cond_74

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v2, v0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v4

    aget v4, p2, v3

    aget v5, p2, v2

    sub-float/2addr v4, v5

    aget v5, p2, v3

    aget v6, p2, v2

    add-float/2addr v5, v6

    aput v5, p2, v3

    aput v4, p2, v2

    add-int/lit8 v4, v2, 0x1

    aget v4, p2, v4

    add-int/lit8 v5, v3, 0x1

    aget v5, p2, v5

    sub-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    aget v5, p2, v3

    add-int/lit8 v6, v2, 0x1

    aget v6, p2, v6

    add-float/2addr v5, v6

    aput v5, p2, v3

    add-int/lit8 v2, v2, 0x1

    aput v4, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_3d
    :goto_3d
    if-ge v0, v1, :cond_74

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v2, v0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v4

    aget v4, p2, v3

    aget v5, p2, v2

    sub-float/2addr v4, v5

    mul-float/2addr v4, v7

    aput v4, p2, v2

    aget v4, p2, v3

    aget v5, p2, v2

    sub-float/2addr v4, v5

    aput v4, p2, v3

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v3, 0x1

    aget v5, p2, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, p2, v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v7

    aput v5, p2, v4

    add-int/lit8 v3, v3, 0x1

    aget v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    aget v2, p2, v2

    sub-float v2, v4, v2

    aput v2, p2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_74
    return-void
.end method

.method private strictfp rdft2d_sub(I[[F)V
    .registers 12

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/4 v1, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    shr-int/lit8 v2, v0, 0x1

    if-gez p1, :cond_43

    move v0, v1

    :goto_b
    if-ge v0, v2, :cond_7f

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v3, v0

    aget-object v4, p2, v0

    aget v4, v4, v8

    aget-object v5, p2, v3

    aget v5, v5, v8

    sub-float/2addr v4, v5

    aget-object v5, p2, v0

    aget v6, v5, v8

    aget-object v7, p2, v3

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v5, v8

    aget-object v5, p2, v3

    aput v4, v5, v8

    aget-object v4, p2, v3

    aget v4, v4, v1

    aget-object v5, p2, v0

    aget v5, v5, v1

    sub-float/2addr v4, v5

    aget-object v5, p2, v0

    aget v6, v5, v1

    aget-object v7, p2, v3

    aget v7, v7, v1

    add-float/2addr v6, v7

    aput v6, v5, v1

    aget-object v3, p2, v3

    aput v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_43
    move v0, v1

    :goto_44
    if-ge v0, v2, :cond_7f

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    sub-int/2addr v3, v0

    aget-object v4, p2, v3

    aget-object v5, p2, v0

    aget v5, v5, v8

    aget-object v6, p2, v3

    aget v6, v6, v8

    sub-float/2addr v5, v6

    mul-float/2addr v5, v7

    aput v5, v4, v8

    aget-object v4, p2, v0

    aget v5, v4, v8

    aget-object v6, p2, v3

    aget v6, v6, v8

    sub-float/2addr v5, v6

    aput v5, v4, v8

    aget-object v4, p2, v3

    aget-object v5, p2, v0

    aget v5, v5, v1

    aget-object v6, p2, v3

    aget v6, v6, v1

    add-float/2addr v5, v6

    mul-float/2addr v5, v7

    aput v5, v4, v1

    aget-object v4, p2, v0

    aget v5, v4, v1

    aget-object v3, p2, v3

    aget v3, v3, v1

    sub-float v3, v5, v3

    aput v3, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_7f
    return-void
.end method

.method private strictfp xdft2d0_subth1(II[FZ)V
    .registers 14

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-le v0, v1, :cond_22

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_a
    new-array v8, v5, [Ljava/util/concurrent/Future;

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v5, :cond_27

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$25;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$25;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;IIII[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_22
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v5

    goto :goto_a

    :cond_27
    invoke-static {v8}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private strictfp xdft2d0_subth1(II[[FZ)V
    .registers 14

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-le v0, v1, :cond_22

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_a
    new-array v8, v5, [Ljava/util/concurrent/Future;

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v5, :cond_27

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$27;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$27;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;IIII[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_22
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v5

    goto :goto_a

    :cond_27
    invoke-static {v8}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private strictfp xdft2d0_subth2(II[FZ)V
    .registers 14

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-le v0, v1, :cond_22

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_a
    new-array v8, v5, [Ljava/util/concurrent/Future;

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v5, :cond_27

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$26;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;IIII[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_22
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v5

    goto :goto_a

    :cond_27
    invoke-static {v8}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private strictfp xdft2d0_subth2(II[[FZ)V
    .registers 14

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-le v0, v1, :cond_22

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_a
    new-array v8, v5, [Ljava/util/concurrent/Future;

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v5, :cond_27

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$28;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$28;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;IIII[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_22
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v5

    goto :goto_a

    :cond_27
    invoke-static {v8}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void
.end method


# virtual methods
.method public strictfp complexForward([F)V
    .registers 13

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_62

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    if-eq v8, v0, :cond_32

    mul-int/lit8 v0, v8, 0x8

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v0, v2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v8, 0x4

    if-ne v0, v2, :cond_41

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    :cond_2a
    :goto_2a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iput v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    :cond_32
    if-le v8, v4, :cond_4e

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_4e

    invoke-direct {p0, v6, v5, p1, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[FZ)V

    invoke-direct {p0, v5, p1, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[FZ)V

    :goto_3e
    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    :cond_40
    :goto_40
    return-void

    :cond_41
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v8, 0x4

    if-ge v0, v2, :cond_2a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    goto :goto_2a

    :cond_4e
    move v0, v6

    :goto_4f
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_5e

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, v0

    invoke-virtual {v2, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_5e
    invoke-direct {p0, v5, p1, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[FZ)V

    goto :goto_3e

    :cond_62
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v5, v0, 0x2

    if-le v8, v4, :cond_c4

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_c4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v0, v8, :cond_c4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-lt v0, v8, :cond_c4

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int v10, v0, v8

    move v7, v6

    :goto_7b
    if-ge v7, v8, :cond_99

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_96

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_85
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$1;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[FI)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_7b

    :cond_96
    add-int v3, v2, v10

    goto :goto_85

    :cond_99
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int v7, v0, v8

    move v0, v6

    :goto_a1
    if-ge v0, v8, :cond_bf

    mul-int v3, v0, v7

    add-int/lit8 v1, v8, -0x1

    if-ne v0, v1, :cond_bc

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    :goto_ab
    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$2;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;III[F)V

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v9, v0

    add-int/lit8 v6, v0, 0x1

    move v0, v6

    goto :goto_a1

    :cond_bc
    add-int v4, v3, v7

    goto :goto_ab

    :cond_bf
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto/16 :goto_40

    :cond_c4
    move v0, v6

    :goto_c5
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_d3

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    mul-int v2, v0, v5

    invoke-virtual {v1, p1, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c5

    :cond_d3
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [F

    move v0, v6

    :goto_da
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v0, v1, :cond_40

    mul-int/lit8 v3, v0, 0x2

    move v1, v6

    :goto_e1
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v4, :cond_f9

    mul-int/lit8 v4, v1, 0x2

    mul-int v7, v1, v5

    add-int/2addr v7, v3

    aget v8, p1, v7

    aput v8, v2, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v7, p1, v7

    aput v7, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_e1

    :cond_f9
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v1, v6

    :goto_ff
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v4, :cond_117

    mul-int/lit8 v4, v1, 0x2

    mul-int v7, v1, v5

    add-int/2addr v7, v3

    aget v8, v2, v4

    aput v8, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    aput v4, p1, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_ff

    :cond_117
    add-int/lit8 v0, v0, 0x1

    goto :goto_da
.end method

.method public strictfp complexForward([[F)V
    .registers 10

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    iget-boolean v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v1, :cond_60

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    if-eq v3, v2, :cond_32

    mul-int/lit8 v2, v3, 0x8

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v2, v4

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v4, v3, 0x4

    if-ne v2, v4, :cond_41

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    :cond_2a
    :goto_2a
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    new-array v2, v2, [F

    iput-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iput v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    :cond_32
    if-le v3, v5, :cond_4e

    iget-boolean v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v2, :cond_4e

    invoke-direct {p0, v0, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[[FZ)V

    invoke-direct {p0, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[[FZ)V

    :goto_3e
    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    :cond_40
    :goto_40
    return-void

    :cond_41
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v4, v3, 0x4

    if-ge v2, v4, :cond_2a

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    goto :goto_2a

    :cond_4e
    :goto_4e
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_5c

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_5c
    invoke-direct {p0, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[[FZ)V

    goto :goto_3e

    :cond_60
    if-le v3, v5, :cond_b9

    iget-boolean v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v1, :cond_b9

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v1, v3, :cond_b9

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-lt v1, v3, :cond_b9

    new-array v4, v3, [Ljava/util/concurrent/Future;

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int v5, v1, v3

    move v2, v0

    :goto_75
    if-ge v2, v3, :cond_91

    mul-int v6, v2, v5

    add-int/lit8 v1, v3, -0x1

    if-ne v2, v1, :cond_8e

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_7f
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$3;

    invoke-direct {v7, p0, v6, v1, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$3;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[[F)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_75

    :cond_8e
    add-int v1, v6, v5

    goto :goto_7f

    :cond_91
    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int v2, v1, v3

    move v1, v0

    :goto_99
    if-ge v1, v3, :cond_b5

    mul-int v5, v1, v2

    add-int/lit8 v0, v3, -0x1

    if-ne v1, v0, :cond_b2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    :goto_a3
    new-instance v6, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$4;

    invoke-direct {v6, p0, v5, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$4;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[[F)V

    invoke-static {v6}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_99

    :cond_b2
    add-int v0, v5, v2

    goto :goto_a3

    :cond_b5
    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_40

    :cond_b9
    move v1, v0

    :goto_ba
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v2, :cond_c8

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_ba

    :cond_c8
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v1, v1, 0x2

    new-array v3, v1, [F

    move v1, v0

    :goto_cf
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v1, v2, :cond_40

    mul-int/lit8 v4, v1, 0x2

    move v2, v0

    :goto_d6
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v5, :cond_ef

    mul-int/lit8 v5, v2, 0x2

    aget-object v6, p1, v2

    aget v6, v6, v4

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v6, p1, v2

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    aput v6, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_d6

    :cond_ef
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v2, v0

    :goto_f5
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v2, v5, :cond_10e

    mul-int/lit8 v5, v2, 0x2

    aget-object v6, p1, v2

    aget v7, v3, v5

    aput v7, v6, v4

    aget-object v6, p1, v2

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    aget v5, v3, v5

    aput v5, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_f5

    :cond_10e
    add-int/lit8 v1, v1, 0x1

    goto :goto_cf
.end method

.method public strictfp complexInverse([FZ)V
    .registers 15

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v9

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_61

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    if-eq v9, v0, :cond_31

    mul-int/lit8 v0, v9, 0x8

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v0, v2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v9, 0x4

    if-ne v0, v2, :cond_40

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    :cond_29
    :goto_29
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iput v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    :cond_31
    if-le v9, v4, :cond_4d

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_4d

    invoke-direct {p0, v7, v4, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[FZ)V

    invoke-direct {p0, v4, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[FZ)V

    :goto_3d
    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v9, 0x4

    if-ge v0, v2, :cond_29

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    goto :goto_29

    :cond_4d
    move v0, v7

    :goto_4e
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_5d

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v3, v0

    invoke-virtual {v2, p1, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_5d
    invoke-direct {p0, v4, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[FZ)V

    goto :goto_3d

    :cond_61
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v5, v0, 0x2

    if-le v9, v4, :cond_c5

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_c5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v0, v9, :cond_c5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-lt v0, v9, :cond_c5

    new-array v10, v9, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int v11, v0, v9

    move v8, v7

    :goto_7a
    if-ge v8, v9, :cond_99

    mul-int v2, v8, v11

    add-int/lit8 v0, v9, -0x1

    if-ne v8, v0, :cond_96

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_84
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$5;

    move-object v1, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$5;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[FIZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v8

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_7a

    :cond_96
    add-int v3, v2, v11

    goto :goto_84

    :cond_99
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int v8, v0, v9

    move v0, v7

    :goto_a1
    if-ge v0, v9, :cond_c0

    mul-int v3, v0, v8

    add-int/lit8 v1, v9, -0x1

    if-ne v0, v1, :cond_bd

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    :goto_ab
    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$6;

    move-object v2, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$6;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;III[FZ)V

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v10, v0

    add-int/lit8 v7, v0, 0x1

    move v0, v7

    goto :goto_a1

    :cond_bd
    add-int v4, v3, v8

    goto :goto_ab

    :cond_c0
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto/16 :goto_3f

    :cond_c5
    move v0, v7

    :goto_c6
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_d4

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    mul-int v2, v0, v5

    invoke-virtual {v1, p1, v2, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    :cond_d4
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [F

    move v0, v7

    :goto_db
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v0, v1, :cond_3f

    mul-int/lit8 v3, v0, 0x2

    move v1, v7

    :goto_e2
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v4, :cond_fa

    mul-int/lit8 v4, v1, 0x2

    mul-int v6, v1, v5

    add-int/2addr v6, v3

    aget v8, p1, v6

    aput v8, v2, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v6, p1, v6

    aput v6, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_e2

    :cond_fa
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    move v1, v7

    :goto_100
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v4, :cond_118

    mul-int/lit8 v4, v1, 0x2

    mul-int v6, v1, v5

    add-int/2addr v6, v3

    aget v8, v2, v4

    aput v8, p1, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    aput v4, p1, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_100

    :cond_118
    add-int/lit8 v0, v0, 0x1

    goto :goto_db
.end method

.method public strictfp complexInverse([[FZ)V
    .registers 14

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_60

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    if-eq v8, v0, :cond_31

    mul-int/lit8 v0, v8, 0x8

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v0, v2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v8, 0x4

    if-ne v0, v2, :cond_40

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    :cond_29
    :goto_29
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iput v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    :cond_31
    if-le v8, v4, :cond_4d

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_4d

    invoke-direct {p0, v6, v4, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[[FZ)V

    invoke-direct {p0, v4, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[[FZ)V

    :goto_3d
    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v8, 0x4

    if-ge v0, v2, :cond_29

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    goto :goto_29

    :cond_4d
    move v0, v6

    :goto_4e
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_5c

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_5c
    invoke-direct {p0, v4, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[[FZ)V

    goto :goto_3d

    :cond_60
    if-le v8, v4, :cond_bd

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_bd

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-lt v0, v8, :cond_bd

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-lt v0, v8, :cond_bd

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    div-int v10, v0, v8

    move v7, v6

    :goto_75
    if-ge v7, v8, :cond_94

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_91

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    :goto_7f
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$7;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$7;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_75

    :cond_91
    add-int v3, v2, v10

    goto :goto_7f

    :cond_94
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    div-int v7, v0, v8

    :goto_9b
    if-ge v6, v8, :cond_b9

    mul-int v2, v6, v7

    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_b6

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    :goto_a5
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$8;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$8;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;II[[FZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_9b

    :cond_b6
    add-int v3, v2, v7

    goto :goto_a5

    :cond_b9
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    goto :goto_3f

    :cond_bd
    move v0, v6

    :goto_be
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_cc

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_be

    :cond_cc
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [F

    move v0, v6

    :goto_d3
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    if-ge v0, v1, :cond_3f

    mul-int/lit8 v3, v0, 0x2

    move v1, v6

    :goto_da
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v4, :cond_f3

    mul-int/lit8 v4, v1, 0x2

    aget-object v5, p1, v1

    aget v5, v5, v3

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p1, v1

    add-int/lit8 v7, v3, 0x1

    aget v5, v5, v7

    aput v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_da

    :cond_f3
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    move v1, v6

    :goto_f9
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v1, v4, :cond_112

    mul-int/lit8 v4, v1, 0x2

    aget-object v5, p1, v1

    aget v7, v2, v4

    aput v7, v5, v3

    aget-object v5, p1, v1

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    aput v4, v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_f9

    :cond_112
    add-int/lit8 v0, v0, 0x1

    goto :goto_d3
.end method

.method public strictfp realForward([F)V
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rows and columns must be power of two numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    if-eq v0, v1, :cond_31

    mul-int/lit8 v1, v0, 0x8

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v0, 0x4

    if-ne v1, v2, :cond_41

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    :cond_29
    :goto_29
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    :cond_31
    if-le v0, v3, :cond_4e

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_4e

    invoke-direct {p0, v3, v3, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[FZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    :goto_40
    return-void

    :cond_41
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v0, 0x4

    if-ge v1, v2, :cond_29

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    goto :goto_29

    :cond_4e
    const/4 v0, 0x0

    :goto_4f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_5e

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_5e
    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    goto :goto_40
.end method

.method public strictfp realForward([[F)V
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rows and columns must be power of two numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    if-eq v0, v1, :cond_31

    mul-int/lit8 v1, v0, 0x8

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v0, 0x4

    if-ne v1, v2, :cond_41

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    :cond_29
    :goto_29
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    :cond_31
    if-le v0, v3, :cond_4e

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_4e

    invoke-direct {p0, v3, v3, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[[FZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    :goto_40
    return-void

    :cond_41
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v0, 0x4

    if-ge v1, v2, :cond_29

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    goto :goto_29

    :cond_4e
    const/4 v0, 0x0

    :goto_4f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_5d

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_5d
    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    goto :goto_40
.end method

.method public strictfp realForwardFull([F)V
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_60

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    if-eq v0, v1, :cond_29

    mul-int/lit8 v1, v0, 0x8

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v0, 0x4

    if-ne v1, v2, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    :cond_21
    :goto_21
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    :cond_29
    if-le v0, v3, :cond_49

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_49

    invoke-direct {p0, v3, v3, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[FZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    :goto_38
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fillSymmetric([F)V

    :goto_3b
    return-void

    :cond_3c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v0, 0x4

    if-ge v1, v2, :cond_21

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    goto :goto_21

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_59

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_59
    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    goto :goto_38

    :cond_60
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->mixedRadixRealForwardFull([F)V

    goto :goto_3b
.end method

.method public strictfp realForwardFull([[F)V
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_5f

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    if-eq v0, v1, :cond_29

    mul-int/lit8 v1, v0, 0x8

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v0, 0x4

    if-ne v1, v2, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    :cond_21
    :goto_21
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    :cond_29
    if-le v0, v3, :cond_49

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_49

    invoke-direct {p0, v3, v3, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[[FZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    :goto_38
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fillSymmetric([[F)V

    :goto_3b
    return-void

    :cond_3c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v0, 0x4

    if-ge v1, v2, :cond_21

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    goto :goto_21

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_58

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_58
    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    goto :goto_38

    :cond_5f
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->mixedRadixRealForwardFull([[F)V

    goto :goto_3b
.end method

.method public strictfp realInverse([FZ)V
    .registers 8

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rows and columns must be power of two numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    if-eq v0, v1, :cond_31

    mul-int/lit8 v1, v0, 0x8

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v0, 0x4

    if-ne v1, v2, :cond_41

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    :cond_29
    :goto_29
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    :cond_31
    if-le v0, v3, :cond_4e

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_4e

    invoke-direct {p0, v4, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[FZ)V

    invoke-direct {p0, v3, v4, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[FZ)V

    :cond_40
    return-void

    :cond_41
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v0, 0x4

    if-ge v1, v2, :cond_29

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    goto :goto_29

    :cond_4e
    invoke-direct {p0, v4, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[FZ)V

    const/4 v0, 0x0

    :goto_55
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_40

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_55
.end method

.method public strictfp realInverse([[FZ)V
    .registers 8

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rows and columns must be power of two numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    if-eq v0, v1, :cond_31

    mul-int/lit8 v1, v0, 0x8

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v0, 0x4

    if-ne v1, v2, :cond_41

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    :cond_29
    :goto_29
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    :cond_31
    if-le v0, v3, :cond_4e

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_4e

    invoke-direct {p0, v4, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[[FZ)V

    invoke-direct {p0, v3, v4, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[[FZ)V

    :cond_40
    return-void

    :cond_41
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v0, 0x4

    if-ge v1, v2, :cond_29

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    goto :goto_29

    :cond_4e
    invoke-direct {p0, v4, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[[FZ)V

    const/4 v0, 0x0

    :goto_55
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_40

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse([FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_55
.end method

.method public strictfp realInverseFull([FZ)V
    .registers 7

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_60

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    if-eq v0, v1, :cond_28

    mul-int/lit8 v1, v0, 0x8

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v0, 0x4

    if-ne v1, v2, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    :cond_20
    :goto_20
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    new-array v1, v1, [F

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    :cond_28
    if-le v0, v3, :cond_49

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_49

    const/4 v0, -0x1

    invoke-direct {p0, v3, v0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth2(II[FZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    :goto_38
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fillSymmetric([F)V

    :goto_3b
    return-void

    :cond_3c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v2, v0, 0x4

    if-ge v1, v2, :cond_20

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    goto :goto_20

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v1, :cond_59

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/2addr v2, v0

    invoke-virtual {v1, p1, v2, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_59
    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[FZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[F)V

    goto :goto_38

    :cond_60
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->mixedRadixRealInverseFull([FZ)V

    goto :goto_3b
.end method

.method public strictfp realInverseFull([[FZ)V
    .registers 8

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->isPowerOfTwo:Z

    if-eqz v0, :cond_60

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    if-eq v0, v2, :cond_29

    mul-int/lit8 v2, v0, 0x8

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    mul-int/2addr v2, v3

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v3, v0, 0x4

    if-ne v2, v3, :cond_3d

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    :cond_21
    :goto_21
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    new-array v2, v2, [F

    iput-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->t:[F

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->oldNthreads:I

    :cond_29
    if-le v0, v4, :cond_4a

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->useThreads:Z

    if-eqz v0, :cond_4a

    const/4 v0, -0x1

    invoke-direct {p0, v4, v0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth2(II[[FZ)V

    invoke-direct {p0, v4, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[[FZ)V

    invoke-direct {p0, v4, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    :goto_39
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fillSymmetric([[F)V

    :goto_3c
    return-void

    :cond_3d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->columns:I

    mul-int/lit8 v3, v0, 0x4

    if-ge v2, v3, :cond_21

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->nt:I

    goto :goto_21

    :cond_4a
    move v0, v1

    :goto_4b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rows:I

    if-ge v0, v2, :cond_59

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3, v1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_59
    invoke-direct {p0, v4, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->cdft2d_sub(I[[FZ)V

    invoke-direct {p0, v4, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->rdft2d_sub(I[[F)V

    goto :goto_39

    :cond_60
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->mixedRadixRealInverseFull([[FZ)V

    goto :goto_3c
.end method
