.class public Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;
.super Ljava/lang/Object;


# instance fields
.field private columns:I

.field private fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

.field private fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

.field private fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

.field private isPowerOfTwo:Z

.field private nt:I

.field private oldNthreads:I

.field private rowStride:I

.field private rows:I

.field private sliceStride:I

.field private slices:I

.field private t:[D

.field private useThreads:Z


# direct methods
.method public constructor <init>(III)V
    .registers 8

    const/4 v3, 0x4

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    iput-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-le p1, v2, :cond_10

    if-le p2, v2, :cond_10

    if-gt p3, v2, :cond_18

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slices, rows and columns must be greater than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int v0, p2, p3

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v0, p1, p2

    mul-int/2addr v0, p3

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_3D()I

    move-result v1

    if-lt v0, v1, :cond_2f

    iput-boolean v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

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

    iput-boolean v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    if-ge v0, p2, :cond_51

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_51
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    if-le v0, v2, :cond_62

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_62
    mul-int/lit8 v0, p3, 0x2

    if-ne v0, v3, :cond_86

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_6c
    :goto_6c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    :cond_72
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    if-ne p1, p2, :cond_91

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    :goto_7f
    if-ne p1, p3, :cond_99

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    :goto_85
    return-void

    :cond_86
    mul-int/lit8 v0, p3, 0x2

    if-ge v0, v3, :cond_6c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    goto :goto_6c

    :cond_91
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-direct {v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    goto :goto_7f

    :cond_99
    if-ne p2, p3, :cond_a0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    goto :goto_85

    :cond_a0
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-direct {v0, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    goto :goto_85
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    return v0
.end method

.method static synthetic access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    return v0
.end method

.method static synthetic access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    return v0
.end method

.method static synthetic access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    return-object v0
.end method

.method static synthetic access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    return v0
.end method

.method static synthetic access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    return-object v0
.end method

.method static synthetic access$600(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I
    .registers 2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    return v0
.end method

.method static synthetic access$700(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    return-object v0
.end method

.method static synthetic access$800(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)[D
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    return-object v0
.end method

.method private cdft3db_sub(I[DZ)V
    .registers 16

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1fb

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_113

    const/4 v0, 0x0

    :goto_9
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v1, :cond_3f3

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v3, v0, v1

    const/4 v1, 0x0

    :goto_12
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v2, :cond_10f

    const/4 v2, 0x0

    :goto_17
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v4, :cond_7c

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v10, p2, v4

    aput-wide v10, v9, v5

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v4, 0x1

    aget-wide v10, p2, v10

    aput-wide v10, v9, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v9, v4, 0x2

    aget-wide v9, p2, v9

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v4, 0x3

    aget-wide v9, p2, v9

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v4, 0x4

    aget-wide v9, p2, v6

    aput-wide v9, v5, v7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v7, v4, 0x5

    aget-wide v9, p2, v7

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v4, 0x6

    aget-wide v6, p2, v6

    aput-wide v6, v5, v8

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v8, 0x1

    add-int/lit8 v4, v4, 0x7

    aget-wide v7, p2, v4

    aput-wide v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_7c
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x6

    invoke-virtual {v2, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v2, 0x0

    :goto_a6
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v4, :cond_10b

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v9, v9, v5

    aput-wide v9, p2, v4

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v10, v10, v5

    aput-wide v10, p2, v9

    add-int/lit8 v5, v4, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v9, v9, v6

    aput-wide v9, p2, v5

    add-int/lit8 v5, v4, 0x3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v9, v9, v6

    aput-wide v9, p2, v5

    add-int/lit8 v5, v4, 0x4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v9, v6, v7

    aput-wide v9, p2, v5

    add-int/lit8 v5, v4, 0x5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, p2, v5

    add-int/lit8 v5, v4, 0x6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v6, v6, v8

    aput-wide v6, p2, v5

    add-int/lit8 v4, v4, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v8, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    :cond_10b
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_12

    :cond_10f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_113
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a6

    const/4 v0, 0x0

    :goto_119
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v1, :cond_3f3

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v2, v0, v1

    const/4 v1, 0x0

    :goto_122
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v3, :cond_158

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v7, p2, v3

    aput-wide v7, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v3, 0x1

    aget-wide v7, p2, v7

    aput-wide v7, v6, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v3, 0x2

    aget-wide v6, p2, v6

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x3

    aget-wide v6, p2, v3

    aput-wide v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_122

    :cond_158
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v1, 0x0

    :goto_16c
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v3, :cond_1a2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v6, v6, v4

    aput-wide v6, p2, v3

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-wide v7, v7, v4

    aput-wide v7, p2, v6

    add-int/lit8 v4, v3, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v6, v6, v5

    aput-wide v6, p2, v4

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_16c

    :cond_1a2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_119

    :cond_1a6
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3f3

    const/4 v0, 0x0

    :goto_1ac
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v1, :cond_3f3

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v2, v0, v1

    const/4 v1, 0x0

    :goto_1b5
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v3, :cond_1d2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v6, p2, v3

    aput-wide v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-wide v6, p2, v3

    aput-wide v6, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b5

    :cond_1d2
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v1, 0x0

    :goto_1db
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v3, :cond_1f8

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v5, v5, v4

    aput-wide v5, p2, v3

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, v5, v4

    aput-wide v4, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1db

    :cond_1f8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ac

    :cond_1fb
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_30b

    const/4 v0, 0x0

    :goto_201
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v1, :cond_3f3

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v3, v0, v1

    const/4 v1, 0x0

    :goto_20a
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v2, :cond_307

    const/4 v2, 0x0

    :goto_20f
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v4, :cond_274

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v10, p2, v4

    aput-wide v10, v9, v5

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v4, 0x1

    aget-wide v10, p2, v10

    aput-wide v10, v9, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v9, v4, 0x2

    aget-wide v9, p2, v9

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v4, 0x3

    aget-wide v9, p2, v9

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v4, 0x4

    aget-wide v9, p2, v6

    aput-wide v9, v5, v7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v7, v4, 0x5

    aget-wide v9, p2, v7

    aput-wide v9, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v4, 0x6

    aget-wide v6, p2, v6

    aput-wide v6, v5, v8

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v8, 0x1

    add-int/lit8 v4, v4, 0x7

    aget-wide v7, p2, v4

    aput-wide v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_20f

    :cond_274
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x6

    invoke-virtual {v2, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v2, 0x0

    :goto_29e
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v4, :cond_303

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v9, v9, v5

    aput-wide v9, p2, v4

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v10, v10, v5

    aput-wide v10, p2, v9

    add-int/lit8 v5, v4, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v9, v9, v6

    aput-wide v9, p2, v5

    add-int/lit8 v5, v4, 0x3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v9, v9, v6

    aput-wide v9, p2, v5

    add-int/lit8 v5, v4, 0x4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v9, v6, v7

    aput-wide v9, p2, v5

    add-int/lit8 v5, v4, 0x5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, p2, v5

    add-int/lit8 v5, v4, 0x6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v6, v6, v8

    aput-wide v6, p2, v5

    add-int/lit8 v4, v4, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v8, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_29e

    :cond_303
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_20a

    :cond_307
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_201

    :cond_30b
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_39e

    const/4 v0, 0x0

    :goto_311
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v1, :cond_3f3

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v2, v0, v1

    const/4 v1, 0x0

    :goto_31a
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v3, :cond_350

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v7, p2, v3

    aput-wide v7, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v3, 0x1

    aget-wide v7, p2, v7

    aput-wide v7, v6, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v3, 0x2

    aget-wide v6, p2, v6

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x3

    aget-wide v6, p2, v3

    aput-wide v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_31a

    :cond_350
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v1, 0x0

    :goto_364
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v3, :cond_39a

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    mul-int/lit8 v4, v1, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v6, v6, v4

    aput-wide v6, p2, v3

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-wide v7, v7, v4

    aput-wide v7, p2, v6

    add-int/lit8 v4, v3, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v6, v6, v5

    aput-wide v6, p2, v4

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_364

    :cond_39a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_311

    :cond_39e
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3f3

    const/4 v0, 0x0

    :goto_3a4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v1, :cond_3f3

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v2, v0, v1

    const/4 v1, 0x0

    :goto_3ad
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v3, :cond_3ca

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v6, p2, v3

    aput-wide v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-wide v6, p2, v3

    aput-wide v6, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ad

    :cond_3ca
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v1, 0x0

    :goto_3d3
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v3, :cond_3f0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    mul-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v5, v5, v4

    aput-wide v5, p2, v3

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, v5, v4

    aput-wide v4, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d3

    :cond_3f0
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a4

    :cond_3f3
    return-void
.end method

.method private cdft3db_sub(I[[[DZ)V
    .registers 16

    const/4 v2, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_234

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-le v0, v2, :cond_148

    move v0, v1

    :goto_d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v2, :cond_460

    move v2, v1

    :goto_12
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v3, :cond_144

    move v3, v1

    :goto_17
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v4, :cond_97

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v9, p2, v3

    aget-object v9, v9, v0

    aget-wide v9, v9, v2

    aput-wide v9, v8, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-object v9, p2, v3

    aget-object v9, v9, v0

    add-int/lit8 v10, v2, 0x1

    aget-wide v9, v9, v10

    aput-wide v9, v8, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v2, 0x2

    aget-wide v8, v8, v9

    aput-wide v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v2, 0x3

    aget-wide v8, v8, v9

    aput-wide v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    add-int/lit8 v8, v2, 0x4

    aget-wide v8, v5, v8

    aput-wide v8, v4, v6

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v6, 0x1

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    add-int/lit8 v8, v2, 0x5

    aget-wide v8, v6, v8

    aput-wide v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v2, 0x6

    aget-wide v5, v5, v6

    aput-wide v5, v4, v7

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v7, 0x1

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    add-int/lit8 v7, v2, 0x7

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_97
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    invoke-virtual {v3, v4, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x6

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v3, v1

    :goto_c0
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v4, :cond_140

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v9, v9, v4

    aput-wide v9, v8, v2

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v2, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-wide v10, v10, v4

    aput-wide v10, v8, v9

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v8, v2, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v9, v9, v5

    aput-wide v9, v4, v8

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v8, v2, 0x3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v9, v9, v5

    aput-wide v9, v4, v8

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v6

    aput-wide v8, v4, v5

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v8, v8, v6

    aput-wide v8, v4, v5

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v6, v7

    aput-wide v8, v4, v5

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_c0

    :cond_140
    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_12

    :cond_144
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    :cond_148
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v0, v2, :cond_1e1

    move v0, v1

    :goto_14d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v2, :cond_460

    move v2, v1

    :goto_152
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_18e

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v6, p2, v2

    aget-object v6, v6, v0

    aget-wide v6, v6, v1

    aput-wide v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-object v6, p2, v2

    aget-object v6, v6, v0

    aget-wide v6, v6, v8

    aput-wide v6, v5, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget-wide v5, v5, v9

    aput-wide v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget-wide v5, v5, v10

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_152

    :cond_18e
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    invoke-virtual {v2, v3, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v2, v1

    :goto_1a1
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_1dd

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v6, v6, v3

    aput-wide v6, v5, v1

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-wide v6, v6, v3

    aput-wide v6, v5, v8

    aget-object v3, p2, v2

    aget-object v3, v3, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v5, v5, v4

    aput-wide v5, v3, v9

    aget-object v3, p2, v2

    aget-object v3, v3, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, v5, v4

    aput-wide v4, v3, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a1

    :cond_1dd
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_14d

    :cond_1e1
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v0, v9, :cond_460

    move v0, v1

    :goto_1e6
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v2, :cond_460

    move v2, v1

    :goto_1eb
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_20a

    mul-int/lit8 v3, v2, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget-wide v5, v5, v1

    aput-wide v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget-wide v5, v5, v8

    aput-wide v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1eb

    :cond_20a
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    invoke-virtual {v2, v3, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v2, v1

    :goto_212
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_231

    mul-int/lit8 v3, v2, 0x2

    aget-object v4, p2, v2

    aget-object v4, v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v5, v5, v3

    aput-wide v5, v4, v1

    aget-object v4, p2, v2

    aget-object v4, v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-wide v5, v5, v3

    aput-wide v5, v4, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_212

    :cond_231
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e6

    :cond_234
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-le v0, v2, :cond_374

    move v0, v1

    :goto_239
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v2, :cond_460

    move v2, v1

    :goto_23e
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v3, :cond_370

    move v3, v1

    :goto_243
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v4, :cond_2c3

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v9, p2, v3

    aget-object v9, v9, v0

    aget-wide v9, v9, v2

    aput-wide v9, v8, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-object v9, p2, v3

    aget-object v9, v9, v0

    add-int/lit8 v10, v2, 0x1

    aget-wide v9, v9, v10

    aput-wide v9, v8, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v2, 0x2

    aget-wide v8, v8, v9

    aput-wide v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v2, 0x3

    aget-wide v8, v8, v9

    aput-wide v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    add-int/lit8 v8, v2, 0x4

    aget-wide v8, v5, v8

    aput-wide v8, v4, v6

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v6, 0x1

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    add-int/lit8 v8, v2, 0x5

    aget-wide v8, v6, v8

    aput-wide v8, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v5, p2, v3

    aget-object v5, v5, v0

    add-int/lit8 v6, v2, 0x6

    aget-wide v5, v5, v6

    aput-wide v5, v4, v7

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v7, 0x1

    aget-object v6, p2, v3

    aget-object v6, v6, v0

    add-int/lit8 v7, v2, 0x7

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_243

    :cond_2c3
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    invoke-virtual {v3, v4, v1, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x6

    invoke-virtual {v3, v4, v5, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v3, v1

    :goto_2ec
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v4, :cond_36c

    mul-int/lit8 v4, v3, 0x2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v9, v9, v4

    aput-wide v9, v8, v2

    aget-object v8, p2, v3

    aget-object v8, v8, v0

    add-int/lit8 v9, v2, 0x1

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-wide v10, v10, v4

    aput-wide v10, v8, v9

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v8, v2, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v9, v9, v5

    aput-wide v9, v4, v8

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v8, v2, 0x3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v9, v9, v5

    aput-wide v9, v4, v8

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v6

    aput-wide v8, v4, v5

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v8, v8, v6

    aput-wide v8, v4, v5

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v6, v7

    aput-wide v8, v4, v5

    aget-object v4, p2, v3

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2ec

    :cond_36c
    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_23e

    :cond_370
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_239

    :cond_374
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v0, v2, :cond_40d

    move v0, v1

    :goto_379
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v2, :cond_460

    move v2, v1

    :goto_37e
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_3ba

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v6, p2, v2

    aget-object v6, v6, v0

    aget-wide v6, v6, v1

    aput-wide v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-object v6, p2, v2

    aget-object v6, v6, v0

    aget-wide v6, v6, v8

    aput-wide v6, v5, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget-wide v5, v5, v9

    aput-wide v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget-wide v5, v5, v10

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_37e

    :cond_3ba
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v2, v1

    :goto_3cd
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_409

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v6, v6, v3

    aput-wide v6, v5, v1

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-wide v6, v6, v3

    aput-wide v6, v5, v8

    aget-object v3, p2, v2

    aget-object v3, v3, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v5, v5, v4

    aput-wide v5, v3, v9

    aget-object v3, p2, v2

    aget-object v3, v3, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, v5, v4

    aput-wide v4, v3, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_3cd

    :cond_409
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_379

    :cond_40d
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v0, v9, :cond_460

    move v0, v1

    :goto_412
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v2, :cond_460

    move v2, v1

    :goto_417
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_436

    mul-int/lit8 v3, v2, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget-wide v5, v5, v1

    aput-wide v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-object v5, p2, v2

    aget-object v5, v5, v0

    aget-wide v5, v5, v8

    aput-wide v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_417

    :cond_436
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    invoke-virtual {v2, v3, v1, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v2, v1

    :goto_43e
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_45d

    mul-int/lit8 v3, v2, 0x2

    aget-object v4, p2, v2

    aget-object v4, v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v5, v5, v3

    aput-wide v5, v4, v1

    aget-object v4, p2, v2

    aget-object v4, v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-wide v5, v5, v3

    aput-wide v5, v4, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_43e

    :cond_45d
    add-int/lit8 v0, v0, 0x1

    goto :goto_412

    :cond_460
    return-void
.end method

.method private cdft3db_subth(I[DZ)V
    .registers 14

    const/4 v2, 0x4

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v2, :cond_2f

    shr-int/lit8 v0, v0, 0x1

    move v8, v0

    :goto_16
    new-array v9, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_37

    mul-int v5, v8, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$37;

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$37;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[DZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

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

.method private cdft3db_subth(I[[[DZ)V
    .registers 14

    const/4 v2, 0x4

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v2, :cond_2f

    shr-int/lit8 v0, v0, 0x1

    move v8, v0

    :goto_16
    new-array v9, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_37

    mul-int v5, v8, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$38;

    move-object v1, p0

    move v2, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$38;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[[[DZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

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

.method private fillSymmetric([D)V
    .registers 21

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v6, v1, 0x2

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/lit8 v12, v1, 0x2

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int/lit8 v15, v1, 0x2

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int v5, v1, v6

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_1f
    const/4 v1, 0x1

    if-lt v3, v1, :cond_64

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v4, v3, v1

    mul-int/lit8 v7, v4, 0x2

    const/4 v1, 0x0

    :goto_2b
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_60

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v8, v1, v2

    mul-int/lit8 v9, v8, 0x2

    const/4 v2, 0x0

    :goto_3a
    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v10, :cond_5d

    add-int v10, v4, v8

    add-int/2addr v10, v2

    add-int v11, v7, v9

    add-int/2addr v11, v2

    aget-wide v13, p1, v10

    aput-wide v13, p1, v11

    const-wide/16 v13, 0x0

    aput-wide v13, p1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-wide v13, p1, v10

    aput-wide v13, p1, v11

    const-wide/16 v13, 0x0

    aput-wide v13, p1, v10

    add-int/lit8 v2, v2, 0x2

    goto :goto_3a

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_60
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1f

    :cond_64
    const/4 v1, 0x1

    :goto_65
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_a1

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v2, v1

    mul-int v4, v2, v6

    const/4 v2, 0x0

    :goto_7d
    move-object/from16 v0, p0

    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v7, :cond_9e

    add-int v7, v3, v2

    add-int v8, v4, v2

    aget-wide v9, p1, v7

    aput-wide v9, p1, v8

    const-wide/16 v9, 0x0

    aput-wide v9, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-wide v9, p1, v7

    aput-wide v9, p1, v8

    const-wide/16 v8, 0x0

    aput-wide v8, p1, v7

    add-int/lit8 v2, v2, 0x2

    goto :goto_7d

    :cond_9e
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    :cond_a1
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v16

    const/4 v1, 0x1

    move/from16 v0, v16

    if-le v0, v1, :cond_1c8

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v1, :cond_1c8

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    move/from16 v0, v16

    if-lt v1, v0, :cond_1c8

    move/from16 v0, v16

    new-array v0, v0, [Ljava/util/concurrent/Future;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int v18, v1, v16

    const/4 v1, 0x0

    move v9, v1

    :goto_c6
    move/from16 v0, v16

    if-ge v9, v0, :cond_eb

    mul-int v3, v9, v18

    add-int/lit8 v1, v16, -0x1

    if-ne v9, v1, :cond_e8

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_d4
    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$42;

    move-object/from16 v2, p0

    move v7, v6

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$42;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIIII[D)V

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v9

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_c6

    :cond_e8
    add-int v4, v3, v18

    goto :goto_d4

    :cond_eb
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v1, 0x0

    :goto_ef
    move/from16 v0, v16

    if-ge v1, v0, :cond_114

    mul-int v9, v1, v18

    add-int/lit8 v2, v16, -0x1

    if-ne v1, v2, :cond_111

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_fd
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$43;

    move-object/from16 v8, p0

    move v11, v5

    move v13, v6

    move-object/from16 v14, p1

    invoke-direct/range {v7 .. v14}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$43;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIIII[D)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v17, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_ef

    :cond_111
    add-int v10, v9, v18

    goto :goto_fd

    :cond_114
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v1, 0x0

    :goto_118
    move/from16 v0, v16

    if-ge v1, v0, :cond_13d

    mul-int v9, v1, v18

    add-int/lit8 v2, v16, -0x1

    if-ne v1, v2, :cond_13a

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_126
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$44;

    move-object/from16 v8, p0

    move v11, v5

    move v13, v6

    move-object/from16 v14, p1

    invoke-direct/range {v7 .. v14}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$44;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIIII[D)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v17, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    :cond_13a
    add-int v10, v9, v18

    goto :goto_126

    :cond_13d
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_140
    const/4 v1, 0x1

    :goto_141
    if-ge v1, v15, :cond_296

    mul-int v2, v1, v5

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v3, v1

    mul-int/2addr v3, v5

    mul-int v4, v12, v6

    add-int v7, v2, v4

    add-int/2addr v4, v3

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v8, v2

    add-int/lit8 v9, v3, 0x1

    aget-wide v9, p1, v9

    aput-wide v9, p1, v8

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v8, v3

    add-int/lit8 v9, v3, 0x1

    aget-wide v9, p1, v9

    aput-wide v9, p1, v8

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v8, v2

    add-int/lit8 v8, v8, 0x1

    aget-wide v9, p1, v3

    neg-double v9, v9

    aput-wide v9, p1, v8

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, 0x1

    aget-wide v9, p1, v3

    aput-wide v9, p1, v8

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v8, v7

    add-int/lit8 v9, v4, 0x1

    aget-wide v9, p1, v9

    aput-wide v9, p1, v8

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v8, v4

    add-int/lit8 v9, v4, 0x1

    aget-wide v9, p1, v9

    aput-wide v9, p1, v8

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x1

    aget-wide v9, p1, v4

    neg-double v9, v9

    aput-wide v9, p1, v8

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x1

    aget-wide v9, p1, v4

    aput-wide v9, p1, v8

    aget-wide v8, p1, v2

    aput-wide v8, p1, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-wide v8, p1, v2

    neg-double v8, v8

    aput-wide v8, p1, v3

    aget-wide v2, p1, v7

    aput-wide v2, p1, v4

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v3, v7, 0x1

    aget-wide v3, p1, v3

    neg-double v3, v3

    aput-wide v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_141

    :cond_1c8
    const/4 v1, 0x0

    :goto_1c9
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v2, :cond_218

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    rem-int/2addr v2, v3

    mul-int v4, v2, v5

    mul-int v7, v1, v5

    const/4 v2, 0x0

    :goto_1de
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_215

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v3, v2

    move-object/from16 v0, p0

    iget v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    rem-int/2addr v3, v8

    mul-int v8, v3, v6

    mul-int v9, v2, v6

    const/4 v3, 0x1

    :goto_1f3
    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v10, :cond_212

    add-int v10, v4, v8

    add-int/2addr v10, v6

    sub-int/2addr v10, v3

    add-int v11, v7, v9

    add-int/2addr v11, v3

    add-int/lit8 v13, v11, 0x2

    aget-wide v13, p1, v13

    neg-double v13, v13

    aput-wide v13, p1, v10

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v11, 0x1

    aget-wide v13, p1, v11

    aput-wide v13, p1, v10

    add-int/lit8 v3, v3, 0x2

    goto :goto_1f3

    :cond_212
    add-int/lit8 v2, v2, 0x1

    goto :goto_1de

    :cond_215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c9

    :cond_218
    const/4 v1, 0x0

    :goto_219
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v2, :cond_261

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    rem-int/2addr v2, v3

    mul-int v3, v2, v5

    mul-int v4, v1, v5

    const/4 v2, 0x1

    :goto_22e
    if-ge v2, v12, :cond_25e

    move-object/from16 v0, p0

    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v7, v2

    mul-int/2addr v7, v6

    add-int/2addr v7, v4

    mul-int v8, v2, v6

    add-int/2addr v8, v3

    move-object/from16 v0, p0

    iget v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v9, v7

    add-int/lit8 v10, v7, 0x1

    aget-wide v13, p1, v10

    aput-wide v13, p1, v8

    aget-wide v10, p1, v10

    aput-wide v10, p1, v9

    add-int/lit8 v8, v8, 0x1

    aget-wide v10, p1, v7

    neg-double v10, v10

    aput-wide v10, p1, v8

    add-int/lit8 v8, v9, 0x1

    aget-wide v9, p1, v7

    aput-wide v9, p1, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_22e

    :cond_25e
    add-int/lit8 v1, v1, 0x1

    goto :goto_219

    :cond_261
    const/4 v1, 0x0

    :goto_262
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v2, :cond_140

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    rem-int/2addr v2, v3

    mul-int v3, v2, v5

    mul-int v4, v1, v5

    const/4 v2, 0x1

    :goto_277
    if-ge v2, v12, :cond_293

    move-object/from16 v0, p0

    iget v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v7, v2

    mul-int/2addr v7, v6

    add-int/2addr v7, v3

    mul-int v8, v2, v6

    add-int/2addr v8, v4

    aget-wide v9, p1, v8

    aput-wide v9, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-wide v8, p1, v8

    neg-double v8, v8

    aput-wide v8, p1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_277

    :cond_293
    add-int/lit8 v1, v1, 0x1

    goto :goto_262

    :cond_296
    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    aput-wide v2, p1, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, p1, v1

    mul-int v1, v12, v6

    mul-int v2, v15, v5

    add-int v3, v1, v2

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v4, v1

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, p1, v5

    aput-wide v5, p1, v4

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, p1, v1

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v1, v2

    add-int/lit8 v4, v2, 0x1

    aget-wide v4, p1, v4

    aput-wide v4, p1, v1

    add-int/lit8 v1, v2, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, p1, v1

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v1, v3

    add-int/lit8 v4, v3, 0x1

    aget-wide v4, p1, v4

    aput-wide v4, p1, v1

    add-int/lit8 v1, v3, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, p1, v1

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, p1, v1

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, p1, v1

    return-void
.end method

.method private fillSymmetric([[[D)V
    .registers 14

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v4, v0, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/lit8 v7, v0, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int/lit8 v8, v0, 0x2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v9

    const/4 v0, 0x1

    if-le v9, v0, :cond_15e

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_15e

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-lt v0, v9, :cond_15e

    new-array v10, v9, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int v11, v0, v9

    const/4 v0, 0x0

    move v6, v0

    :goto_23
    if-ge v6, v9, :cond_41

    mul-int v2, v6, v11

    add-int/lit8 v0, v9, -0x1

    if-ne v6, v0, :cond_3e

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_2d
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$39;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$39;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;III[[[D)V

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

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_50
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;

    move-object v1, p0

    move v4, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$40;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;III[[[D)V

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

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_74
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;

    move-object v1, p0

    move v4, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$41;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;III[[[D)V

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

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v1, v0

    aget-object v2, p1, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    aget-object v4, p1, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    aget-object v2, p1, v1

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    aget-object v4, p1, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    aget-object v2, p1, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p1, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    neg-double v4, v4

    aput-wide v4, v2, v3

    aget-object v2, p1, v1

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p1, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    aget-object v2, p1, v0

    aget-object v2, v2, v7

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    aget-object v4, p1, v1

    aget-object v4, v4, v7

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    aget-object v2, p1, v1

    aget-object v2, v2, v7

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    aget-object v4, p1, v1

    aget-object v4, v4, v7

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    aget-object v2, p1, v0

    aget-object v2, v2, v7

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p1, v1

    aget-object v4, v4, v7

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    neg-double v4, v4

    aput-wide v4, v2, v3

    aget-object v2, p1, v1

    aget-object v2, v2, v7

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p1, v1

    aget-object v4, v4, v7

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    aget-object v2, p1, v1

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v4, p1, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    aget-object v2, p1, v1

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-object v4, p1, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    neg-double v4, v4

    aput-wide v4, v2, v3

    aget-object v2, p1, v1

    aget-object v2, v2, v7

    const/4 v3, 0x0

    aget-object v4, p1, v0

    aget-object v4, v4, v7

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    aget-object v1, p1, v1

    aget-object v1, v1, v7

    const/4 v2, 0x1

    aget-object v3, p1, v0

    aget-object v3, v3, v7

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    neg-double v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8d

    :cond_15e
    const/4 v0, 0x0

    :goto_15f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_1a5

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    rem-int v3, v1, v2

    const/4 v1, 0x0

    :goto_16b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_1a2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v2, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    rem-int v5, v2, v5

    const/4 v2, 0x1

    :goto_177
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v6, :cond_19f

    sub-int v6, v4, v2

    aget-object v9, p1, v3

    aget-object v9, v9, v5

    aget-object v10, p1, v0

    aget-object v10, v10, v1

    add-int/lit8 v11, v2, 0x2

    aget-wide v10, v10, v11

    neg-double v10, v10

    aput-wide v10, v9, v6

    aget-object v9, p1, v3

    aget-object v9, v9, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v10, p1, v0

    aget-object v10, v10, v1

    add-int/lit8 v11, v2, 0x1

    aget-wide v10, v10, v11

    aput-wide v10, v9, v6

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
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_1fe

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    rem-int v2, v1, v2

    const/4 v1, 0x1

    :goto_1b2
    if-ge v1, v7, :cond_1fb

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v3, v1

    aget-object v4, p1, v2

    aget-object v4, v4, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    aget-object v6, p1, v0

    aget-object v6, v6, v3

    const/4 v9, 0x1

    aget-wide v9, v6, v9

    aput-wide v9, v4, v5

    aget-object v4, p1, v0

    aget-object v4, v4, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    aget-object v6, p1, v0

    aget-object v6, v6, v3

    const/4 v9, 0x1

    aget-wide v9, v6, v9

    aput-wide v9, v4, v5

    aget-object v4, p1, v2

    aget-object v4, v4, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/lit8 v5, v5, 0x1

    aget-object v6, p1, v0

    aget-object v6, v6, v3

    const/4 v9, 0x0

    aget-wide v9, v6, v9

    neg-double v9, v9

    aput-wide v9, v4, v5

    aget-object v4, p1, v0

    aget-object v4, v4, v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/lit8 v5, v5, 0x1

    aget-object v6, p1, v0

    aget-object v3, v6, v3

    const/4 v6, 0x0

    aget-wide v9, v3, v6

    aput-wide v9, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b2

    :cond_1fb
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a6

    :cond_1fe
    const/4 v0, 0x0

    :goto_1ff
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_8c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    rem-int v2, v1, v2

    const/4 v1, 0x1

    :goto_20b
    if-ge v1, v7, :cond_230

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v3, v1

    aget-object v4, p1, v2

    aget-object v4, v4, v3

    const/4 v5, 0x0

    aget-object v6, p1, v0

    aget-object v6, v6, v1

    const/4 v9, 0x0

    aget-wide v9, v6, v9

    aput-wide v9, v4, v5

    aget-object v4, p1, v2

    aget-object v3, v4, v3

    const/4 v4, 0x1

    aget-object v5, p1, v0

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    neg-double v5, v5

    aput-wide v5, v3, v4

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

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    aget-object v0, v0, v7

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v2, 0x0

    aget-object v2, p1, v2

    aget-object v2, v2, v7

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    aget-object v0, v0, v7

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    aget-object v0, p1, v8

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    aget-object v2, p1, v8

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    aget-object v0, p1, v8

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    aget-object v0, p1, v8

    aget-object v0, v0, v7

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    aget-object v2, p1, v8

    aget-object v2, v2, v7

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    aget-object v0, p1, v8

    aget-object v0, v0, v7

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    aget-object v0, p1, v8

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    aget-object v0, p1, v8

    aget-object v0, v0, v7

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    return-void
.end method

.method private mixedRadixRealForwardFull([D)V
    .registers 27

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v4, v2, 0x2

    new-array v5, v4, [D

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v20, v2, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_86

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v19, v2

    :goto_20
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/lit8 v7, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/lit8 v9, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int/lit8 v21, v2, 0x2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v22

    const/4 v2, 0x1

    move/from16 v0, v22

    if-le v0, v2, :cond_185

    move-object/from16 v0, p0

    iget-boolean v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v2, :cond_185

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_185

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

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

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    add-int/lit8 v2, v2, -0x1

    mul-int v3, v10, v24

    sub-int v5, v2, v3

    add-int/lit8 v2, v22, -0x1

    if-ne v10, v2, :cond_91

    add-int/lit8 v6, v21, 0x1

    :goto_73
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;

    move-object/from16 v3, p0

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$21;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[DI)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v23, v10

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_5f

    :cond_86
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

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

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[[D

    const/4 v2, 0x0

    :goto_aa
    move/from16 v0, v22

    if-ge v2, v0, :cond_cb

    mul-int v12, v2, v24

    add-int/lit8 v3, v22, -0x1

    if-ne v2, v3, :cond_c8

    add-int/lit8 v13, v21, 0x1

    :goto_b6
    new-instance v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$22;

    move-object/from16 v11, p0

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v15}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$22;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[D[[[D)V

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
    new-instance v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$23;

    move-object/from16 v11, p0

    move v14, v7

    move-object/from16 v16, p1

    move/from16 v17, v9

    move/from16 v18, v4

    invoke-direct/range {v10 .. v18}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$23;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;III[[[D[DII)V

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

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int v3, v2, v22

    const/4 v2, 0x0

    :goto_ff
    move/from16 v0, v22

    if-ge v2, v0, :cond_124

    mul-int v12, v2, v3

    add-int/lit8 v5, v22, -0x1

    if-ne v2, v5, :cond_121

    move-object/from16 v0, p0

    iget v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_10d
    new-instance v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;

    move-object/from16 v11, p0

    move v14, v7

    move v15, v9

    move-object/from16 v16, p1

    invoke-direct/range {v10 .. v16}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$24;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[D)V

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
    new-instance v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$25;

    move-object/from16 v11, p0

    move v14, v9

    move v15, v7

    move-object/from16 v16, p1

    invoke-direct/range {v10 .. v16}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$25;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[D)V

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

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int v3, v2, v22

    const/4 v2, 0x0

    :goto_157
    move/from16 v0, v22

    if-ge v2, v0, :cond_181

    mul-int v12, v2, v3

    add-int/lit8 v5, v22, -0x1

    if-ne v2, v5, :cond_17e

    move-object/from16 v0, p0

    iget v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_165
    new-instance v10, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$26;

    move-object/from16 v11, p0

    move v14, v7

    move/from16 v15, v19

    move/from16 v16, v9

    move/from16 v17, v4

    move-object/from16 v18, p1

    invoke-direct/range {v10 .. v18}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$26;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIIIII[D)V

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

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_18c
    if-ltz v3, :cond_1c5

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v6, v3, v2

    mul-int v8, v3, v7

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    add-int/lit8 v2, v2, -0x1

    :goto_19c
    if-ltz v2, :cond_1c1

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v10, v2

    add-int/2addr v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    move-object/from16 v0, p1

    invoke-static {v0, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v10, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

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

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v2, v2, 0x2

    new-array v6, v2, [D

    const/4 v2, 0x0

    :goto_1ce
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_224

    mul-int v8, v2, v7

    const/4 v3, 0x0

    :goto_1d7
    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v5, :cond_221

    mul-int/lit8 v10, v3, 0x2

    const/4 v5, 0x0

    :goto_1e0
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v5, v11, :cond_1fb

    mul-int/lit8 v11, v5, 0x2

    mul-int v12, v5, v9

    add-int/2addr v12, v8

    add-int/2addr v12, v10

    aget-wide v13, p1, v12

    aput-wide v13, v6, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-wide v12, p1, v12

    aput-wide v12, v6, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e0

    :cond_1fb
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v5, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    const/4 v5, 0x0

    :goto_203
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v5, v11, :cond_21e

    mul-int/lit8 v11, v5, 0x2

    mul-int v12, v5, v9

    add-int/2addr v12, v8

    add-int/2addr v12, v10

    aget-wide v13, v6, v11

    aput-wide v13, p1, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-wide v13, v6, v11

    aput-wide v13, p1, v12

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

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v2, v2, 0x2

    new-array v6, v2, [D

    const/4 v2, 0x0

    move v5, v2

    :goto_22e
    move/from16 v0, v20

    if-ge v5, v0, :cond_283

    mul-int v8, v5, v9

    const/4 v2, 0x0

    :goto_235
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v3, :cond_27f

    mul-int/lit8 v10, v2, 0x2

    const/4 v3, 0x0

    :goto_23e
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v11, :cond_259

    mul-int/lit8 v11, v3, 0x2

    mul-int v12, v3, v7

    add-int/2addr v12, v8

    add-int/2addr v12, v10

    aget-wide v13, p1, v12

    aput-wide v13, v6, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-wide v12, p1, v12

    aput-wide v12, v6, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_23e

    :cond_259
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    const/4 v3, 0x0

    :goto_261
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v11, :cond_27c

    mul-int/lit8 v11, v3, 0x2

    mul-int v12, v3, v7

    add-int/2addr v12, v8

    add-int/2addr v12, v10

    aget-wide v13, v6, v11

    aput-wide v13, p1, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-wide v13, v6, v11

    aput-wide v13, p1, v12

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

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_184

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v3, v2

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    rem-int/2addr v3, v5

    mul-int v6, v3, v7

    mul-int v8, v2, v7

    const/4 v3, 0x1

    move v5, v3

    :goto_29a
    move/from16 v0, v19

    if-ge v5, v0, :cond_2cf

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v3, v5

    mul-int/2addr v3, v9

    mul-int v10, v5, v9

    add-int v11, v6, v3

    const/4 v3, 0x0

    :goto_2a9
    move-object/from16 v0, p0

    iget v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v12, :cond_2cb

    mul-int/lit8 v12, v3, 0x2

    sub-int v13, v4, v12

    add-int v14, v8, v10

    add-int/2addr v12, v14

    rem-int v14, v13, v4

    add-int/2addr v14, v11

    aget-wide v15, p1, v12

    aput-wide v15, p1, v14

    add-int/lit8 v13, v13, 0x1

    rem-int/2addr v13, v4

    add-int/2addr v13, v11

    add-int/lit8 v12, v12, 0x1

    aget-wide v14, p1, v12

    neg-double v14, v14

    aput-wide v14, p1, v13

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

.method private mixedRadixRealForwardFull([[[D)V
    .registers 15

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v6, v0, [D

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v5, v0, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_50

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/lit8 v4, v0, 0x2

    :goto_1a
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    const/4 v0, 0x1

    if-le v8, v0, :cond_c8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_c8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-lt v0, v8, :cond_c8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-lt v0, v8, :cond_c8

    if-lt v1, v8, :cond_c8

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int v3, v0, v8

    const/4 v0, 0x0

    move v2, v0

    :goto_37
    if-ge v2, v8, :cond_5a

    mul-int v6, v2, v3

    add-int/lit8 v0, v8, -0x1

    if-ne v2, v0, :cond_57

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_41
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$13;

    invoke-direct {v7, p0, v6, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$13;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[[[D)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_37

    :cond_50
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v4, v0, 0x2

    goto :goto_1a

    :cond_57
    add-int v0, v6, v3

    goto :goto_41

    :cond_5a
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_5f
    if-ge v2, v8, :cond_7b

    mul-int v6, v2, v3

    add-int/lit8 v0, v8, -0x1

    if-ne v2, v0, :cond_78

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_69
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$14;

    invoke-direct {v7, p0, v6, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$14;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[[[D)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5f

    :cond_78
    add-int v0, v6, v3

    goto :goto_69

    :cond_7b
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    div-int v3, v1, v8

    const/4 v0, 0x0

    move v2, v0

    :goto_82
    if-ge v2, v8, :cond_9d

    mul-int v6, v2, v3

    add-int/lit8 v0, v8, -0x1

    if-ne v2, v0, :cond_9a

    move v0, v1

    :goto_8b
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;

    invoke-direct {v7, p0, v6, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$15;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[[[D)V

    invoke-static {v7}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_82

    :cond_9a
    add-int v0, v6, v3

    goto :goto_8b

    :cond_9d
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int v10, v0, v8

    const/4 v0, 0x0

    move v7, v0

    :goto_a6
    if-ge v7, v8, :cond_c4

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_c1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_b0
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$16;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$16;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[[[D)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_a6

    :cond_c1
    add-int v3, v2, v10

    goto :goto_b0

    :cond_c4
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_c7
    return-void

    :cond_c8
    const/4 v0, 0x0

    :goto_c9
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v2, :cond_e1

    const/4 v2, 0x0

    :goto_ce
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_de

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    aget-object v7, p1, v0

    aget-object v7, v7, v2

    invoke-virtual {v3, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForwardFull([D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_ce

    :cond_de
    add-int/lit8 v0, v0, 0x1

    goto :goto_c9

    :cond_e1
    const/4 v0, 0x0

    :goto_e2
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v2, :cond_134

    const/4 v2, 0x0

    :goto_e7
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v3, :cond_131

    mul-int/lit8 v7, v2, 0x2

    const/4 v3, 0x0

    :goto_ee
    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v8, :cond_10b

    mul-int/lit8 v8, v3, 0x2

    aget-object v9, p1, v0

    aget-object v9, v9, v3

    aget-wide v9, v9, v7

    aput-wide v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    aget-object v9, p1, v0

    aget-object v9, v9, v3

    add-int/lit8 v10, v7, 0x1

    aget-wide v9, v9, v10

    aput-wide v9, v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_ee

    :cond_10b
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    const/4 v3, 0x0

    :goto_111
    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v8, :cond_12e

    mul-int/lit8 v8, v3, 0x2

    aget-object v9, p1, v0

    aget-object v9, v9, v3

    aget-wide v10, v6, v8

    aput-wide v10, v9, v7

    aget-object v9, p1, v0

    aget-object v9, v9, v3

    add-int/lit8 v10, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-wide v11, v6, v8

    aput-wide v11, v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_111

    :cond_12e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e7

    :cond_131
    add-int/lit8 v0, v0, 0x1

    goto :goto_e2

    :cond_134
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x2

    new-array v6, v0, [D

    const/4 v0, 0x0

    move v3, v0

    :goto_13c
    if-ge v3, v1, :cond_18d

    const/4 v0, 0x0

    :goto_13f
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v0, v2, :cond_189

    mul-int/lit8 v7, v0, 0x2

    const/4 v2, 0x0

    :goto_146
    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v8, :cond_163

    mul-int/lit8 v8, v2, 0x2

    aget-object v9, p1, v2

    aget-object v9, v9, v3

    aget-wide v9, v9, v7

    aput-wide v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    aget-object v9, p1, v2

    aget-object v9, v9, v3

    add-int/lit8 v10, v7, 0x1

    aget-wide v9, v9, v10

    aput-wide v9, v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_146

    :cond_163
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v2, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    const/4 v2, 0x0

    :goto_169
    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v8, :cond_186

    mul-int/lit8 v8, v2, 0x2

    aget-object v9, p1, v2

    aget-object v9, v9, v3

    aget-wide v10, v6, v8

    aput-wide v10, v9, v7

    aget-object v9, p1, v2

    aget-object v9, v9, v3

    add-int/lit8 v10, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-wide v11, v6, v8

    aput-wide v11, v9, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_169

    :cond_186
    add-int/lit8 v0, v0, 0x1

    goto :goto_13f

    :cond_189
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_13c

    :cond_18d
    const/4 v0, 0x0

    :goto_18e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_c7

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    rem-int v3, v1, v2

    const/4 v1, 0x1

    move v2, v1

    :goto_19b
    if-ge v2, v4, :cond_1d1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int v6, v1, v2

    const/4 v1, 0x0

    :goto_1a2
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v7, :cond_1cd

    mul-int/lit8 v7, v1, 0x2

    sub-int v8, v5, v7

    aget-object v9, p1, v3

    aget-object v9, v9, v6

    rem-int v10, v8, v5

    aget-object v11, p1, v0

    aget-object v11, v11, v2

    aget-wide v11, v11, v7

    aput-wide v11, v9, v10

    aget-object v9, p1, v3

    aget-object v9, v9, v6

    add-int/lit8 v8, v8, 0x1

    rem-int/2addr v8, v5

    aget-object v10, p1, v0

    aget-object v10, v10, v2

    add-int/lit8 v7, v7, 0x1

    aget-wide v10, v10, v7

    neg-double v10, v10

    aput-wide v10, v9, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a2

    :cond_1cd
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_19b

    :cond_1d1
    add-int/lit8 v0, v0, 0x1

    goto :goto_18e
.end method

.method private mixedRadixRealInverseFull([DZ)V
    .registers 29

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v4, v2, 0x2

    new-array v5, v4, [D

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v21, v2, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_88

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/lit8 v2, v2, 0x2

    move/from16 v20, v2

    :goto_20
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/lit8 v7, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/lit8 v10, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int/lit8 v22, v2, 0x2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v23

    const/4 v2, 0x1

    move/from16 v0, v23

    if-le v0, v2, :cond_18f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v2, :cond_18f

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_18f

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

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

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    add-int/lit8 v2, v2, -0x1

    mul-int v3, v11, v25

    sub-int v5, v2, v3

    add-int/lit8 v2, v23, -0x1

    if-ne v11, v2, :cond_93

    add-int/lit8 v6, v22, 0x1

    :goto_73
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$27;

    move-object/from16 v3, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v2 .. v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$27;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[DZI)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v24, v11

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_5f

    :cond_88
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

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

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[[D

    const/4 v2, 0x0

    :goto_ac
    move/from16 v0, v23

    if-ge v2, v0, :cond_cf

    mul-int v13, v2, v25

    add-int/lit8 v3, v23, -0x1

    if-ne v2, v3, :cond_cc

    add-int/lit8 v14, v22, 0x1

    :goto_b8
    new-instance v11, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;

    move-object/from16 v12, p0

    move-object/from16 v15, p1

    move/from16 v17, p2

    invoke-direct/range {v11 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[D[[[DZ)V

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
    new-instance v11, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$29;

    move-object/from16 v12, p0

    move v15, v7

    move-object/from16 v17, p1

    move/from16 v18, v10

    move/from16 v19, v4

    invoke-direct/range {v11 .. v19}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$29;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;III[[[D[DII)V

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

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int v3, v2, v23

    const/4 v2, 0x0

    :goto_103
    move/from16 v0, v23

    if-ge v2, v0, :cond_12b

    mul-int v13, v2, v3

    add-int/lit8 v5, v23, -0x1

    if-ne v2, v5, :cond_128

    move-object/from16 v0, p0

    iget v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_111
    new-instance v11, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$30;

    move-object/from16 v12, p0

    move v15, v7

    move/from16 v16, v10

    move-object/from16 v17, p1

    move/from16 v18, p2

    invoke-direct/range {v11 .. v18}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$30;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[DZ)V

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
    new-instance v11, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$31;

    move-object/from16 v12, p0

    move v15, v10

    move/from16 v16, v7

    move-object/from16 v17, p1

    move/from16 v18, p2

    invoke-direct/range {v11 .. v18}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$31;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[DZ)V

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

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int v3, v2, v23

    const/4 v2, 0x0

    :goto_161
    move/from16 v0, v23

    if-ge v2, v0, :cond_18b

    mul-int v13, v2, v3

    add-int/lit8 v5, v23, -0x1

    if-ne v2, v5, :cond_188

    move-object/from16 v0, p0

    iget v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_16f
    new-instance v11, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$32;

    move-object/from16 v12, p0

    move v15, v7

    move/from16 v16, v20

    move/from16 v17, v10

    move/from16 v18, v4

    move-object/from16 v19, p1

    invoke-direct/range {v11 .. v19}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$32;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIIIII[D)V

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

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_196
    if-ltz v3, :cond_1d1

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v6, v3, v2

    mul-int v8, v3, v7

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    add-int/lit8 v2, v2, -0x1

    :goto_1a6
    if-ltz v2, :cond_1cd

    move-object/from16 v0, p0

    iget v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v9, v2

    add-int/2addr v9, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    move-object/from16 v0, p1

    invoke-static {v0, v9, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move/from16 v0, p2

    invoke-virtual {v9, v5, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

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

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v2, v2, 0x2

    new-array v6, v2, [D

    const/4 v2, 0x0

    :goto_1da
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_232

    mul-int v8, v2, v7

    const/4 v3, 0x0

    :goto_1e3
    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v5, :cond_22f

    mul-int/lit8 v9, v3, 0x2

    const/4 v5, 0x0

    :goto_1ec
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v5, v11, :cond_207

    mul-int/lit8 v11, v5, 0x2

    mul-int v12, v5, v10

    add-int/2addr v12, v8

    add-int/2addr v12, v9

    aget-wide v13, p1, v12

    aput-wide v13, v6, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-wide v12, p1, v12

    aput-wide v12, v6, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_1ec

    :cond_207
    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move/from16 v0, p2

    invoke-virtual {v5, v6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    const/4 v5, 0x0

    :goto_211
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v5, v11, :cond_22c

    mul-int/lit8 v11, v5, 0x2

    mul-int v12, v5, v10

    add-int/2addr v12, v8

    add-int/2addr v12, v9

    aget-wide v13, v6, v11

    aput-wide v13, p1, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-wide v13, v6, v11

    aput-wide v13, p1, v12

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

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v2, v2, 0x2

    new-array v6, v2, [D

    const/4 v2, 0x0

    move v5, v2

    :goto_23c
    move/from16 v0, v21

    if-ge v5, v0, :cond_293

    mul-int v8, v5, v10

    const/4 v2, 0x0

    :goto_243
    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v3, :cond_28f

    mul-int/lit8 v9, v2, 0x2

    const/4 v3, 0x0

    :goto_24c
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v11, :cond_267

    mul-int/lit8 v11, v3, 0x2

    mul-int v12, v3, v7

    add-int/2addr v12, v8

    add-int/2addr v12, v9

    aget-wide v13, p1, v12

    aput-wide v13, v6, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-wide v12, p1, v12

    aput-wide v12, v6, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_24c

    :cond_267
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    const/4 v3, 0x0

    :goto_271
    move-object/from16 v0, p0

    iget v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v11, :cond_28c

    mul-int/lit8 v11, v3, 0x2

    mul-int v12, v3, v7

    add-int/2addr v12, v8

    add-int/2addr v12, v9

    aget-wide v13, v6, v11

    aput-wide v13, p1, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-wide v13, v6, v11

    aput-wide v13, p1, v12

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

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_18e

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v3, v2

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    rem-int/2addr v3, v5

    mul-int v6, v3, v7

    mul-int v8, v2, v7

    const/4 v3, 0x1

    move v5, v3

    :goto_2aa
    move/from16 v0, v20

    if-ge v5, v0, :cond_2df

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v3, v5

    mul-int/2addr v3, v10

    mul-int v9, v5, v10

    add-int v11, v6, v3

    const/4 v3, 0x0

    :goto_2b9
    move-object/from16 v0, p0

    iget v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v12, :cond_2db

    mul-int/lit8 v12, v3, 0x2

    sub-int v13, v4, v12

    add-int v14, v8, v9

    add-int/2addr v12, v14

    rem-int v14, v13, v4

    add-int/2addr v14, v11

    aget-wide v15, p1, v12

    aput-wide v15, p1, v14

    add-int/lit8 v13, v13, 0x1

    rem-int/2addr v13, v4

    add-int/2addr v13, v11

    add-int/lit8 v12, v12, 0x1

    aget-wide v14, p1, v12

    neg-double v14, v14

    aput-wide v14, p1, v13

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

.method private mixedRadixRealInverseFull([[[DZ)V
    .registers 16

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [D

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v6, v0, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v9, v0, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_54

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int/lit8 v0, v0, 0x2

    move v7, v0

    :goto_1b
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v10

    const/4 v0, 0x1

    if-le v10, v0, :cond_d5

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_d5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-lt v0, v10, :cond_d5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-lt v0, v10, :cond_d5

    if-lt v6, v10, :cond_d5

    new-array v11, v10, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int v12, v0, v10

    const/4 v0, 0x0

    move v8, v0

    :goto_38
    if-ge v8, v10, :cond_5f

    mul-int v2, v8, v12

    add-int/lit8 v0, v10, -0x1

    if-ne v8, v0, :cond_5c

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_42
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$17;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$17;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[[[DZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v8

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_38

    :cond_54
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

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

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_6e
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$18;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$18;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[[[DZ)V

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
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$19;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$19;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[[[DZ)V

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

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int v12, v0, v10

    const/4 v0, 0x0

    move v8, v0

    :goto_b1
    if-ge v8, v10, :cond_d1

    mul-int v2, v8, v12

    add-int/lit8 v0, v10, -0x1

    if-ne v8, v0, :cond_ce

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_bb
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$20;

    move-object v1, p0

    move v4, v7

    move v5, v9

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$20;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[[[D)V

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
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_ee

    const/4 v1, 0x0

    :goto_db
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_eb

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    aget-object v4, p1, v0

    aget-object v4, v4, v1

    invoke-virtual {v2, v4, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_db

    :cond_eb
    add-int/lit8 v0, v0, 0x1

    goto :goto_d6

    :cond_ee
    const/4 v0, 0x0

    :goto_ef
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_141

    const/4 v1, 0x0

    :goto_f4
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v2, :cond_13e

    mul-int/lit8 v4, v1, 0x2

    const/4 v2, 0x0

    :goto_fb
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v5, :cond_118

    mul-int/lit8 v5, v2, 0x2

    aget-object v8, p1, v0

    aget-object v8, v8, v2

    aget-wide v10, v8, v4

    aput-wide v10, v3, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v8, p1, v0

    aget-object v8, v8, v2

    add-int/lit8 v10, v4, 0x1

    aget-wide v10, v8, v10

    aput-wide v10, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_fb

    :cond_118
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    const/4 v2, 0x0

    :goto_11e
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v5, :cond_13b

    mul-int/lit8 v5, v2, 0x2

    aget-object v8, p1, v0

    aget-object v8, v8, v2

    aget-wide v10, v3, v5

    aput-wide v10, v8, v4

    aget-object v8, p1, v0

    aget-object v8, v8, v2

    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-wide v11, v3, v5

    aput-wide v11, v8, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_11e

    :cond_13b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f4

    :cond_13e
    add-int/lit8 v0, v0, 0x1

    goto :goto_ef

    :cond_141
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [D

    const/4 v0, 0x0

    move v2, v0

    :goto_149
    if-ge v2, v6, :cond_19a

    const/4 v0, 0x0

    :goto_14c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v0, v1, :cond_196

    mul-int/lit8 v4, v0, 0x2

    const/4 v1, 0x0

    :goto_153
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v5, :cond_170

    mul-int/lit8 v5, v1, 0x2

    aget-object v8, p1, v1

    aget-object v8, v8, v2

    aget-wide v10, v8, v4

    aput-wide v10, v3, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v8, p1, v1

    aget-object v8, v8, v2

    add-int/lit8 v10, v4, 0x1

    aget-wide v10, v8, v10

    aput-wide v10, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_153

    :cond_170
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    const/4 v1, 0x0

    :goto_176
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v1, v5, :cond_193

    mul-int/lit8 v5, v1, 0x2

    aget-object v8, p1, v1

    aget-object v8, v8, v2

    aget-wide v10, v3, v5

    aput-wide v10, v8, v4

    aget-object v8, p1, v1

    aget-object v8, v8, v2

    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-wide v11, v3, v5

    aput-wide v11, v8, v10

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
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_d4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int/2addr v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    rem-int v3, v1, v2

    const/4 v1, 0x1

    move v2, v1

    :goto_1a8
    if-ge v2, v7, :cond_1de

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int v4, v1, v2

    const/4 v1, 0x0

    :goto_1af
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v5, :cond_1da

    mul-int/lit8 v5, v1, 0x2

    sub-int v6, v9, v5

    aget-object v8, p1, v3

    aget-object v8, v8, v4

    rem-int v10, v6, v9

    aget-object v11, p1, v0

    aget-object v11, v11, v2

    aget-wide v11, v11, v5

    aput-wide v11, v8, v10

    aget-object v8, p1, v3

    aget-object v8, v8, v4

    add-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v9

    aget-object v10, p1, v0

    aget-object v10, v10, v2

    add-int/lit8 v5, v5, 0x1

    aget-wide v10, v10, v5

    neg-double v10, v10

    aput-wide v10, v8, v6

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

.method private rdft3d_sub(I[D)V
    .registers 18

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    shr-int/lit8 v2, v0, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    shr-int/lit8 v3, v0, 0x1

    if-gez p1, :cond_151

    const/4 v0, 0x1

    move v1, v0

    :goto_c
    if-ge v1, v2, :cond_e8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int v4, v0, v1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v0, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v6, v1

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v7, v4

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    aget-wide v8, p2, v0

    aget-wide v10, p2, v5

    sub-double/2addr v8, v10

    aget-wide v10, p2, v0

    aget-wide v12, p2, v5

    add-double/2addr v10, v12

    aput-wide v10, p2, v0

    aput-wide v8, p2, v5

    add-int/lit8 v8, v5, 0x1

    aget-wide v8, p2, v8

    add-int/lit8 v10, v0, 0x1

    aget-wide v10, p2, v10

    sub-double/2addr v8, v10

    add-int/lit8 v0, v0, 0x1

    aget-wide v10, p2, v0

    add-int/lit8 v12, v5, 0x1

    aget-wide v12, p2, v12

    add-double/2addr v10, v12

    aput-wide v10, p2, v0

    add-int/lit8 v0, v5, 0x1

    aput-wide v8, p2, v0

    aget-wide v8, p2, v6

    aget-wide v10, p2, v7

    sub-double/2addr v8, v10

    aget-wide v10, p2, v6

    aget-wide v12, p2, v7

    add-double/2addr v10, v12

    aput-wide v10, p2, v6

    aput-wide v8, p2, v7

    add-int/lit8 v0, v7, 0x1

    aget-wide v8, p2, v0

    add-int/lit8 v0, v6, 0x1

    aget-wide v10, p2, v0

    sub-double/2addr v8, v10

    add-int/lit8 v0, v6, 0x1

    aget-wide v5, p2, v0

    add-int/lit8 v10, v7, 0x1

    aget-wide v10, p2, v10

    add-double/2addr v5, v10

    aput-wide v5, p2, v0

    add-int/lit8 v0, v7, 0x1

    aput-wide v8, p2, v0

    const/4 v0, 0x1

    :goto_73
    if-ge v0, v3, :cond_e3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v5, v0

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v6, v1

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v7, v4

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v8, v5

    add-int/2addr v7, v8

    aget-wide v8, p2, v6

    aget-wide v10, p2, v7

    sub-double/2addr v8, v10

    aget-wide v10, p2, v6

    aget-wide v12, p2, v7

    add-double/2addr v10, v12

    aput-wide v10, p2, v6

    aput-wide v8, p2, v7

    add-int/lit8 v8, v7, 0x1

    aget-wide v8, p2, v8

    add-int/lit8 v10, v6, 0x1

    aget-wide v10, p2, v10

    sub-double/2addr v8, v10

    add-int/lit8 v6, v6, 0x1

    aget-wide v10, p2, v6

    add-int/lit8 v12, v7, 0x1

    aget-wide v12, p2, v12

    add-double/2addr v10, v12

    aput-wide v10, p2, v6

    add-int/lit8 v6, v7, 0x1

    aput-wide v8, p2, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v6, v4

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v7, v1

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v5, v8

    add-int/2addr v5, v7

    aget-wide v7, p2, v6

    aget-wide v9, p2, v5

    sub-double/2addr v7, v9

    aget-wide v9, p2, v6

    aget-wide v11, p2, v5

    add-double/2addr v9, v11

    aput-wide v9, p2, v6

    aput-wide v7, p2, v5

    add-int/lit8 v7, v5, 0x1

    aget-wide v7, p2, v7

    add-int/lit8 v9, v6, 0x1

    aget-wide v9, p2, v9

    sub-double/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    aget-wide v9, p2, v6

    add-int/lit8 v11, v5, 0x1

    aget-wide v11, p2, v11

    add-double/2addr v9, v11

    aput-wide v9, p2, v6

    add-int/lit8 v5, v5, 0x1

    aput-wide v7, p2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_e3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_c

    :cond_e8
    const/4 v0, 0x1

    :goto_e9
    if-ge v0, v3, :cond_2bc

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v1, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v5, v1

    aget-wide v6, p2, v4

    aget-wide v8, p2, v5

    sub-double/2addr v6, v8

    aget-wide v8, p2, v4

    aget-wide v10, p2, v5

    add-double/2addr v8, v10

    aput-wide v8, p2, v4

    aput-wide v6, p2, v5

    add-int/lit8 v6, v5, 0x1

    aget-wide v6, p2, v6

    add-int/lit8 v8, v4, 0x1

    aget-wide v8, p2, v8

    sub-double/2addr v6, v8

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, p2, v4

    add-int/lit8 v10, v5, 0x1

    aget-wide v10, p2, v10

    add-double/2addr v8, v10

    aput-wide v8, p2, v4

    add-int/lit8 v4, v5, 0x1

    aput-wide v6, p2, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v5, v2

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v1, v6

    add-int/2addr v1, v5

    aget-wide v5, p2, v4

    aget-wide v7, p2, v1

    sub-double/2addr v5, v7

    aget-wide v7, p2, v4

    aget-wide v9, p2, v1

    add-double/2addr v7, v9

    aput-wide v7, p2, v4

    aput-wide v5, p2, v1

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, p2, v5

    add-int/lit8 v7, v4, 0x1

    aget-wide v7, p2, v7

    sub-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    aget-wide v7, p2, v4

    add-int/lit8 v9, v1, 0x1

    aget-wide v9, p2, v9

    add-double/2addr v7, v9

    aput-wide v7, p2, v4

    add-int/lit8 v1, v1, 0x1

    aput-wide v5, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_e9

    :cond_151
    const/4 v0, 0x1

    move v1, v0

    :goto_153
    if-ge v1, v2, :cond_247

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int v4, v0, v1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v0, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v5, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aget-wide v8, p2, v5

    aget-wide v10, p2, v0

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    aput-wide v6, p2, v0

    aget-wide v6, p2, v5

    aget-wide v8, p2, v0

    sub-double/2addr v6, v8

    aput-wide v6, p2, v5

    add-int/lit8 v6, v0, 0x1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-int/lit8 v9, v5, 0x1

    aget-wide v9, p2, v9

    add-int/lit8 v11, v0, 0x1

    aget-wide v11, p2, v11

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    aput-wide v7, p2, v6

    add-int/lit8 v5, v5, 0x1

    aget-wide v6, p2, v5

    add-int/lit8 v0, v0, 0x1

    aget-wide v8, p2, v0

    sub-double/2addr v6, v8

    aput-wide v6, p2, v5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v0, v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v5, v3

    add-int/2addr v0, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aget-wide v8, p2, v5

    aget-wide v10, p2, v0

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    aput-wide v6, p2, v0

    aget-wide v6, p2, v5

    aget-wide v8, p2, v0

    sub-double/2addr v6, v8

    aput-wide v6, p2, v5

    add-int/lit8 v6, v0, 0x1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-int/lit8 v9, v5, 0x1

    aget-wide v9, p2, v9

    add-int/lit8 v11, v0, 0x1

    aget-wide v11, p2, v11

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    aput-wide v7, p2, v6

    add-int/lit8 v5, v5, 0x1

    aget-wide v6, p2, v5

    add-int/lit8 v0, v0, 0x1

    aget-wide v8, p2, v0

    sub-double/2addr v6, v8

    aput-wide v6, p2, v5

    const/4 v0, 0x1

    :goto_1c6
    if-ge v0, v3, :cond_242

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v5, v0

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v6, v4

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v7, v1

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v8, v0

    add-int/2addr v7, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    aget-wide v10, p2, v7

    aget-wide v12, p2, v6

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    aput-wide v8, p2, v6

    aget-wide v8, p2, v7

    aget-wide v10, p2, v6

    sub-double/2addr v8, v10

    aput-wide v8, p2, v7

    add-int/lit8 v8, v6, 0x1

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p2, v11

    add-int/lit8 v13, v6, 0x1

    aget-wide v13, p2, v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    aput-wide v9, p2, v8

    add-int/lit8 v7, v7, 0x1

    aget-wide v8, p2, v7

    add-int/lit8 v6, v6, 0x1

    aget-wide v10, p2, v6

    sub-double/2addr v8, v10

    aput-wide v8, p2, v7

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v6, v1

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v5, v7

    add-int/2addr v5, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v6, v4

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    aget-wide v9, p2, v6

    aget-wide v11, p2, v5

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    aput-wide v7, p2, v5

    aget-wide v7, p2, v6

    aget-wide v9, p2, v5

    sub-double/2addr v7, v9

    aput-wide v7, p2, v6

    add-int/lit8 v7, v5, 0x1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-int/lit8 v10, v6, 0x1

    aget-wide v10, p2, v10

    add-int/lit8 v12, v5, 0x1

    aget-wide v12, p2, v12

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    aput-wide v8, p2, v7

    add-int/lit8 v6, v6, 0x1

    aget-wide v7, p2, v6

    add-int/lit8 v5, v5, 0x1

    aget-wide v9, p2, v5

    sub-double/2addr v7, v9

    aput-wide v7, p2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c6

    :cond_242
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_153

    :cond_247
    const/4 v0, 0x1

    :goto_248
    if-ge v0, v3, :cond_2bc

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v1, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v5, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aget-wide v8, p2, v5

    aget-wide v10, p2, v4

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    aput-wide v6, p2, v4

    aget-wide v6, p2, v5

    aget-wide v8, p2, v4

    sub-double/2addr v6, v8

    aput-wide v6, p2, v5

    add-int/lit8 v6, v4, 0x1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-int/lit8 v9, v5, 0x1

    aget-wide v9, p2, v9

    add-int/lit8 v11, v4, 0x1

    aget-wide v11, p2, v11

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    aput-wide v7, p2, v6

    add-int/lit8 v5, v5, 0x1

    aget-wide v6, p2, v5

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, p2, v4

    sub-double/2addr v6, v8

    aput-wide v6, p2, v5

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v1, v5

    add-int/2addr v1, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v4, v2

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    aget-wide v7, p2, v4

    aget-wide v9, p2, v1

    sub-double/2addr v7, v9

    mul-double/2addr v5, v7

    aput-wide v5, p2, v1

    aget-wide v5, p2, v4

    aget-wide v7, p2, v1

    sub-double/2addr v5, v7

    aput-wide v5, p2, v4

    add-int/lit8 v5, v1, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-int/lit8 v8, v4, 0x1

    aget-wide v8, p2, v8

    add-int/lit8 v10, v1, 0x1

    aget-wide v10, p2, v10

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    aput-wide v6, p2, v5

    add-int/lit8 v4, v4, 0x1

    aget-wide v5, p2, v4

    add-int/lit8 v1, v1, 0x1

    aget-wide v7, p2, v1

    sub-double/2addr v5, v7

    aput-wide v5, p2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_248

    :cond_2bc
    return-void
.end method

.method private rdft3d_sub(I[[[D)V
    .registers 17

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    shr-int/lit8 v2, v0, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    shr-int/lit8 v3, v0, 0x1

    if-gez p1, :cond_213

    const/4 v0, 0x1

    move v1, v0

    :goto_c
    if-ge v1, v2, :cond_163

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int v4, v0, v1

    aget-object v0, p2, v1

    const/4 v5, 0x0

    aget-object v0, v0, v5

    const/4 v5, 0x0

    aget-wide v5, v0, v5

    aget-object v0, p2, v4

    const/4 v7, 0x0

    aget-object v0, v0, v7

    const/4 v7, 0x0

    aget-wide v7, v0, v7

    sub-double/2addr v5, v7

    aget-object v0, p2, v1

    const/4 v7, 0x0

    aget-object v0, v0, v7

    const/4 v7, 0x0

    aget-wide v8, v0, v7

    aget-object v10, p2, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    aput-wide v8, v0, v7

    aget-object v0, p2, v4

    const/4 v7, 0x0

    aget-object v0, v0, v7

    const/4 v7, 0x0

    aput-wide v5, v0, v7

    aget-object v0, p2, v4

    const/4 v5, 0x0

    aget-object v0, v0, v5

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    aget-object v0, p2, v1

    const/4 v7, 0x0

    aget-object v0, v0, v7

    const/4 v7, 0x1

    aget-wide v7, v0, v7

    sub-double/2addr v5, v7

    aget-object v0, p2, v1

    const/4 v7, 0x0

    aget-object v0, v0, v7

    const/4 v7, 0x1

    aget-wide v8, v0, v7

    aget-object v10, p2, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    aput-wide v8, v0, v7

    aget-object v0, p2, v4

    const/4 v7, 0x0

    aget-object v0, v0, v7

    const/4 v7, 0x1

    aput-wide v5, v0, v7

    aget-object v0, p2, v1

    aget-object v0, v0, v3

    const/4 v5, 0x0

    aget-wide v5, v0, v5

    aget-object v0, p2, v4

    aget-object v0, v0, v3

    const/4 v7, 0x0

    aget-wide v7, v0, v7

    sub-double/2addr v5, v7

    aget-object v0, p2, v1

    aget-object v0, v0, v3

    const/4 v7, 0x0

    aget-wide v8, v0, v7

    aget-object v10, p2, v4

    aget-object v10, v10, v3

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    aput-wide v8, v0, v7

    aget-object v0, p2, v4

    aget-object v0, v0, v3

    const/4 v7, 0x0

    aput-wide v5, v0, v7

    aget-object v0, p2, v4

    aget-object v0, v0, v3

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    aget-object v0, p2, v1

    aget-object v0, v0, v3

    const/4 v7, 0x1

    aget-wide v7, v0, v7

    sub-double/2addr v5, v7

    aget-object v0, p2, v1

    aget-object v0, v0, v3

    const/4 v7, 0x1

    aget-wide v8, v0, v7

    aget-object v10, p2, v4

    aget-object v10, v10, v3

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    aput-wide v8, v0, v7

    aget-object v0, p2, v4

    aget-object v0, v0, v3

    const/4 v7, 0x1

    aput-wide v5, v0, v7

    const/4 v0, 0x1

    :goto_b9
    if-ge v0, v3, :cond_15e

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v5, v0

    aget-object v6, p2, v1

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    aget-object v8, p2, v4

    aget-object v8, v8, v5

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    aget-object v8, p2, v1

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget-wide v10, v8, v9

    aget-object v12, p2, v4

    aget-object v12, v12, v5

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    add-double/2addr v10, v12

    aput-wide v10, v8, v9

    aget-object v8, p2, v4

    aget-object v8, v8, v5

    const/4 v9, 0x0

    aput-wide v6, v8, v9

    aget-object v6, p2, v4

    aget-object v6, v6, v5

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    aget-object v8, p2, v1

    aget-object v8, v8, v0

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    aget-object v8, p2, v1

    aget-object v8, v8, v0

    const/4 v9, 0x1

    aget-wide v10, v8, v9

    aget-object v12, p2, v4

    aget-object v12, v12, v5

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    add-double/2addr v10, v12

    aput-wide v10, v8, v9

    aget-object v8, p2, v4

    aget-object v8, v8, v5

    const/4 v9, 0x1

    aput-wide v6, v8, v9

    aget-object v6, p2, v4

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    aget-object v8, p2, v1

    aget-object v8, v8, v5

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    aget-object v8, p2, v4

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget-wide v10, v8, v9

    aget-object v12, p2, v1

    aget-object v12, v12, v5

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    add-double/2addr v10, v12

    aput-wide v10, v8, v9

    aget-object v8, p2, v1

    aget-object v8, v8, v5

    const/4 v9, 0x0

    aput-wide v6, v8, v9

    aget-object v6, p2, v1

    aget-object v6, v6, v5

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    aget-object v8, p2, v4

    aget-object v8, v8, v0

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    aget-object v8, p2, v4

    aget-object v8, v8, v0

    const/4 v9, 0x1

    aget-wide v10, v8, v9

    aget-object v12, p2, v1

    aget-object v12, v12, v5

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    add-double/2addr v10, v12

    aput-wide v10, v8, v9

    aget-object v8, p2, v1

    aget-object v5, v8, v5

    const/4 v8, 0x1

    aput-wide v6, v5, v8

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b9

    :cond_15e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_c

    :cond_163
    const/4 v0, 0x1

    :goto_164
    if-ge v0, v3, :cond_440

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v1, v0

    const/4 v4, 0x0

    aget-object v4, p2, v4

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const/4 v6, 0x0

    aget-object v6, p2, v6

    aget-object v6, v6, v1

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    sub-double/2addr v4, v6

    const/4 v6, 0x0

    aget-object v6, p2, v6

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget-wide v8, v6, v7

    const/4 v10, 0x0

    aget-object v10, p2, v10

    aget-object v10, v10, v1

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    aput-wide v8, v6, v7

    const/4 v6, 0x0

    aget-object v6, p2, v6

    aget-object v6, v6, v1

    const/4 v7, 0x0

    aput-wide v4, v6, v7

    const/4 v4, 0x0

    aget-object v4, p2, v4

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    const/4 v6, 0x0

    aget-object v6, p2, v6

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    sub-double/2addr v4, v6

    const/4 v6, 0x0

    aget-object v6, p2, v6

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget-wide v8, v6, v7

    const/4 v10, 0x0

    aget-object v10, p2, v10

    aget-object v10, v10, v1

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    aput-wide v8, v6, v7

    const/4 v6, 0x0

    aget-object v6, p2, v6

    aget-object v6, v6, v1

    const/4 v7, 0x1

    aput-wide v4, v6, v7

    aget-object v4, p2, v2

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    aget-object v6, p2, v2

    aget-object v6, v6, v1

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    sub-double/2addr v4, v6

    aget-object v6, p2, v2

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget-wide v8, v6, v7

    aget-object v10, p2, v2

    aget-object v10, v10, v1

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    aput-wide v8, v6, v7

    aget-object v6, p2, v2

    aget-object v6, v6, v1

    const/4 v7, 0x0

    aput-wide v4, v6, v7

    aget-object v4, p2, v2

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    aget-object v6, p2, v2

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    sub-double/2addr v4, v6

    aget-object v6, p2, v2

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget-wide v8, v6, v7

    aget-object v10, p2, v2

    aget-object v10, v10, v1

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    aput-wide v8, v6, v7

    aget-object v6, p2, v2

    aget-object v1, v6, v1

    const/4 v6, 0x1

    aput-wide v4, v1, v6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_164

    :cond_213
    const/4 v0, 0x1

    move v1, v0

    :goto_215
    if-ge v1, v2, :cond_384

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    sub-int v4, v0, v1

    aget-object v0, p2, v4

    const/4 v5, 0x0

    aget-object v0, v0, v5

    const/4 v5, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aget-object v8, p2, v1

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    aget-object v10, p2, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    aput-wide v6, v0, v5

    aget-object v0, p2, v1

    const/4 v5, 0x0

    aget-object v0, v0, v5

    const/4 v5, 0x0

    aget-wide v6, v0, v5

    aget-object v8, p2, v4

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    aput-wide v6, v0, v5

    aget-object v0, p2, v4

    const/4 v5, 0x0

    aget-object v0, v0, v5

    const/4 v5, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aget-object v8, p2, v1

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    aget-object v10, p2, v4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    aput-wide v6, v0, v5

    aget-object v0, p2, v1

    const/4 v5, 0x0

    aget-object v0, v0, v5

    const/4 v5, 0x1

    aget-wide v6, v0, v5

    aget-object v8, p2, v4

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    aput-wide v6, v0, v5

    aget-object v0, p2, v4

    aget-object v0, v0, v3

    const/4 v5, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aget-object v8, p2, v1

    aget-object v8, v8, v3

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    aget-object v10, p2, v4

    aget-object v10, v10, v3

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    aput-wide v6, v0, v5

    aget-object v0, p2, v1

    aget-object v0, v0, v3

    const/4 v5, 0x0

    aget-wide v6, v0, v5

    aget-object v8, p2, v4

    aget-object v8, v8, v3

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    aput-wide v6, v0, v5

    aget-object v0, p2, v4

    aget-object v0, v0, v3

    const/4 v5, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aget-object v8, p2, v1

    aget-object v8, v8, v3

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    aget-object v10, p2, v4

    aget-object v10, v10, v3

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    aput-wide v6, v0, v5

    aget-object v0, p2, v1

    aget-object v0, v0, v3

    const/4 v5, 0x1

    aget-wide v6, v0, v5

    aget-object v8, p2, v4

    aget-object v8, v8, v3

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    aput-wide v6, v0, v5

    const/4 v0, 0x1

    :goto_2ce
    if-ge v0, v3, :cond_37f

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v5, v0

    aget-object v6, p2, v4

    aget-object v6, v6, v5

    const/4 v7, 0x0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    aget-object v10, p2, v1

    aget-object v10, v10, v0

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    aget-object v12, p2, v4

    aget-object v12, v12, v5

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    aget-object v6, p2, v1

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget-wide v8, v6, v7

    aget-object v10, p2, v4

    aget-object v10, v10, v5

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    aput-wide v8, v6, v7

    aget-object v6, p2, v4

    aget-object v6, v6, v5

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    aget-object v10, p2, v1

    aget-object v10, v10, v0

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    aget-object v12, p2, v4

    aget-object v12, v12, v5

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    aget-object v6, p2, v1

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget-wide v8, v6, v7

    aget-object v10, p2, v4

    aget-object v10, v10, v5

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    aput-wide v8, v6, v7

    aget-object v6, p2, v1

    aget-object v6, v6, v5

    const/4 v7, 0x0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    aget-object v10, p2, v4

    aget-object v10, v10, v0

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    aget-object v12, p2, v1

    aget-object v12, v12, v5

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    aget-object v6, p2, v4

    aget-object v6, v6, v0

    const/4 v7, 0x0

    aget-wide v8, v6, v7

    aget-object v10, p2, v1

    aget-object v10, v10, v5

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    aput-wide v8, v6, v7

    aget-object v6, p2, v1

    aget-object v6, v6, v5

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    aget-object v10, p2, v4

    aget-object v10, v10, v0

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    aget-object v12, p2, v1

    aget-object v12, v12, v5

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    aget-object v6, p2, v4

    aget-object v6, v6, v0

    const/4 v7, 0x1

    aget-wide v8, v6, v7

    aget-object v10, p2, v1

    aget-object v5, v10, v5

    const/4 v10, 0x1

    aget-wide v10, v5, v10

    sub-double/2addr v8, v10

    aput-wide v8, v6, v7

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2ce

    :cond_37f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_215

    :cond_384
    const/4 v0, 0x1

    :goto_385
    if-ge v0, v3, :cond_440

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    sub-int/2addr v1, v0

    const/4 v4, 0x0

    aget-object v4, p2, v4

    aget-object v4, v4, v1

    const/4 v5, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v8, 0x0

    aget-object v8, p2, v8

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    const/4 v10, 0x0

    aget-object v10, p2, v10

    aget-object v10, v10, v1

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    aput-wide v6, v4, v5

    const/4 v4, 0x0

    aget-object v4, p2, v4

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    const/4 v8, 0x0

    aget-object v8, p2, v8

    aget-object v8, v8, v1

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    aput-wide v6, v4, v5

    const/4 v4, 0x0

    aget-object v4, p2, v4

    aget-object v4, v4, v1

    const/4 v5, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v8, 0x0

    aget-object v8, p2, v8

    aget-object v8, v8, v0

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    const/4 v10, 0x0

    aget-object v10, p2, v10

    aget-object v10, v10, v1

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    aput-wide v6, v4, v5

    const/4 v4, 0x0

    aget-object v4, p2, v4

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget-wide v6, v4, v5

    const/4 v8, 0x0

    aget-object v8, p2, v8

    aget-object v8, v8, v1

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    aput-wide v6, v4, v5

    aget-object v4, p2, v2

    aget-object v4, v4, v1

    const/4 v5, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aget-object v8, p2, v2

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    aget-object v10, p2, v2

    aget-object v10, v10, v1

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    aput-wide v6, v4, v5

    aget-object v4, p2, v2

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    aget-object v8, p2, v2

    aget-object v8, v8, v1

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    sub-double/2addr v6, v8

    aput-wide v6, v4, v5

    aget-object v4, p2, v2

    aget-object v4, v4, v1

    const/4 v5, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aget-object v8, p2, v2

    aget-object v8, v8, v0

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    aget-object v10, p2, v2

    aget-object v10, v10, v1

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    aput-wide v6, v4, v5

    aget-object v4, p2, v2

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget-wide v6, v4, v5

    aget-object v8, p2, v2

    aget-object v1, v8, v1

    const/4 v8, 0x1

    aget-wide v8, v1, v8

    sub-double/2addr v6, v8

    aput-wide v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_385

    :cond_440
    return-void
.end method

.method private xdft3da_sub1(II[DZ)V
    .registers 19

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_20c

    const/4 v2, 0x0

    :goto_6
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_427

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v5, v2, v3

    if-nez p1, :cond_23

    const/4 v3, 0x0

    :goto_11
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_36

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_23
    const/4 v3, 0x0

    :goto_24
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_36

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_36
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_139

    const/4 v3, 0x0

    :goto_3c
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v4, :cond_208

    const/4 v4, 0x0

    :goto_41
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v4, v6, :cond_a6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v9

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v12, p3, v6

    aput-wide v12, v11, v7

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v12, v6, 0x1

    aget-wide v12, p3, v12

    aput-wide v12, v11, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v11, v6, 0x2

    aget-wide v11, p3, v11

    aput-wide v11, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v6, 0x3

    aget-wide v11, p3, v11

    aput-wide v11, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v6, 0x4

    aget-wide v11, p3, v8

    aput-wide v11, v7, v9

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v9, 0x1

    add-int/lit8 v9, v6, 0x5

    aget-wide v11, p3, v9

    aput-wide v11, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v6, 0x6

    aget-wide v8, p3, v8

    aput-wide v8, v7, v10

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v10, 0x1

    add-int/lit8 v6, v6, 0x7

    aget-wide v9, p3, v6

    aput-wide v9, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_a6
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v4, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x4

    invoke-virtual {v4, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x6

    invoke-virtual {v4, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v4, 0x0

    :goto_d0
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v4, v6, :cond_135

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v9

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v11, v11, v7

    aput-wide v11, p3, v6

    add-int/lit8 v11, v6, 0x1

    iget-object v12, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    aget-wide v12, v12, v7

    aput-wide v12, p3, v11

    add-int/lit8 v7, v6, 0x2

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v11, v11, v8

    aput-wide v11, p3, v7

    add-int/lit8 v7, v6, 0x3

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v8, 0x1

    aget-wide v11, v11, v8

    aput-wide v11, p3, v7

    add-int/lit8 v7, v6, 0x4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v11, v8, v9

    aput-wide v11, p3, v7

    add-int/lit8 v7, v6, 0x5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v9, v9, 0x1

    aget-wide v8, v8, v9

    aput-wide v8, p3, v7

    add-int/lit8 v7, v6, 0x6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v10

    aput-wide v8, p3, v7

    add-int/lit8 v6, v6, 0x7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v10, 0x1

    aget-wide v7, v7, v8

    aput-wide v7, p3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_d0

    :cond_135
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_3c

    :cond_139
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1bf

    const/4 v3, 0x0

    :goto_13f
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_175

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v9, p3, v4

    aput-wide v9, v8, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v4, 0x1

    aget-wide v9, p3, v9

    aput-wide v9, v8, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v4, 0x2

    aget-wide v8, p3, v8

    aput-wide v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x3

    aget-wide v8, p3, v4

    aput-wide v8, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_13f

    :cond_175
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v4, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v3, 0x0

    :goto_189
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_208

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v6

    aput-wide v8, p3, v4

    add-int/lit8 v8, v4, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v9, v9, v6

    aput-wide v9, p3, v8

    add-int/lit8 v6, v4, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v7

    aput-wide v8, p3, v6

    add-int/lit8 v4, v4, 0x3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, p3, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_189

    :cond_1bf
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_208

    const/4 v3, 0x0

    :goto_1c5
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_1e2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, p3, v4

    aput-wide v8, v7, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, p3, v4

    aput-wide v8, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c5

    :cond_1e2
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v3, 0x0

    :goto_1eb
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_208

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v7, v7, v6

    aput-wide v7, p3, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v7, v6

    aput-wide v6, p3, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1eb

    :cond_208
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_20c
    const/4 v2, 0x0

    :goto_20d
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_427

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v5, v2, v3

    if-nez p1, :cond_22c

    const/4 v3, 0x0

    :goto_218
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_22c

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_218

    :cond_22c
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_337

    const/4 v3, 0x0

    :goto_232
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v4, :cond_40c

    const/4 v4, 0x0

    :goto_237
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v4, v6, :cond_29c

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v9

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v12, p3, v6

    aput-wide v12, v11, v7

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v12, v6, 0x1

    aget-wide v12, p3, v12

    aput-wide v12, v11, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v11, v6, 0x2

    aget-wide v11, p3, v11

    aput-wide v11, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v6, 0x3

    aget-wide v11, p3, v11

    aput-wide v11, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v6, 0x4

    aget-wide v11, p3, v8

    aput-wide v11, v7, v9

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v9, 0x1

    add-int/lit8 v9, v6, 0x5

    aget-wide v11, p3, v9

    aput-wide v11, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v6, 0x6

    aget-wide v8, p3, v8

    aput-wide v8, v7, v10

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v10, 0x1

    add-int/lit8 v6, v6, 0x7

    aget-wide v9, p3, v6

    aput-wide v9, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_237

    :cond_29c
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v7, 0x0

    move/from16 v0, p4

    invoke-virtual {v4, v6, v7, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    move/from16 v0, p4

    invoke-virtual {v4, v6, v7, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x4

    move/from16 v0, p4

    invoke-virtual {v4, v6, v7, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x6

    move/from16 v0, p4

    invoke-virtual {v4, v6, v7, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v4, 0x0

    :goto_2ce
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v4, v6, :cond_333

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v9

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v11, v11, v7

    aput-wide v11, p3, v6

    add-int/lit8 v11, v6, 0x1

    iget-object v12, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    aget-wide v12, v12, v7

    aput-wide v12, p3, v11

    add-int/lit8 v7, v6, 0x2

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v11, v11, v8

    aput-wide v11, p3, v7

    add-int/lit8 v7, v6, 0x3

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v8, 0x1

    aget-wide v11, v11, v8

    aput-wide v11, p3, v7

    add-int/lit8 v7, v6, 0x4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v11, v8, v9

    aput-wide v11, p3, v7

    add-int/lit8 v7, v6, 0x5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v9, v9, 0x1

    aget-wide v8, v8, v9

    aput-wide v8, p3, v7

    add-int/lit8 v7, v6, 0x6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v10

    aput-wide v8, p3, v7

    add-int/lit8 v6, v6, 0x7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v10, 0x1

    aget-wide v7, v7, v8

    aput-wide v7, p3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2ce

    :cond_333
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_232

    :cond_337
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3c1

    const/4 v3, 0x0

    :goto_33d
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_373

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v9, p3, v4

    aput-wide v9, v8, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v4, 0x1

    aget-wide v9, p3, v9

    aput-wide v9, v8, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v4, 0x2

    aget-wide v8, p3, v8

    aput-wide v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x3

    aget-wide v8, p3, v4

    aput-wide v8, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_33d

    :cond_373
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v6, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v4, v6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    move/from16 v0, p4

    invoke-virtual {v3, v4, v6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v3, 0x0

    :goto_38b
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_40c

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v6

    aput-wide v8, p3, v4

    add-int/lit8 v8, v4, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v9, v9, v6

    aput-wide v9, p3, v8

    add-int/lit8 v6, v4, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v7

    aput-wide v8, p3, v6

    add-int/lit8 v4, v4, 0x3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, p3, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_38b

    :cond_3c1
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_40c

    const/4 v3, 0x0

    :goto_3c7
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_3e4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, p3, v4

    aput-wide v8, v7, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, p3, v4

    aput-wide v8, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c7

    :cond_3e4
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v6, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v4, v6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v3, 0x0

    :goto_3ef
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_40c

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v7, v7, v6

    aput-wide v7, p3, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v7, v6

    aput-wide v6, p3, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3ef

    :cond_40c
    if-eqz p1, :cond_423

    const/4 v3, 0x0

    :goto_40f
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_423

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse([DIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_40f

    :cond_423
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_20d

    :cond_427
    return-void
.end method

.method private xdft3da_sub1(II[[[DZ)V
    .registers 16

    const/4 v0, -0x1

    if-ne p2, v0, :cond_255

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_4a8

    if-nez p1, :cond_1b

    const/4 v1, 0x0

    :goto_b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_2d

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_2d

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_166

    const/4 v1, 0x0

    :goto_33
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v2, :cond_251

    const/4 v2, 0x0

    :goto_38
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_b8

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    aget-wide v8, v8, v1

    aput-wide v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    add-int/lit8 v9, v1, 0x1

    aget-wide v8, v8, v9

    aput-wide v8, v7, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x2

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x3

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v7, v1, 0x4

    aget-wide v7, v4, v7

    aput-wide v7, v3, v5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v5, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v7, v1, 0x5

    aget-wide v7, v5, v7

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v5, v1, 0x6

    aget-wide v4, v4, v5

    aput-wide v4, v3, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v6, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v6, v1, 0x7

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_b8
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v2, 0x0

    :goto_e2
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_162

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v3

    aput-wide v8, v7, v1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-wide v9, v9, v3

    aput-wide v9, v7, v8

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v7, v5, v6

    aput-wide v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_e2

    :cond_162
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_33

    :cond_166
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_200

    const/4 v1, 0x0

    :goto_16c
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_1ac

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    aput-wide v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_16c

    :cond_1ac
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v1, 0x0

    :goto_1c0
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_251

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v5, v5, v3

    aput-wide v5, v2, v4

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-wide v5, v5, v3

    aput-wide v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c0

    :cond_200
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_251

    const/4 v1, 0x0

    :goto_206
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_227

    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_206

    :cond_227
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v1, 0x0

    :goto_230
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_251

    mul-int/lit8 v2, v1, 0x2

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_230

    :cond_251
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_255
    const/4 v0, 0x0

    :goto_256
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_4a8

    if-nez p1, :cond_26d

    const/4 v1, 0x0

    :goto_25d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_26d

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25d

    :cond_26d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_3a6

    const/4 v1, 0x0

    :goto_273
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v2, :cond_491

    const/4 v2, 0x0

    :goto_278
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_2f8

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    aget-wide v8, v8, v1

    aput-wide v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    add-int/lit8 v9, v1, 0x1

    aget-wide v8, v8, v9

    aput-wide v8, v7, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x2

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x3

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v7, v1, 0x4

    aget-wide v7, v4, v7

    aput-wide v7, v3, v5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v5, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v7, v1, 0x5

    aget-wide v7, v5, v7

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v5, v1, 0x6

    aget-wide v4, v4, v5

    aput-wide v4, v3, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v6, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v6, v1, 0x7

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_278

    :cond_2f8
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v2, 0x0

    :goto_322
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_3a2

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v3

    aput-wide v8, v7, v1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-wide v9, v9, v3

    aput-wide v9, v7, v8

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v7, v5, v6

    aput-wide v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_322

    :cond_3a2
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_273

    :cond_3a6
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_440

    const/4 v1, 0x0

    :goto_3ac
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_3ec

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    aput-wide v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ac

    :cond_3ec
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v1, 0x0

    :goto_400
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_491

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v5, v5, v3

    aput-wide v5, v2, v4

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-wide v5, v5, v3

    aput-wide v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_400

    :cond_440
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_491

    const/4 v1, 0x0

    :goto_446
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_467

    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_446

    :cond_467
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v1, 0x0

    :goto_470
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_491

    mul-int/lit8 v2, v1, 0x2

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_470

    :cond_491
    if-eqz p1, :cond_4a4

    const/4 v1, 0x0

    :goto_494
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_4a4

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_494

    :cond_4a4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_256

    :cond_4a8
    return-void
.end method

.method private xdft3da_sub2(II[DZ)V
    .registers 19

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_20c

    const/4 v2, 0x0

    :goto_6
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_425

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v5, v2, v3

    if-nez p1, :cond_23

    const/4 v3, 0x0

    :goto_11
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_36

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_23
    const/4 v3, 0x0

    :goto_24
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_36

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_36
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_139

    const/4 v3, 0x0

    :goto_3c
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v4, :cond_208

    const/4 v4, 0x0

    :goto_41
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v4, v6, :cond_a6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v9

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v12, p3, v6

    aput-wide v12, v11, v7

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v12, v6, 0x1

    aget-wide v12, p3, v12

    aput-wide v12, v11, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v11, v6, 0x2

    aget-wide v11, p3, v11

    aput-wide v11, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v6, 0x3

    aget-wide v11, p3, v11

    aput-wide v11, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v6, 0x4

    aget-wide v11, p3, v8

    aput-wide v11, v7, v9

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v9, 0x1

    add-int/lit8 v9, v6, 0x5

    aget-wide v11, p3, v9

    aput-wide v11, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v6, 0x6

    aget-wide v8, p3, v8

    aput-wide v8, v7, v10

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v10, 0x1

    add-int/lit8 v6, v6, 0x7

    aget-wide v9, p3, v6

    aput-wide v9, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_a6
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v4, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x4

    invoke-virtual {v4, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x6

    invoke-virtual {v4, v6, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v4, 0x0

    :goto_d0
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v4, v6, :cond_135

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v9

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v11, v11, v7

    aput-wide v11, p3, v6

    add-int/lit8 v11, v6, 0x1

    iget-object v12, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    aget-wide v12, v12, v7

    aput-wide v12, p3, v11

    add-int/lit8 v7, v6, 0x2

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v11, v11, v8

    aput-wide v11, p3, v7

    add-int/lit8 v7, v6, 0x3

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v8, 0x1

    aget-wide v11, v11, v8

    aput-wide v11, p3, v7

    add-int/lit8 v7, v6, 0x4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v11, v8, v9

    aput-wide v11, p3, v7

    add-int/lit8 v7, v6, 0x5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v9, v9, 0x1

    aget-wide v8, v8, v9

    aput-wide v8, p3, v7

    add-int/lit8 v7, v6, 0x6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v10

    aput-wide v8, p3, v7

    add-int/lit8 v6, v6, 0x7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v10, 0x1

    aget-wide v7, v7, v8

    aput-wide v7, p3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_d0

    :cond_135
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_3c

    :cond_139
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1bf

    const/4 v3, 0x0

    :goto_13f
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_175

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v9, p3, v4

    aput-wide v9, v8, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v4, 0x1

    aget-wide v9, p3, v9

    aput-wide v9, v8, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v4, 0x2

    aget-wide v8, p3, v8

    aput-wide v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x3

    aget-wide v8, p3, v4

    aput-wide v8, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_13f

    :cond_175
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v4, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v3, 0x0

    :goto_189
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_208

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v6

    aput-wide v8, p3, v4

    add-int/lit8 v8, v4, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v9, v9, v6

    aput-wide v9, p3, v8

    add-int/lit8 v6, v4, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v7

    aput-wide v8, p3, v6

    add-int/lit8 v4, v4, 0x3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, p3, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_189

    :cond_1bf
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_208

    const/4 v3, 0x0

    :goto_1c5
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_1e2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, p3, v4

    aput-wide v8, v7, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, p3, v4

    aput-wide v8, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c5

    :cond_1e2
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v3, 0x0

    :goto_1eb
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_208

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v7, v7, v6

    aput-wide v7, p3, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v7, v6

    aput-wide v6, p3, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1eb

    :cond_208
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_20c
    const/4 v2, 0x0

    :goto_20d
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v3, :cond_425

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v5, v2, v3

    if-nez p1, :cond_22c

    const/4 v3, 0x0

    :goto_218
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_241

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_218

    :cond_22c
    const/4 v3, 0x0

    :goto_22d
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_241

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_22d

    :cond_241
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_34c

    const/4 v3, 0x0

    :goto_247
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v3, v4, :cond_421

    const/4 v4, 0x0

    :goto_24c
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v4, v6, :cond_2b1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v9

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v12, p3, v6

    aput-wide v12, v11, v7

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v12, v6, 0x1

    aget-wide v12, p3, v12

    aput-wide v12, v11, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v11, v6, 0x2

    aget-wide v11, p3, v11

    aput-wide v11, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v6, 0x3

    aget-wide v11, p3, v11

    aput-wide v11, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v6, 0x4

    aget-wide v11, p3, v8

    aput-wide v11, v7, v9

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v9, 0x1

    add-int/lit8 v9, v6, 0x5

    aget-wide v11, p3, v9

    aput-wide v11, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v6, 0x6

    aget-wide v8, p3, v8

    aput-wide v8, v7, v10

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v10, 0x1

    add-int/lit8 v6, v6, 0x7

    aget-wide v9, p3, v6

    aput-wide v9, v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_24c

    :cond_2b1
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v7, 0x0

    move/from16 v0, p4

    invoke-virtual {v4, v6, v7, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    move/from16 v0, p4

    invoke-virtual {v4, v6, v7, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x4

    move/from16 v0, p4

    invoke-virtual {v4, v6, v7, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x6

    move/from16 v0, p4

    invoke-virtual {v4, v6, v7, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v4, 0x0

    :goto_2e3
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v4, v6, :cond_348

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x2

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v8, v8, 0x2

    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v9

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v11, v11, v7

    aput-wide v11, p3, v6

    add-int/lit8 v11, v6, 0x1

    iget-object v12, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    aget-wide v12, v12, v7

    aput-wide v12, p3, v11

    add-int/lit8 v7, v6, 0x2

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v11, v11, v8

    aput-wide v11, p3, v7

    add-int/lit8 v7, v6, 0x3

    iget-object v11, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v8, 0x1

    aget-wide v11, v11, v8

    aput-wide v11, p3, v7

    add-int/lit8 v7, v6, 0x4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v11, v8, v9

    aput-wide v11, p3, v7

    add-int/lit8 v7, v6, 0x5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v9, v9, 0x1

    aget-wide v8, v8, v9

    aput-wide v8, p3, v7

    add-int/lit8 v7, v6, 0x6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v10

    aput-wide v8, p3, v7

    add-int/lit8 v6, v6, 0x7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v10, 0x1

    aget-wide v7, v7, v8

    aput-wide v7, p3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e3

    :cond_348
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_247

    :cond_34c
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3d6

    const/4 v3, 0x0

    :goto_352
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_388

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v9, p3, v4

    aput-wide v9, v8, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v4, 0x1

    aget-wide v9, p3, v9

    aput-wide v9, v8, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v8, v4, 0x2

    aget-wide v8, p3, v8

    aput-wide v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x3

    aget-wide v8, p3, v4

    aput-wide v8, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_352

    :cond_388
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v6, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v4, v6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    move/from16 v0, p4

    invoke-virtual {v3, v4, v6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v3, 0x0

    :goto_3a0
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_421

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v6

    aput-wide v8, p3, v4

    add-int/lit8 v8, v4, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v9, v9, v6

    aput-wide v9, p3, v8

    add-int/lit8 v6, v4, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v7

    aput-wide v8, p3, v6

    add-int/lit8 v4, v4, 0x3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v7, v7, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, p3, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a0

    :cond_3d6
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_421

    const/4 v3, 0x0

    :goto_3dc
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_3f9

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, p3, v4

    aput-wide v8, v7, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, p3, v4

    aput-wide v8, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3dc

    :cond_3f9
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v6, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v4, v6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v3, 0x0

    :goto_404
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v4, :cond_421

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v3

    add-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v7, v7, v6

    aput-wide v7, p3, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v7, v6

    aput-wide v6, p3, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_404

    :cond_421
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_20d

    :cond_425
    return-void
.end method

.method private xdft3da_sub2(II[[[DZ)V
    .registers 16

    const/4 v0, -0x1

    if-ne p2, v0, :cond_254

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_4a6

    if-nez p1, :cond_1b

    const/4 v1, 0x0

    :goto_b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_2c

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_165

    const/4 v1, 0x0

    :goto_32
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v2, :cond_250

    const/4 v2, 0x0

    :goto_37
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_b7

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    aget-wide v8, v8, v1

    aput-wide v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    add-int/lit8 v9, v1, 0x1

    aget-wide v8, v8, v9

    aput-wide v8, v7, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x2

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x3

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v7, v1, 0x4

    aget-wide v7, v4, v7

    aput-wide v7, v3, v5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v5, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v7, v1, 0x5

    aget-wide v7, v5, v7

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v5, v1, 0x6

    aget-wide v4, v4, v5

    aput-wide v4, v3, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v6, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v6, v1, 0x7

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_b7
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v2, 0x0

    :goto_e1
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_161

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v3

    aput-wide v8, v7, v1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-wide v9, v9, v3

    aput-wide v9, v7, v8

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v7, v5, v6

    aput-wide v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_e1

    :cond_161
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_32

    :cond_165
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1ff

    const/4 v1, 0x0

    :goto_16b
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_1ab

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    aput-wide v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_16b

    :cond_1ab
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v1, 0x0

    :goto_1bf
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_250

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v5, v5, v3

    aput-wide v5, v2, v4

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-wide v5, v5, v3

    aput-wide v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1bf

    :cond_1ff
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_250

    const/4 v1, 0x0

    :goto_205
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_226

    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_205

    :cond_226
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    const/4 v1, 0x0

    :goto_22f
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_250

    mul-int/lit8 v2, v1, 0x2

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_22f

    :cond_250
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_254
    const/4 v0, 0x0

    :goto_255
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_4a6

    if-nez p1, :cond_26c

    const/4 v1, 0x0

    :goto_25c
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_27e

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25c

    :cond_26c
    const/4 v1, 0x0

    :goto_26d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_27e

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_26d

    :cond_27e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_3b7

    const/4 v1, 0x0

    :goto_284
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v2, :cond_4a2

    const/4 v2, 0x0

    :goto_289
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_309

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    aget-wide v8, v8, v1

    aput-wide v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-object v8, p3, v0

    aget-object v8, v8, v2

    add-int/lit8 v9, v1, 0x1

    aget-wide v8, v8, v9

    aput-wide v8, v7, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x2

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x3

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v7, v1, 0x4

    aget-wide v7, v4, v7

    aput-wide v7, v3, v5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v5, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v7, v1, 0x5

    aget-wide v7, v5, v7

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v2

    add-int/lit8 v5, v1, 0x6

    aget-wide v4, v4, v5

    aput-wide v4, v3, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v6, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v2

    add-int/lit8 v6, v1, 0x7

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_289

    :cond_309
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v3, v4, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v2, 0x0

    :goto_333
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_3b3

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v3

    aput-wide v8, v7, v1

    aget-object v7, p3, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-wide v9, v9, v3

    aput-wide v9, v7, v8

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v7, v1, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v5, v5, 0x1

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v7, v5, v6

    aput-wide v7, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v2

    add-int/lit8 v4, v1, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_333

    :cond_3b3
    add-int/lit8 v1, v1, 0x8

    goto/16 :goto_284

    :cond_3b7
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_451

    const/4 v1, 0x0

    :goto_3bd
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_3fd

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    aput-wide v5, v4, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-object v5, p3, v0

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    aput-wide v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3bd

    :cond_3fd
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v1, 0x0

    :goto_411
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_4a2

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-wide v6, v6, v2

    aput-wide v6, v4, v5

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v5, v5, v3

    aput-wide v5, v2, v4

    aget-object v2, p3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v3, v3, 0x1

    aget-wide v5, v5, v3

    aput-wide v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_411

    :cond_451
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4a2

    const/4 v1, 0x0

    :goto_457
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_478

    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-object v4, p3, v0

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_457

    :cond_478
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    const/4 v1, 0x0

    :goto_481
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_4a2

    mul-int/lit8 v2, v1, 0x2

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    add-int/lit8 v2, v2, 0x1

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_481

    :cond_4a2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_255

    :cond_4a6
    return-void
.end method

.method private xdft3da_subth1(II[DZ)V
    .registers 16

    const/4 v2, 0x4

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v2, :cond_30

    shr-int/lit8 v0, v0, 0x1

    move v9, v0

    :goto_16
    new-array v10, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_38

    mul-int v7, v9, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$33;

    move-object v1, p0

    move v2, p2

    move v5, p1

    move-object v6, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$33;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[DIZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_30
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

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

.method private xdft3da_subth1(II[[[DZ)V
    .registers 16

    const/4 v2, 0x4

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v2, :cond_30

    shr-int/lit8 v0, v0, 0x1

    move v9, v0

    :goto_16
    new-array v10, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_38

    mul-int v7, v9, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$35;

    move-object v1, p0

    move v2, p2

    move v5, p1

    move-object v6, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$35;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[[[DIZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_30
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

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

.method private xdft3da_subth2(II[DZ)V
    .registers 16

    const/4 v2, 0x4

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v2, :cond_30

    shr-int/lit8 v0, v0, 0x1

    move v9, v0

    :goto_16
    new-array v10, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_38

    mul-int v7, v9, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;

    move-object v1, p0

    move v2, p2

    move v5, p1

    move-object v6, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$34;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[DIZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_30
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

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

.method private xdft3da_subth2(II[[[DZ)V
    .registers 16

    const/4 v2, 0x4

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v2, :cond_30

    shr-int/lit8 v0, v0, 0x1

    move v9, v0

    :goto_16
    new-array v10, v4, [Ljava/util/concurrent/Future;

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_38

    mul-int v7, v9, v3

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;

    move-object v1, p0

    move v2, p2

    move v5, p1

    move-object v6, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$36;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;IIII[[[DIZ)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_30
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

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
.method public complexForward([D)V
    .registers 13

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_7c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr v2, v4

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    if-eq v3, v2, :cond_50

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v4, :cond_31

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_31
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/lit8 v2, v2, 0x8

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    if-le v3, v5, :cond_3e

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/2addr v2, v3

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_3e
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v2, v7, :cond_6a

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_48
    :goto_48
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    new-array v2, v2, [D

    iput-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iput v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    :cond_50
    if-le v3, v5, :cond_75

    iget-boolean v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v2, :cond_75

    invoke-direct {p0, v1, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[DZ)V

    invoke-direct {p0, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[DZ)V

    :goto_5c
    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    :goto_69
    return-void

    :cond_6a
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v7, :cond_48

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    goto :goto_48

    :cond_75
    invoke-direct {p0, v1, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[DZ)V

    invoke-direct {p0, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[DZ)V

    goto :goto_5c

    :cond_7c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr v0, v2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    if-le v3, v5, :cond_112

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_112

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-lt v0, v3, :cond_112

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-lt v0, v3, :cond_112

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-lt v0, v3, :cond_112

    new-array v4, v3, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int v5, v0, v3

    move v2, v1

    :goto_a4
    if-ge v2, v3, :cond_c0

    mul-int v6, v2, v5

    add-int/lit8 v0, v3, -0x1

    if-ne v2, v0, :cond_bd

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_ae
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$1;

    invoke-direct {v7, p0, v6, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$1;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[D)V

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

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_ce
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$2;

    invoke-direct {v7, p0, v6, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$2;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[D)V

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

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int v2, v0, v3

    :goto_e7
    if-ge v1, v3, :cond_102

    mul-int v5, v1, v2

    add-int/lit8 v0, v3, -0x1

    if-ne v1, v0, :cond_ff

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    :goto_f1
    new-instance v6, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$3;

    invoke-direct {v6, p0, v5, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$3;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[D)V

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
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    goto/16 :goto_69

    :cond_112
    move v0, v1

    :goto_113
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v2, :cond_12f

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v3, v0, v2

    move v2, v1

    :goto_11c
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v4, :cond_12c

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v3

    invoke-virtual {v4, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11c

    :cond_12c
    add-int/lit8 v0, v0, 0x1

    goto :goto_113

    :cond_12f
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [D

    move v0, v1

    :goto_136
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v2, :cond_188

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v5, v0, v2

    move v2, v1

    :goto_13f
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v3, :cond_185

    mul-int/lit8 v6, v2, 0x2

    move v3, v1

    :goto_146
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v7, :cond_161

    add-int v7, v5, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    mul-int/lit8 v8, v3, 0x2

    aget-wide v9, p1, v7

    aput-wide v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-wide v9, p1, v7

    aput-wide v9, v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_146

    :cond_161
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v3, v1

    :goto_167
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v7, :cond_182

    add-int v7, v5, v6

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    mul-int/lit8 v8, v3, 0x2

    aget-wide v9, v4, v8

    aput-wide v9, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-wide v8, v4, v8

    aput-wide v8, p1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_167

    :cond_182
    add-int/lit8 v2, v2, 0x1

    goto :goto_13f

    :cond_185
    add-int/lit8 v0, v0, 0x1

    goto :goto_136

    :cond_188
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [D

    move v0, v1

    :goto_18f
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v2, :cond_105

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v5, v0, v2

    move v2, v1

    :goto_198
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v3, :cond_1dc

    mul-int/lit8 v6, v2, 0x2

    move v3, v1

    :goto_19f
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v7, :cond_1b9

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    mul-int/lit8 v8, v3, 0x2

    aget-wide v9, p1, v7

    aput-wide v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-wide v9, p1, v7

    aput-wide v9, v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_19f

    :cond_1b9
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v3, v1

    :goto_1bf
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v7, :cond_1d9

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    mul-int/lit8 v8, v3, 0x2

    aget-wide v9, v4, v8

    aput-wide v9, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-wide v8, v4, v8

    aput-wide v8, p1, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1bf

    :cond_1d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_198

    :cond_1dc
    add-int/lit8 v0, v0, 0x1

    goto :goto_18f
.end method

.method public complexForward([[[D)V
    .registers 13

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v3

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_7c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr v2, v4

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    if-eq v3, v2, :cond_50

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v4, :cond_31

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_31
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/lit8 v2, v2, 0x8

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    if-le v3, v5, :cond_3e

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/2addr v2, v3

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_3e
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v2, v7, :cond_6a

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v2, v2, 0x1

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_48
    :goto_48
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    new-array v2, v2, [D

    iput-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iput v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    :cond_50
    if-le v3, v5, :cond_75

    iget-boolean v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v2, :cond_75

    invoke-direct {p0, v1, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[[[DZ)V

    invoke-direct {p0, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[[[DZ)V

    :goto_5c
    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    :cond_69
    :goto_69
    return-void

    :cond_6a
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v7, :cond_48

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    goto :goto_48

    :cond_75
    invoke-direct {p0, v1, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[[[DZ)V

    invoke-direct {p0, v6, p1, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[[[DZ)V

    goto :goto_5c

    :cond_7c
    if-le v3, v5, :cond_f8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_f8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-lt v0, v3, :cond_f8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-lt v0, v3, :cond_f8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-lt v0, v3, :cond_f8

    new-array v4, v3, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int v5, v0, v3

    move v2, v1

    :goto_95
    if-ge v2, v3, :cond_b1

    mul-int v6, v2, v5

    add-int/lit8 v0, v3, -0x1

    if-ne v2, v0, :cond_ae

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_9f
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$4;

    invoke-direct {v7, p0, v6, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$4;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[[[D)V

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

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_bf
    new-instance v7, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$5;

    invoke-direct {v7, p0, v6, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$5;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[[[D)V

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

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int v2, v0, v3

    :goto_d8
    if-ge v1, v3, :cond_f3

    mul-int v5, v1, v2

    add-int/lit8 v0, v3, -0x1

    if-ne v1, v0, :cond_f0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    :goto_e2
    new-instance v6, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$6;

    invoke-direct {v6, p0, v5, v0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$6;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[[[D)V

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
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v2, :cond_111

    move v2, v1

    :goto_fe
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v3, :cond_10e

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    aget-object v4, p1, v0

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_fe

    :cond_10e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f9

    :cond_111
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [D

    move v0, v1

    :goto_118
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v2, :cond_16a

    move v2, v1

    :goto_11d
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v3, :cond_167

    mul-int/lit8 v5, v2, 0x2

    move v3, v1

    :goto_124
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v6, :cond_141

    mul-int/lit8 v6, v3, 0x2

    aget-object v7, p1, v0

    aget-object v7, v7, v3

    aget-wide v7, v7, v5

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    aget-object v7, p1, v0

    aget-object v7, v7, v3

    add-int/lit8 v8, v5, 0x1

    aget-wide v7, v7, v8

    aput-wide v7, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_124

    :cond_141
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v3, v1

    :goto_147
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v3, v6, :cond_164

    mul-int/lit8 v6, v3, 0x2

    aget-object v7, p1, v0

    aget-object v7, v7, v3

    aget-wide v8, v4, v6

    aput-wide v8, v7, v5

    aget-object v7, p1, v0

    aget-object v7, v7, v3

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-wide v9, v4, v6

    aput-wide v9, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_147

    :cond_164
    add-int/lit8 v2, v2, 0x1

    goto :goto_11d

    :cond_167
    add-int/lit8 v0, v0, 0x1

    goto :goto_118

    :cond_16a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [D

    move v0, v1

    :goto_171
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v2, :cond_69

    move v2, v1

    :goto_176
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v2, v3, :cond_1c0

    mul-int/lit8 v5, v2, 0x2

    move v3, v1

    :goto_17d
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v6, :cond_19a

    mul-int/lit8 v6, v3, 0x2

    aget-object v7, p1, v3

    aget-object v7, v7, v0

    aget-wide v7, v7, v5

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    aget-object v7, p1, v3

    aget-object v7, v7, v0

    add-int/lit8 v8, v5, 0x1

    aget-wide v7, v7, v8

    aput-wide v7, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_17d

    :cond_19a
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v3, v1

    :goto_1a0
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v3, v6, :cond_1bd

    mul-int/lit8 v6, v3, 0x2

    aget-object v7, p1, v3

    aget-object v7, v7, v0

    aget-wide v8, v4, v6

    aput-wide v8, v7, v5

    aget-object v7, p1, v3

    aget-object v7, v7, v0

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-wide v9, v4, v6

    aput-wide v9, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a0

    :cond_1bd
    add-int/lit8 v2, v2, 0x1

    goto :goto_176

    :cond_1c0
    add-int/lit8 v0, v0, 0x1

    goto :goto_171
.end method

.method public complexInverse([DZ)V
    .registers 14

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_7b

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    if-eq v8, v1, :cond_4f

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_30

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_30
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    if-le v8, v3, :cond_3d

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/2addr v1, v8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_3d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v4, :cond_69

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_47
    :goto_47
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iput v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    :cond_4f
    if-le v8, v3, :cond_74

    iget-boolean v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v1, :cond_74

    invoke-direct {p0, v6, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[DZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[DZ)V

    :goto_5b
    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    :goto_68
    return-void

    :cond_69
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v4, :cond_47

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    goto :goto_47

    :cond_74
    invoke-direct {p0, v6, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[DZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[DZ)V

    goto :goto_5b

    :cond_7b
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    if-le v8, v3, :cond_11a

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_11a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-lt v0, v8, :cond_11a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-lt v0, v8, :cond_11a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-lt v0, v8, :cond_11a

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int v10, v0, v8

    move v7, v6

    :goto_a3
    if-ge v7, v8, :cond_c2

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_bf

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_ad
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$7;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$7;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[DZ)V

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

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_d0
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$8;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$8;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[DZ)V

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

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int v7, v0, v8

    :goto_ec
    if-ge v6, v8, :cond_10a

    mul-int v2, v6, v7

    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_107

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    :goto_f6
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$9;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$9;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[DZ)V

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
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    goto/16 :goto_68

    :cond_11a
    move v0, v6

    :goto_11b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_137

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v2, v0, v1

    move v1, v6

    :goto_124
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v3, :cond_134

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-virtual {v3, p1, v4, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_124

    :cond_134
    add-int/lit8 v0, v0, 0x1

    goto :goto_11b

    :cond_137
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [D

    move v0, v6

    :goto_13e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_190

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int v4, v0, v1

    move v1, v6

    :goto_147
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v2, :cond_18d

    mul-int/lit8 v5, v1, 0x2

    move v2, v6

    :goto_14e
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v7, :cond_169

    add-int v7, v4, v5

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v8, v2

    add-int/2addr v7, v8

    mul-int/lit8 v8, v2, 0x2

    aget-wide v9, p1, v7

    aput-wide v9, v3, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-wide v9, p1, v7

    aput-wide v9, v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_14e

    :cond_169
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v2, v6

    :goto_16f
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v7, :cond_18a

    add-int v7, v4, v5

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int/2addr v8, v2

    add-int/2addr v7, v8

    mul-int/lit8 v8, v2, 0x2

    aget-wide v9, v3, v8

    aput-wide v9, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-wide v8, v3, v8

    aput-wide v8, p1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_16f

    :cond_18a
    add-int/lit8 v1, v1, 0x1

    goto :goto_147

    :cond_18d
    add-int/lit8 v0, v0, 0x1

    goto :goto_13e

    :cond_190
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [D

    move v0, v6

    :goto_197
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v1, :cond_10d

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    mul-int v4, v0, v1

    move v1, v6

    :goto_1a0
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v2, :cond_1e4

    mul-int/lit8 v5, v1, 0x2

    move v2, v6

    :goto_1a7
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v7, :cond_1c1

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v7, v2

    add-int/2addr v7, v4

    add-int/2addr v7, v5

    mul-int/lit8 v8, v2, 0x2

    aget-wide v9, p1, v7

    aput-wide v9, v3, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-wide v9, p1, v7

    aput-wide v9, v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a7

    :cond_1c1
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v2, v6

    :goto_1c7
    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v7, :cond_1e1

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    mul-int/2addr v7, v2

    add-int/2addr v7, v4

    add-int/2addr v7, v5

    mul-int/lit8 v8, v2, 0x2

    aget-wide v9, v3, v8

    aput-wide v9, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-wide v8, v3, v8

    aput-wide v8, p1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c7

    :cond_1e1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a0

    :cond_1e4
    add-int/lit8 v0, v0, 0x1

    goto :goto_197
.end method

.method public complexInverse([[[DZ)V
    .registers 14

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_7b

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr v1, v2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    if-eq v8, v1, :cond_4f

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_30

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_30
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    if-le v8, v3, :cond_3d

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/2addr v1, v8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_3d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v4, :cond_69

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_47
    :goto_47
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iput v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    :cond_4f
    if-le v8, v3, :cond_74

    iget-boolean v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v1, :cond_74

    invoke-direct {p0, v6, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[[[DZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[[[DZ)V

    :goto_5b
    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    mul-int/2addr v0, v1

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->sliceStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rowStride:I

    :cond_68
    :goto_68
    return-void

    :cond_69
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v4, :cond_47

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    goto :goto_47

    :cond_74
    invoke-direct {p0, v6, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[[[DZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[[[DZ)V

    goto :goto_5b

    :cond_7b
    if-le v8, v3, :cond_100

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_100

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-lt v0, v8, :cond_100

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-lt v0, v8, :cond_100

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-lt v0, v8, :cond_100

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    div-int v10, v0, v8

    move v7, v6

    :goto_94
    if-ge v7, v8, :cond_b3

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_b0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_9e
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$10;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$10;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[[[DZ)V

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

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    :goto_c1
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$11;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$11;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[[[DZ)V

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

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    div-int v7, v0, v8

    :goto_dd
    if-ge v6, v8, :cond_fb

    mul-int v2, v6, v7

    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_f8

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    :goto_e7
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$12;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$12;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[[[DZ)V

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
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_119

    move v1, v6

    :goto_106
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_116

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftColumns:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    aget-object v3, p1, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_106

    :cond_116
    add-int/lit8 v0, v0, 0x1

    goto :goto_101

    :cond_119
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [D

    move v0, v6

    :goto_120
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v0, v1, :cond_172

    move v1, v6

    :goto_125
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v2, :cond_16f

    mul-int/lit8 v4, v1, 0x2

    move v2, v6

    :goto_12c
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v5, :cond_149

    mul-int/lit8 v5, v2, 0x2

    aget-object v7, p1, v0

    aget-object v7, v7, v2

    aget-wide v7, v7, v4

    aput-wide v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v7, p1, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v4, 0x1

    aget-wide v7, v7, v8

    aput-wide v7, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_12c

    :cond_149
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftRows:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v2, v6

    :goto_14f
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v2, v5, :cond_16c

    mul-int/lit8 v5, v2, 0x2

    aget-object v7, p1, v0

    aget-object v7, v7, v2

    aget-wide v8, v3, v5

    aput-wide v8, v7, v4

    aget-object v7, p1, v0

    aget-object v7, v7, v2

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-wide v9, v3, v5

    aput-wide v9, v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_14f

    :cond_16c
    add-int/lit8 v1, v1, 0x1

    goto :goto_125

    :cond_16f
    add-int/lit8 v0, v0, 0x1

    goto :goto_120

    :cond_172
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [D

    move v0, v6

    :goto_179
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v0, v1, :cond_68

    move v1, v6

    :goto_17e
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v2, :cond_1c8

    mul-int/lit8 v4, v1, 0x2

    move v2, v6

    :goto_185
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v5, :cond_1a2

    mul-int/lit8 v5, v2, 0x2

    aget-object v7, p1, v2

    aget-object v7, v7, v0

    aget-wide v7, v7, v4

    aput-wide v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v7, p1, v2

    aget-object v7, v7, v0

    add-int/lit8 v8, v4, 0x1

    aget-wide v7, v7, v8

    aput-wide v7, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_185

    :cond_1a2
    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fftSlices:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v2, v3, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    move v2, v6

    :goto_1a8
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    if-ge v2, v5, :cond_1c5

    mul-int/lit8 v5, v2, 0x2

    aget-object v7, p1, v2

    aget-object v7, v7, v0

    aget-wide v8, v3, v5

    aput-wide v8, v7, v4

    aget-object v7, p1, v2

    aget-object v7, v7, v0

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-wide v9, v3, v5

    aput-wide v9, v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a8

    :cond_1c5
    add-int/lit8 v1, v1, 0x1

    goto :goto_17e

    :cond_1c8
    add-int/lit8 v0, v0, 0x1

    goto :goto_179
.end method

.method public realForward([D)V
    .registers 8

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slices, rows and columns must be power of two numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_44

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_25

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_25
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    if-le v0, v3, :cond_32

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_32
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v5, :cond_54

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_3c
    :goto_3c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    :cond_44
    if-le v0, v3, :cond_5f

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_5f

    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth1(II[DZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[DZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    :goto_53
    return-void

    :cond_54
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v5, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    goto :goto_3c

    :cond_5f
    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub1(II[DZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[DZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    goto :goto_53
.end method

.method public realForward([[[D)V
    .registers 8

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slices, rows and columns must be power of two numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_44

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_25

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_25
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    if-le v0, v3, :cond_32

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_32
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v5, :cond_54

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_3c
    :goto_3c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    :cond_44
    if-le v0, v3, :cond_5f

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_5f

    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth1(II[[[DZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[[[DZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    :goto_53
    return-void

    :cond_54
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v5, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    goto :goto_3c

    :cond_5f
    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub1(II[[[DZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[[[DZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    goto :goto_53
.end method

.method public realForwardFull([D)V
    .registers 8

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_64

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_1d

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_1d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    if-le v0, v3, :cond_2a

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_2a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v5, :cond_4f

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_34
    :goto_34
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    :cond_3c
    if-le v0, v3, :cond_5a

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_5a

    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[DZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[DZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    :goto_4b
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fillSymmetric([D)V

    :goto_4e
    return-void

    :cond_4f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v5, :cond_34

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    goto :goto_34

    :cond_5a
    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[DZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[DZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    goto :goto_4b

    :cond_64
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->mixedRadixRealForwardFull([D)V

    goto :goto_4e
.end method

.method public realForwardFull([[[D)V
    .registers 8

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_64

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_1d

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_1d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    if-le v0, v3, :cond_2a

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_2a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v5, :cond_4f

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_34
    :goto_34
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    :cond_3c
    if-le v0, v3, :cond_5a

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_5a

    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[[[DZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[[[DZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    :goto_4b
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fillSymmetric([[[D)V

    :goto_4e
    return-void

    :cond_4f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v5, :cond_34

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    goto :goto_34

    :cond_5a
    invoke-direct {p0, v3, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[[[DZ)V

    invoke-direct {p0, v4, p1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[[[DZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    goto :goto_4b

    :cond_64
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->mixedRadixRealForwardFull([[[D)V

    goto :goto_4e
.end method

.method public realInverse([DZ)V
    .registers 9

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slices, rows and columns must be power of two numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_44

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_25

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_25
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    if-le v0, v3, :cond_32

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_32
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v5, :cond_54

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_3c
    :goto_3c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    :cond_44
    if-le v0, v3, :cond_5f

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_5f

    invoke-direct {p0, v4, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[DZ)V

    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth1(II[DZ)V

    :goto_53
    return-void

    :cond_54
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v5, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    goto :goto_3c

    :cond_5f
    invoke-direct {p0, v4, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[DZ)V

    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub1(II[DZ)V

    goto :goto_53
.end method

.method public realInverse([[[DZ)V
    .registers 9

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slices, rows and columns must be power of two numbers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_44

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_25

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_25
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    if-le v0, v3, :cond_32

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_32
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v5, :cond_54

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_3c
    :goto_3c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    :cond_44
    if-le v0, v3, :cond_5f

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_5f

    invoke-direct {p0, v4, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[[[DZ)V

    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth1(II[[[DZ)V

    :goto_53
    return-void

    :cond_54
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v5, :cond_3c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    goto :goto_3c

    :cond_5f
    invoke-direct {p0, v4, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[[[DZ)V

    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub1(II[[[DZ)V

    goto :goto_53
.end method

.method public realInverseFull([DZ)V
    .registers 8

    const/4 v4, 0x4

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_63

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_3b

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_1c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_1c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    if-le v0, v3, :cond_29

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_29
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v4, :cond_4e

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_33
    :goto_33
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    :cond_3b
    if-le v0, v3, :cond_59

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_59

    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[DZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[DZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    :goto_4a
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fillSymmetric([D)V

    :goto_4d
    return-void

    :cond_4e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v4, :cond_33

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    goto :goto_33

    :cond_59
    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[DZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[DZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[D)V

    goto :goto_4a

    :cond_63
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->mixedRadixRealInverseFull([DZ)V

    goto :goto_4d
.end method

.method public realInverseFull([[[DZ)V
    .registers 8

    const/4 v4, 0x4

    const/4 v3, 0x1

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->isPowerOfTwo:Z

    if-eqz v0, :cond_63

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    if-eq v0, v1, :cond_3b

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->slices:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    if-ge v1, v2, :cond_1c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rows:I

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_1c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    if-le v0, v3, :cond_29

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    mul-int/2addr v1, v0

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_29
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ne v1, v4, :cond_4e

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    :cond_33
    :goto_33
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    new-array v1, v1, [D

    iput-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->t:[D

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->oldNthreads:I

    :cond_3b
    if-le v0, v3, :cond_59

    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->useThreads:Z

    if-eqz v0, :cond_59

    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[[[DZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[[[DZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    :goto_4a
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->fillSymmetric([[[D)V

    :goto_4d
    return-void

    :cond_4e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->columns:I

    if-ge v1, v4, :cond_33

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->nt:I

    goto :goto_33

    :cond_59
    invoke-direct {p0, v3, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->xdft3da_sub2(II[[[DZ)V

    invoke-direct {p0, v3, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->cdft3db_sub(I[[[DZ)V

    invoke-direct {p0, v3, p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->rdft3d_sub(I[[[D)V

    goto :goto_4a

    :cond_63
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->mixedRadixRealInverseFull([[[DZ)V

    goto :goto_4d
.end method
