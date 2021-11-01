.class public Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;
.super Ljava/lang/Object;


# static fields
.field private static final PI:D = 3.141592653589793


# instance fields
.field private fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

.field private ip:[I

.field private isPowerOfTwo:Z

.field private n:I

.field private nc:I

.field private nw:I

.field private w:[F


# direct methods
.method public constructor <init>(I)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->isPowerOfTwo:Z

    if-ge p1, v4, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iput p1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    invoke-static {p1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_70

    iput-boolean v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->isPowerOfTwo:Z

    div-int/lit8 v0, p1, 0x2

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    shl-int v0, v4, v0

    add-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->ip:[I

    mul-int/lit8 v0, p1, 0x5

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->ip:[I

    aget v0, v0, v5

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nw:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nw:I

    shl-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_5a

    shr-int/lit8 v0, p1, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nw:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nw:I

    invoke-direct {p0, v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->makewt(I)V

    :cond_5a
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->ip:[I

    aget v0, v0, v4

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nc:I

    if-le p1, v0, :cond_6f

    iput p1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nc:I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nw:I

    invoke-direct {p0, v0, v1, v2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->makect(I[FI)V

    :cond_6f
    :goto_6f
    return-void

    :cond_70
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->makect(I)[F

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    mul-int/lit8 v1, p1, 0x2

    invoke-direct {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    goto :goto_6f
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;)[F
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    return-object v0
.end method

.method static synthetic access$100(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;I[FI[FI)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl1(I[FI[FI)V

    return-void
.end method

.method static synthetic access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;II[FII[F)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftleaf(II[FII[F)V

    return-void
.end method

.method static synthetic access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;III[FII[F)I
    .registers 9

    invoke-direct/range {p0 .. p7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cfttree(III[FII[F)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;I[FI[FI)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl2(I[FI[FI)V

    return-void
.end method

.method private bitrv2(I[I[FI)V
    .registers 18

    const/4 v0, 0x1

    shr-int/lit8 v1, p1, 0x2

    move v2, v0

    :goto_4
    const/16 v0, 0x8

    if-le v1, v0, :cond_e

    shl-int/lit8 v0, v2, 0x1

    shr-int/lit8 v1, v1, 0x2

    move v2, v0

    goto :goto_4

    :cond_e
    shr-int/lit8 v3, p1, 0x1

    mul-int/lit8 v4, v2, 0x4

    const/16 v0, 0x8

    if-ne v1, v0, :cond_2f4

    const/4 v0, 0x0

    move v1, v0

    :goto_18
    if-ge v1, v2, :cond_447

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v1, :cond_224

    mul-int/lit8 v5, v0, 0x4

    add-int v6, v2, v1

    aget v6, p2, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x4

    add-int v7, v2, v0

    aget v7, p2, v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v6, v3

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v3

    add-int/lit8 v6, v6, -0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v5, v5, p4

    add-int v6, v6, p4

    aget v7, p3, v5

    add-int/lit8 v8, v5, 0x1

    aget v8, p3, v8

    aget v9, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, p3, v10

    aput v9, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput v10, p3, v5

    aput v7, p3, v6

    add-int/lit8 v5, v6, 0x1

    aput v8, p3, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1b

    :cond_224
    mul-int/lit8 v0, v1, 0x4

    add-int v5, v2, v1

    aget v5, p2, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    add-int/lit8 v5, v0, 0x2

    add-int/2addr v0, v3

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget v8, p3, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, p3, v9

    aget v10, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, p3, v11

    aput v10, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput v11, p3, v6

    aput v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput v9, p3, v6

    add-int/2addr v5, v4

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v0, v6

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget v8, p3, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, p3, v9

    aget v10, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, p3, v11

    aput v10, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput v11, p3, v6

    aput v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput v9, p3, v6

    add-int/2addr v5, v4

    sub-int/2addr v0, v4

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget v8, p3, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, p3, v9

    aget v10, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, p3, v11

    aput v10, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput v11, p3, v6

    aput v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput v9, p3, v6

    add-int/lit8 v5, v5, -0x2

    sub-int/2addr v0, v3

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget v8, p3, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, p3, v9

    aget v10, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, p3, v11

    aput v10, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput v11, p3, v6

    aput v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput v9, p3, v6

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v0, v6

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget v8, p3, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, p3, v9

    aget v10, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, p3, v11

    aput v10, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput v11, p3, v6

    aput v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput v9, p3, v6

    sub-int v6, v3, v4

    sub-int/2addr v5, v6

    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, -0x2

    add-int/2addr v0, v6

    add-int v5, v5, p4

    add-int v0, v0, p4

    aget v6, p3, v5

    add-int/lit8 v7, v5, 0x1

    aget v7, p3, v7

    aget v8, p3, v0

    add-int/lit8 v9, v0, 0x1

    aget v9, p3, v9

    aput v8, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput v9, p3, v5

    aput v6, p3, v0

    add-int/lit8 v0, v0, 0x1

    aput v7, p3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_18

    :cond_2f4
    const/4 v0, 0x0

    move v1, v0

    :goto_2f6
    if-ge v1, v2, :cond_447

    const/4 v0, 0x0

    :goto_2f9
    if-ge v0, v1, :cond_3fe

    mul-int/lit8 v5, v0, 0x4

    add-int v6, v2, v1

    aget v6, p2, v6

    add-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x4

    add-int v7, v2, v0

    aget v7, p2, v7

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v6, v3

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v3

    add-int/lit8 v6, v6, -0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v5, v5, p4

    add-int v6, v6, p4

    aget v7, p3, v5

    add-int/lit8 v8, v5, 0x1

    aget v8, p3, v8

    aget v9, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, p3, v10

    aput v9, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput v10, p3, v5

    aput v7, p3, v6

    add-int/lit8 v5, v6, 0x1

    aput v8, p3, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2f9

    :cond_3fe
    mul-int/lit8 v0, v1, 0x4

    add-int v5, v2, v1

    aget v5, p2, v5

    add-int/2addr v0, v5

    add-int/lit8 v5, v0, 0x2

    add-int/2addr v0, v3

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget v8, p3, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, p3, v9

    aget v10, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, p3, v11

    aput v10, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput v11, p3, v6

    aput v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput v9, p3, v6

    add-int/2addr v5, v4

    add-int/2addr v0, v4

    add-int v5, v5, p4

    add-int v0, v0, p4

    aget v6, p3, v5

    add-int/lit8 v7, v5, 0x1

    aget v7, p3, v7

    aget v8, p3, v0

    add-int/lit8 v9, v0, 0x1

    aget v9, p3, v9

    aput v8, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput v9, p3, v5

    aput v6, p3, v0

    add-int/lit8 v0, v0, 0x1

    aput v7, p3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2f6

    :cond_447
    return-void
.end method

.method private bitrv208([FI)V
    .registers 12

    add-int/lit8 v0, p2, 0x2

    aget v0, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, p2, 0x6

    aget v2, p1, v2

    add-int/lit8 v3, p2, 0x7

    aget v3, p1, v3

    add-int/lit8 v4, p2, 0x8

    aget v4, p1, v4

    add-int/lit8 v5, p2, 0x9

    aget v5, p1, v5

    add-int/lit8 v6, p2, 0xc

    aget v6, p1, v6

    add-int/lit8 v7, p2, 0xd

    aget v7, p1, v7

    add-int/lit8 v8, p2, 0x2

    aput v4, p1, v8

    add-int/lit8 v4, p2, 0x3

    aput v5, p1, v4

    add-int/lit8 v4, p2, 0x6

    aput v6, p1, v4

    add-int/lit8 v4, p2, 0x7

    aput v7, p1, v4

    add-int/lit8 v4, p2, 0x8

    aput v0, p1, v4

    add-int/lit8 v0, p2, 0x9

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0xc

    aput v2, p1, v0

    add-int/lit8 v0, p2, 0xd

    aput v3, p1, v0

    return-void
.end method

.method private bitrv208neg([FI)V
    .registers 18

    add-int/lit8 v0, p2, 0x2

    aget v0, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, p2, 0x4

    aget v2, p1, v2

    add-int/lit8 v3, p2, 0x5

    aget v3, p1, v3

    add-int/lit8 v4, p2, 0x6

    aget v4, p1, v4

    add-int/lit8 v5, p2, 0x7

    aget v5, p1, v5

    add-int/lit8 v6, p2, 0x8

    aget v6, p1, v6

    add-int/lit8 v7, p2, 0x9

    aget v7, p1, v7

    add-int/lit8 v8, p2, 0xa

    aget v8, p1, v8

    add-int/lit8 v9, p2, 0xb

    aget v9, p1, v9

    add-int/lit8 v10, p2, 0xc

    aget v10, p1, v10

    add-int/lit8 v11, p2, 0xd

    aget v11, p1, v11

    add-int/lit8 v12, p2, 0xe

    aget v12, p1, v12

    add-int/lit8 v13, p2, 0xf

    aget v13, p1, v13

    add-int/lit8 v14, p2, 0x2

    aput v12, p1, v14

    add-int/lit8 v12, p2, 0x3

    aput v13, p1, v12

    add-int/lit8 v12, p2, 0x4

    aput v4, p1, v12

    add-int/lit8 v4, p2, 0x5

    aput v5, p1, v4

    add-int/lit8 v4, p2, 0x6

    aput v8, p1, v4

    add-int/lit8 v4, p2, 0x7

    aput v9, p1, v4

    add-int/lit8 v4, p2, 0x8

    aput v0, p1, v4

    add-int/lit8 v0, p2, 0x9

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0xa

    aput v10, p1, v0

    add-int/lit8 v0, p2, 0xb

    aput v11, p1, v0

    add-int/lit8 v0, p2, 0xc

    aput v2, p1, v0

    add-int/lit8 v0, p2, 0xd

    aput v3, p1, v0

    add-int/lit8 v0, p2, 0xe

    aput v6, p1, v0

    add-int/lit8 v0, p2, 0xf

    aput v7, p1, v0

    return-void
.end method

.method private bitrv216([FI)V
    .registers 28

    add-int/lit8 v0, p2, 0x2

    aget v0, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, p2, 0x4

    aget v2, p1, v2

    add-int/lit8 v3, p2, 0x5

    aget v3, p1, v3

    add-int/lit8 v4, p2, 0x6

    aget v4, p1, v4

    add-int/lit8 v5, p2, 0x7

    aget v5, p1, v5

    add-int/lit8 v6, p2, 0x8

    aget v6, p1, v6

    add-int/lit8 v7, p2, 0x9

    aget v7, p1, v7

    add-int/lit8 v8, p2, 0xa

    aget v8, p1, v8

    add-int/lit8 v9, p2, 0xb

    aget v9, p1, v9

    add-int/lit8 v10, p2, 0xe

    aget v10, p1, v10

    add-int/lit8 v11, p2, 0xf

    aget v11, p1, v11

    add-int/lit8 v12, p2, 0x10

    aget v12, p1, v12

    add-int/lit8 v13, p2, 0x11

    aget v13, p1, v13

    add-int/lit8 v14, p2, 0x14

    aget v14, p1, v14

    add-int/lit8 v15, p2, 0x15

    aget v15, p1, v15

    add-int/lit8 v16, p2, 0x16

    aget v16, p1, v16

    add-int/lit8 v17, p2, 0x17

    aget v17, p1, v17

    add-int/lit8 v18, p2, 0x18

    aget v18, p1, v18

    add-int/lit8 v19, p2, 0x19

    aget v19, p1, v19

    add-int/lit8 v20, p2, 0x1a

    aget v20, p1, v20

    add-int/lit8 v21, p2, 0x1b

    aget v21, p1, v21

    add-int/lit8 v22, p2, 0x1c

    aget v22, p1, v22

    add-int/lit8 v23, p2, 0x1d

    aget v23, p1, v23

    add-int/lit8 v24, p2, 0x2

    aput v12, p1, v24

    add-int/lit8 v12, p2, 0x3

    aput v13, p1, v12

    add-int/lit8 v12, p2, 0x4

    aput v6, p1, v12

    add-int/lit8 v6, p2, 0x5

    aput v7, p1, v6

    add-int/lit8 v6, p2, 0x6

    aput v18, p1, v6

    add-int/lit8 v6, p2, 0x7

    aput v19, p1, v6

    add-int/lit8 v6, p2, 0x8

    aput v2, p1, v6

    add-int/lit8 v2, p2, 0x9

    aput v3, p1, v2

    add-int/lit8 v2, p2, 0xa

    aput v14, p1, v2

    add-int/lit8 v2, p2, 0xb

    aput v15, p1, v2

    add-int/lit8 v2, p2, 0xe

    aput v22, p1, v2

    add-int/lit8 v2, p2, 0xf

    aput v23, p1, v2

    add-int/lit8 v2, p2, 0x10

    aput v0, p1, v2

    add-int/lit8 v0, p2, 0x11

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x14

    aput v8, p1, v0

    add-int/lit8 v0, p2, 0x15

    aput v9, p1, v0

    add-int/lit8 v0, p2, 0x16

    aput v20, p1, v0

    add-int/lit8 v0, p2, 0x17

    aput v21, p1, v0

    add-int/lit8 v0, p2, 0x18

    aput v4, p1, v0

    add-int/lit8 v0, p2, 0x19

    aput v5, p1, v0

    add-int/lit8 v0, p2, 0x1a

    aput v16, p1, v0

    add-int/lit8 v0, p2, 0x1b

    aput v17, p1, v0

    add-int/lit8 v0, p2, 0x1c

    aput v10, p1, v0

    add-int/lit8 v0, p2, 0x1d

    aput v11, p1, v0

    return-void
.end method

.method private bitrv216neg([FI)V
    .registers 34

    add-int/lit8 v0, p2, 0x2

    aget v0, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    add-int/lit8 v2, p2, 0x4

    aget v2, p1, v2

    add-int/lit8 v3, p2, 0x5

    aget v3, p1, v3

    add-int/lit8 v4, p2, 0x6

    aget v4, p1, v4

    add-int/lit8 v5, p2, 0x7

    aget v5, p1, v5

    add-int/lit8 v6, p2, 0x8

    aget v6, p1, v6

    add-int/lit8 v7, p2, 0x9

    aget v7, p1, v7

    add-int/lit8 v8, p2, 0xa

    aget v8, p1, v8

    add-int/lit8 v9, p2, 0xb

    aget v9, p1, v9

    add-int/lit8 v10, p2, 0xc

    aget v10, p1, v10

    add-int/lit8 v11, p2, 0xd

    aget v11, p1, v11

    add-int/lit8 v12, p2, 0xe

    aget v12, p1, v12

    add-int/lit8 v13, p2, 0xf

    aget v13, p1, v13

    add-int/lit8 v14, p2, 0x10

    aget v14, p1, v14

    add-int/lit8 v15, p2, 0x11

    aget v15, p1, v15

    add-int/lit8 v16, p2, 0x12

    aget v16, p1, v16

    add-int/lit8 v17, p2, 0x13

    aget v17, p1, v17

    add-int/lit8 v18, p2, 0x14

    aget v18, p1, v18

    add-int/lit8 v19, p2, 0x15

    aget v19, p1, v19

    add-int/lit8 v20, p2, 0x16

    aget v20, p1, v20

    add-int/lit8 v21, p2, 0x17

    aget v21, p1, v21

    add-int/lit8 v22, p2, 0x18

    aget v22, p1, v22

    add-int/lit8 v23, p2, 0x19

    aget v23, p1, v23

    add-int/lit8 v24, p2, 0x1a

    aget v24, p1, v24

    add-int/lit8 v25, p2, 0x1b

    aget v25, p1, v25

    add-int/lit8 v26, p2, 0x1c

    aget v26, p1, v26

    add-int/lit8 v27, p2, 0x1d

    aget v27, p1, v27

    add-int/lit8 v28, p2, 0x1e

    aget v28, p1, v28

    add-int/lit8 v29, p2, 0x1f

    aget v29, p1, v29

    add-int/lit8 v30, p2, 0x2

    aput v28, p1, v30

    add-int/lit8 v28, p2, 0x3

    aput v29, p1, v28

    add-int/lit8 v28, p2, 0x4

    aput v12, p1, v28

    add-int/lit8 v12, p2, 0x5

    aput v13, p1, v12

    add-int/lit8 v12, p2, 0x6

    aput v20, p1, v12

    add-int/lit8 v12, p2, 0x7

    aput v21, p1, v12

    add-int/lit8 v12, p2, 0x8

    aput v4, p1, v12

    add-int/lit8 v4, p2, 0x9

    aput v5, p1, v4

    add-int/lit8 v4, p2, 0xa

    aput v24, p1, v4

    add-int/lit8 v4, p2, 0xb

    aput v25, p1, v4

    add-int/lit8 v4, p2, 0xc

    aput v8, p1, v4

    add-int/lit8 v4, p2, 0xd

    aput v9, p1, v4

    add-int/lit8 v4, p2, 0xe

    aput v16, p1, v4

    add-int/lit8 v4, p2, 0xf

    aput v17, p1, v4

    add-int/lit8 v4, p2, 0x10

    aput v0, p1, v4

    add-int/lit8 v0, p2, 0x11

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x12

    aput v26, p1, v0

    add-int/lit8 v0, p2, 0x13

    aput v27, p1, v0

    add-int/lit8 v0, p2, 0x14

    aput v10, p1, v0

    add-int/lit8 v0, p2, 0x15

    aput v11, p1, v0

    add-int/lit8 v0, p2, 0x16

    aput v18, p1, v0

    add-int/lit8 v0, p2, 0x17

    aput v19, p1, v0

    add-int/lit8 v0, p2, 0x18

    aput v2, p1, v0

    add-int/lit8 v0, p2, 0x19

    aput v3, p1, v0

    add-int/lit8 v0, p2, 0x1a

    aput v22, p1, v0

    add-int/lit8 v0, p2, 0x1b

    aput v23, p1, v0

    add-int/lit8 v0, p2, 0x1c

    aput v6, p1, v0

    add-int/lit8 v0, p2, 0x1d

    aput v7, p1, v0

    add-int/lit8 v0, p2, 0x1e

    aput v14, p1, v0

    add-int/lit8 v0, p2, 0x1f

    aput v15, p1, v0

    return-void
.end method

.method private bitrv2conj(I[I[FI)V
    .registers 18

    const/4 v0, 0x1

    shr-int/lit8 v1, p1, 0x2

    move v2, v0

    :goto_4
    const/16 v0, 0x8

    if-le v1, v0, :cond_e

    shl-int/lit8 v0, v2, 0x1

    shr-int/lit8 v1, v1, 0x2

    move v2, v0

    goto :goto_4

    :cond_e
    shr-int/lit8 v3, p1, 0x1

    mul-int/lit8 v4, v2, 0x4

    const/16 v0, 0x8

    if-ne v1, v0, :cond_344

    const/4 v0, 0x0

    move v1, v0

    :goto_18
    if-ge v1, v2, :cond_4cf

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v1, :cond_244

    mul-int/lit8 v5, v0, 0x4

    add-int v6, v2, v1

    aget v6, p2, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x4

    add-int v7, v2, v0

    aget v7, p2, v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v6, v3

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v3

    add-int/lit8 v6, v6, -0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v5, v5, p4

    add-int v6, v6, p4

    aget v7, p3, v5

    add-int/lit8 v8, v5, 0x1

    aget v8, p3, v8

    neg-float v8, v8

    aget v9, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aput v9, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput v10, p3, v5

    aput v7, p3, v6

    add-int/lit8 v5, v6, 0x1

    aput v8, p3, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1b

    :cond_244
    mul-int/lit8 v0, v1, 0x4

    add-int v5, v2, v1

    aget v5, p2, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    add-int/lit8 v5, v0, 0x2

    add-int/2addr v0, v3

    add-int v6, p4, v5

    add-int v7, p4, v0

    add-int/lit8 v8, v6, -0x1

    add-int/lit8 v9, v6, -0x1

    aget v9, p3, v9

    neg-float v9, v9

    aput v9, p3, v8

    aget v8, p3, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, p3, v9

    neg-float v9, v9

    aget v10, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aput v10, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput v11, p3, v6

    aput v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput v9, p3, v6

    add-int/lit8 v6, v7, 0x3

    add-int/lit8 v7, v7, 0x3

    aget v7, p3, v7

    neg-float v7, v7

    aput v7, p3, v6

    add-int/2addr v5, v4

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v0, v6

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget v8, p3, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, p3, v9

    neg-float v9, v9

    aget v10, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aput v10, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput v11, p3, v6

    aput v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput v9, p3, v6

    add-int/2addr v5, v4

    sub-int/2addr v0, v4

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget v8, p3, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, p3, v9

    neg-float v9, v9

    aget v10, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aput v10, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput v11, p3, v6

    aput v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput v9, p3, v6

    add-int/lit8 v5, v5, -0x2

    sub-int/2addr v0, v3

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget v8, p3, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, p3, v9

    neg-float v9, v9

    aget v10, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aput v10, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput v11, p3, v6

    aput v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput v9, p3, v6

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v0, v6

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget v8, p3, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, p3, v9

    neg-float v9, v9

    aget v10, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aput v10, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput v11, p3, v6

    aput v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput v9, p3, v6

    sub-int v6, v3, v4

    sub-int/2addr v5, v6

    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, -0x2

    add-int/2addr v0, v6

    add-int v5, v5, p4

    add-int v0, v0, p4

    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v7, v5, -0x1

    aget v7, p3, v7

    neg-float v7, v7

    aput v7, p3, v6

    aget v6, p3, v5

    add-int/lit8 v7, v5, 0x1

    aget v7, p3, v7

    neg-float v7, v7

    aget v8, p3, v0

    add-int/lit8 v9, v0, 0x1

    aget v9, p3, v9

    neg-float v9, v9

    aput v8, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput v9, p3, v5

    aput v6, p3, v0

    add-int/lit8 v5, v0, 0x1

    aput v7, p3, v5

    add-int/lit8 v5, v0, 0x3

    add-int/lit8 v0, v0, 0x3

    aget v0, p3, v0

    neg-float v0, v0

    aput v0, p3, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_18

    :cond_344
    const/4 v0, 0x0

    move v1, v0

    :goto_346
    if-ge v1, v2, :cond_4cf

    const/4 v0, 0x0

    :goto_349
    if-ge v0, v1, :cond_45e

    mul-int/lit8 v5, v0, 0x4

    add-int v6, v2, v1

    aget v6, p2, v6

    add-int/2addr v5, v6

    mul-int/lit8 v6, v1, 0x4

    add-int v7, v2, v0

    aget v7, p2, v7

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v6, v3

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    add-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v3

    add-int/lit8 v6, v6, -0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget v9, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aget v11, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget v12, p3, v12

    neg-float v12, v12

    aput v11, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput v12, p3, v7

    aput v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput v10, p3, v7

    sub-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v5, v5, p4

    add-int v6, v6, p4

    aget v7, p3, v5

    add-int/lit8 v8, v5, 0x1

    aget v8, p3, v8

    neg-float v8, v8

    aget v9, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, p3, v10

    neg-float v10, v10

    aput v9, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput v10, p3, v5

    aput v7, p3, v6

    add-int/lit8 v5, v6, 0x1

    aput v8, p3, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_349

    :cond_45e
    mul-int/lit8 v0, v1, 0x4

    add-int v5, v2, v1

    aget v5, p2, v5

    add-int/2addr v0, v5

    add-int/lit8 v5, v0, 0x2

    add-int/2addr v0, v3

    add-int v6, p4, v5

    add-int v7, p4, v0

    add-int/lit8 v8, v6, -0x1

    add-int/lit8 v9, v6, -0x1

    aget v9, p3, v9

    neg-float v9, v9

    aput v9, p3, v8

    aget v8, p3, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, p3, v9

    neg-float v9, v9

    aget v10, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aput v10, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput v11, p3, v6

    aput v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput v9, p3, v6

    add-int/lit8 v6, v7, 0x3

    add-int/lit8 v7, v7, 0x3

    aget v7, p3, v7

    neg-float v7, v7

    aput v7, p3, v6

    add-int/2addr v5, v4

    add-int/2addr v0, v4

    add-int v5, v5, p4

    add-int v0, v0, p4

    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v7, v5, -0x1

    aget v7, p3, v7

    neg-float v7, v7

    aput v7, p3, v6

    aget v6, p3, v5

    add-int/lit8 v7, v5, 0x1

    aget v7, p3, v7

    neg-float v7, v7

    aget v8, p3, v0

    add-int/lit8 v9, v0, 0x1

    aget v9, p3, v9

    neg-float v9, v9

    aput v8, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput v9, p3, v5

    aput v6, p3, v0

    add-int/lit8 v5, v0, 0x1

    aput v7, p3, v5

    add-int/lit8 v5, v0, 0x3

    add-int/lit8 v0, v0, 0x3

    aget v0, p3, v0

    neg-float v0, v0

    aput v0, p3, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_346

    :cond_4cf
    return-void
.end method

.method private cftb040([FI)V
    .registers 13

    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x4

    aget v1, p1, v1

    add-float/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p2, 0x5

    aget v2, p1, v2

    add-float/2addr v1, v2

    aget v2, p1, p2

    add-int/lit8 v3, p2, 0x4

    aget v3, p1, v3

    sub-float/2addr v2, v3

    add-int/lit8 v3, p2, 0x1

    aget v3, p1, v3

    add-int/lit8 v4, p2, 0x5

    aget v4, p1, v4

    sub-float/2addr v3, v4

    add-int/lit8 v4, p2, 0x2

    aget v4, p1, v4

    add-int/lit8 v5, p2, 0x6

    aget v5, p1, v5

    add-float/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget v5, p1, v5

    add-int/lit8 v6, p2, 0x7

    aget v6, p1, v6

    add-float/2addr v5, v6

    add-int/lit8 v6, p2, 0x2

    aget v6, p1, v6

    add-int/lit8 v7, p2, 0x6

    aget v7, p1, v7

    sub-float/2addr v6, v7

    add-int/lit8 v7, p2, 0x3

    aget v7, p1, v7

    add-int/lit8 v8, p2, 0x7

    aget v8, p1, v8

    sub-float/2addr v7, v8

    add-float v8, v0, v4

    aput v8, p1, p2

    add-int/lit8 v8, p2, 0x1

    add-float v9, v1, v5

    aput v9, p1, v8

    add-int/lit8 v8, p2, 0x2

    add-float v9, v2, v7

    aput v9, p1, v8

    add-int/lit8 v8, p2, 0x3

    sub-float v9, v3, v6

    aput v9, p1, v8

    add-int/lit8 v8, p2, 0x4

    sub-float/2addr v0, v4

    aput v0, p1, v8

    add-int/lit8 v0, p2, 0x5

    sub-float/2addr v1, v5

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x6

    sub-float v1, v2, v7

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x7

    add-float v1, v3, v6

    aput v1, p1, v0

    return-void
.end method

.method private cftb1st(I[FI[FI)V
    .registers 44

    shr-int/lit8 v7, p1, 0x3

    mul-int/lit8 v8, v7, 0x2

    add-int v1, v8, v8

    add-int v2, v1, v8

    add-int v3, p3, v8

    add-int v1, v1, p3

    add-int v2, v2, p3

    aget v4, p2, p3

    aget v5, p2, v1

    add-float/2addr v4, v5

    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    neg-float v5, v5

    add-int/lit8 v6, v1, 0x1

    aget v6, p2, v6

    sub-float/2addr v5, v6

    aget v6, p2, p3

    aget v9, p2, v1

    sub-float/2addr v6, v9

    add-int/lit8 v9, p3, 0x1

    aget v9, p2, v9

    neg-float v9, v9

    add-int/lit8 v10, v1, 0x1

    aget v10, p2, v10

    add-float/2addr v9, v10

    aget v10, p2, v3

    aget v11, p2, v2

    add-float/2addr v10, v11

    add-int/lit8 v11, v3, 0x1

    aget v11, p2, v11

    add-int/lit8 v12, v2, 0x1

    aget v12, p2, v12

    add-float/2addr v11, v12

    aget v12, p2, v3

    aget v13, p2, v2

    sub-float/2addr v12, v13

    add-int/lit8 v13, v3, 0x1

    aget v13, p2, v13

    add-int/lit8 v14, v2, 0x1

    aget v14, p2, v14

    sub-float/2addr v13, v14

    add-float v14, v4, v10

    aput v14, p2, p3

    add-int/lit8 v14, p3, 0x1

    sub-float v15, v5, v11

    aput v15, p2, v14

    sub-float/2addr v4, v10

    aput v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    add-float v4, v5, v11

    aput v4, p2, v3

    add-float v3, v6, v13

    aput v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    add-float v3, v9, v12

    aput v3, p2, v1

    sub-float v1, v6, v13

    aput v1, p2, v2

    add-int/lit8 v1, v2, 0x1

    sub-float v2, v9, v12

    aput v2, p2, v1

    add-int/lit8 v1, p5, 0x1

    aget v9, p4, v1

    add-int/lit8 v1, p5, 0x2

    aget v10, p4, v1

    add-int/lit8 v1, p5, 0x3

    aget v11, p4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x2

    :goto_83
    add-int/lit8 v12, v7, -0x2

    if-ge v1, v12, :cond_324

    add-int/lit8 v6, v6, 0x4

    add-int v12, p5, v6

    aget v13, p4, v12

    add-float/2addr v5, v13

    mul-float v13, v10, v5

    add-int/lit8 v5, v12, 0x1

    aget v5, p4, v5

    add-float/2addr v4, v5

    mul-float v14, v10, v4

    add-int/lit8 v4, v12, 0x2

    aget v4, p4, v4

    add-float/2addr v3, v4

    mul-float v15, v11, v3

    add-int/lit8 v3, v12, 0x3

    aget v3, p4, v3

    add-float/2addr v2, v3

    mul-float v16, v11, v2

    aget v5, p4, v12

    add-int/lit8 v2, v12, 0x1

    aget v4, p4, v2

    add-int/lit8 v2, v12, 0x2

    aget v3, p4, v2

    add-int/lit8 v2, v12, 0x3

    aget v2, p4, v2

    add-int v12, v1, v8

    add-int v17, v12, v8

    add-int v18, v17, v8

    add-int v12, v12, p3

    add-int v19, p3, v17

    add-int v18, v18, p3

    add-int v20, p3, v1

    aget v21, p2, v20

    aget v22, p2, v19

    add-float v21, v21, v22

    add-int/lit8 v22, v20, 0x1

    aget v22, p2, v22

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    add-int/lit8 v23, v19, 0x1

    aget v23, p2, v23

    sub-float v22, v22, v23

    aget v23, p2, v20

    add-int v17, v17, p3

    aget v17, p2, v17

    sub-float v17, v23, v17

    add-int/lit8 v23, v20, 0x1

    aget v23, p2, v23

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    add-int/lit8 v24, v19, 0x1

    aget v24, p2, v24

    add-float v23, v23, v24

    add-int/lit8 v24, v20, 0x2

    aget v24, p2, v24

    add-int/lit8 v25, v19, 0x2

    aget v25, p2, v25

    add-float v24, v24, v25

    add-int/lit8 v25, v20, 0x3

    aget v25, p2, v25

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    add-int/lit8 v26, v19, 0x3

    aget v26, p2, v26

    sub-float v25, v25, v26

    add-int/lit8 v26, v20, 0x2

    aget v26, p2, v26

    add-int/lit8 v27, v19, 0x2

    aget v27, p2, v27

    sub-float v26, v26, v27

    add-int/lit8 v27, v20, 0x3

    aget v27, p2, v27

    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    add-int/lit8 v28, v19, 0x3

    aget v28, p2, v28

    add-float v27, v27, v28

    aget v28, p2, v12

    aget v29, p2, v18

    add-float v28, v28, v29

    add-int/lit8 v29, v12, 0x1

    aget v29, p2, v29

    add-int/lit8 v30, v18, 0x1

    aget v30, p2, v30

    add-float v29, v29, v30

    aget v30, p2, v12

    aget v31, p2, v18

    sub-float v30, v30, v31

    add-int/lit8 v31, v12, 0x1

    aget v31, p2, v31

    add-int/lit8 v32, v18, 0x1

    aget v32, p2, v32

    sub-float v31, v31, v32

    add-int/lit8 v32, v12, 0x2

    aget v32, p2, v32

    add-int/lit8 v33, v18, 0x2

    aget v33, p2, v33

    add-float v32, v32, v33

    add-int/lit8 v33, v12, 0x3

    aget v33, p2, v33

    add-int/lit8 v34, v18, 0x3

    aget v34, p2, v34

    add-float v33, v33, v34

    add-int/lit8 v34, v12, 0x2

    aget v34, p2, v34

    add-int/lit8 v35, v18, 0x2

    aget v35, p2, v35

    sub-float v34, v34, v35

    add-int/lit8 v35, v12, 0x3

    aget v35, p2, v35

    add-int/lit8 v36, v18, 0x3

    aget v36, p2, v36

    sub-float v35, v35, v36

    add-float v36, v21, v28

    aput v36, p2, v20

    add-int/lit8 v36, v20, 0x1

    sub-float v37, v22, v29

    aput v37, p2, v36

    add-int/lit8 v36, v20, 0x2

    add-float v37, v24, v32

    aput v37, p2, v36

    add-int/lit8 v20, v20, 0x3

    sub-float v36, v25, v33

    aput v36, p2, v20

    sub-float v20, v21, v28

    aput v20, p2, v12

    add-int/lit8 v20, v12, 0x1

    add-float v21, v22, v29

    aput v21, p2, v20

    add-int/lit8 v20, v12, 0x2

    sub-float v21, v24, v32

    aput v21, p2, v20

    add-int/lit8 v12, v12, 0x3

    add-float v20, v25, v33

    aput v20, p2, v12

    add-float v12, v17, v31

    add-float v20, v23, v30

    mul-float v21, v13, v12

    mul-float v22, v14, v20

    sub-float v21, v21, v22

    aput v21, p2, v19

    add-int/lit8 v21, v19, 0x1

    mul-float v20, v20, v13

    mul-float/2addr v12, v14

    add-float v12, v12, v20

    aput v12, p2, v21

    add-float v12, v26, v35

    add-float v20, v27, v34

    add-int/lit8 v21, v19, 0x2

    mul-float v22, v5, v12

    mul-float v24, v4, v20

    sub-float v22, v22, v24

    aput v22, p2, v21

    add-int/lit8 v19, v19, 0x3

    mul-float v20, v20, v5

    mul-float/2addr v12, v4

    add-float v12, v12, v20

    aput v12, p2, v19

    sub-float v12, v17, v31

    sub-float v17, v23, v30

    mul-float v19, v15, v12

    mul-float v20, v16, v17

    add-float v19, v19, v20

    aput v19, p2, v18

    add-int/lit8 v19, v18, 0x1

    mul-float v17, v17, v15

    mul-float v12, v12, v16

    sub-float v12, v17, v12

    aput v12, p2, v19

    sub-float v12, v26, v35

    sub-float v17, v27, v34

    add-int/lit8 v19, v18, 0x2

    mul-float v20, v3, v12

    mul-float v21, v2, v17

    add-float v20, v20, v21

    aput v20, p2, v19

    add-int/lit8 v18, v18, 0x3

    mul-float v17, v17, v3

    mul-float/2addr v12, v2

    sub-float v12, v17, v12

    aput v12, p2, v18

    sub-int v12, v8, v1

    add-int v17, v12, v8

    add-int v18, v17, v8

    add-int v19, v18, v8

    add-int v12, v12, p3

    add-int v17, v17, p3

    add-int v18, v18, p3

    add-int v19, v19, p3

    aget v20, p2, v12

    aget v21, p2, v18

    add-float v20, v20, v21

    add-int/lit8 v21, v12, 0x1

    aget v21, p2, v21

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    add-int/lit8 v22, v18, 0x1

    aget v22, p2, v22

    sub-float v21, v21, v22

    aget v22, p2, v12

    aget v23, p2, v18

    sub-float v22, v22, v23

    add-int/lit8 v23, v12, 0x1

    aget v23, p2, v23

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    add-int/lit8 v24, v18, 0x1

    aget v24, p2, v24

    add-float v23, v23, v24

    add-int/lit8 v24, v12, -0x2

    aget v24, p2, v24

    add-int/lit8 v25, v18, -0x2

    aget v25, p2, v25

    add-float v24, v24, v25

    add-int/lit8 v25, v12, -0x1

    aget v25, p2, v25

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    add-int/lit8 v26, v18, -0x1

    aget v26, p2, v26

    sub-float v25, v25, v26

    add-int/lit8 v26, v12, -0x2

    aget v26, p2, v26

    add-int/lit8 v27, v18, -0x2

    aget v27, p2, v27

    sub-float v26, v26, v27

    add-int/lit8 v27, v12, -0x1

    aget v27, p2, v27

    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    add-int/lit8 v28, v18, -0x1

    aget v28, p2, v28

    add-float v27, v27, v28

    aget v28, p2, v17

    aget v29, p2, v19

    add-float v28, v28, v29

    add-int/lit8 v29, v17, 0x1

    aget v29, p2, v29

    add-int/lit8 v30, v19, 0x1

    aget v30, p2, v30

    add-float v29, v29, v30

    aget v30, p2, v17

    aget v31, p2, v19

    sub-float v30, v30, v31

    add-int/lit8 v31, v17, 0x1

    aget v31, p2, v31

    add-int/lit8 v32, v19, 0x1

    aget v32, p2, v32

    sub-float v31, v31, v32

    add-int/lit8 v32, v17, -0x2

    aget v32, p2, v32

    add-int/lit8 v33, v19, -0x2

    aget v33, p2, v33

    add-float v32, v32, v33

    add-int/lit8 v33, v17, -0x1

    aget v33, p2, v33

    add-int/lit8 v34, v19, -0x1

    aget v34, p2, v34

    add-float v33, v33, v34

    add-int/lit8 v34, v17, -0x2

    aget v34, p2, v34

    add-int/lit8 v35, v19, -0x2

    aget v35, p2, v35

    sub-float v34, v34, v35

    add-int/lit8 v35, v17, -0x1

    aget v35, p2, v35

    add-int/lit8 v36, v19, -0x1

    aget v36, p2, v36

    sub-float v35, v35, v36

    add-float v36, v20, v28

    aput v36, p2, v12

    add-int/lit8 v36, v12, 0x1

    sub-float v37, v21, v29

    aput v37, p2, v36

    add-int/lit8 v36, v12, -0x2

    add-float v37, v24, v32

    aput v37, p2, v36

    add-int/lit8 v12, v12, -0x1

    sub-float v36, v25, v33

    aput v36, p2, v12

    sub-float v12, v20, v28

    aput v12, p2, v17

    add-int/lit8 v12, v17, 0x1

    add-float v20, v21, v29

    aput v20, p2, v12

    add-int/lit8 v12, v17, -0x2

    sub-float v20, v24, v32

    aput v20, p2, v12

    add-int/lit8 v12, v17, -0x1

    add-float v17, v25, v33

    aput v17, p2, v12

    add-float v12, v22, v31

    add-float v17, v23, v30

    mul-float v20, v14, v12

    mul-float v21, v13, v17

    sub-float v20, v20, v21

    aput v20, p2, v18

    add-int/lit8 v20, v18, 0x1

    mul-float v14, v14, v17

    mul-float/2addr v12, v13

    add-float/2addr v12, v14

    aput v12, p2, v20

    add-float v12, v26, v35

    add-float v13, v27, v34

    add-int/lit8 v14, v18, -0x2

    mul-float v17, v4, v12

    mul-float v20, v5, v13

    sub-float v17, v17, v20

    aput v17, p2, v14

    add-int/lit8 v14, v18, -0x1

    mul-float/2addr v13, v4

    mul-float/2addr v12, v5

    add-float/2addr v12, v13

    aput v12, p2, v14

    sub-float v12, v22, v31

    sub-float v13, v23, v30

    mul-float v14, v16, v12

    mul-float v17, v15, v13

    add-float v14, v14, v17

    aput v14, p2, v19

    add-int/lit8 v14, v19, 0x1

    mul-float v13, v13, v16

    mul-float/2addr v12, v15

    sub-float v12, v13, v12

    aput v12, p2, v14

    sub-float v12, v26, v35

    sub-float v13, v27, v34

    add-int/lit8 v14, v19, -0x2

    mul-float v15, v2, v12

    mul-float v16, v3, v13

    add-float v15, v15, v16

    aput v15, p2, v14

    add-int/lit8 v14, v19, -0x1

    mul-float/2addr v13, v2

    mul-float/2addr v12, v3

    sub-float v12, v13, v12

    aput v12, p2, v14

    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_83

    :cond_324
    add-float v1, v5, v9

    mul-float/2addr v1, v10

    add-float/2addr v4, v9

    mul-float/2addr v4, v10

    sub-float/2addr v3, v9

    mul-float/2addr v3, v11

    sub-float/2addr v2, v9

    mul-float/2addr v2, v11

    add-int v5, v7, v8

    add-int v6, v5, v8

    add-int/2addr v8, v6

    add-int v7, v7, p3

    add-int v5, v5, p3

    add-int v6, v6, p3

    add-int v8, v8, p3

    add-int/lit8 v10, v7, -0x2

    aget v10, p2, v10

    add-int/lit8 v11, v6, -0x2

    aget v11, p2, v11

    add-float/2addr v10, v11

    add-int/lit8 v11, v7, -0x1

    aget v11, p2, v11

    neg-float v11, v11

    add-int/lit8 v12, v6, -0x1

    aget v12, p2, v12

    sub-float/2addr v11, v12

    add-int/lit8 v12, v7, -0x2

    aget v12, p2, v12

    add-int/lit8 v13, v6, -0x2

    aget v13, p2, v13

    sub-float/2addr v12, v13

    add-int/lit8 v13, v7, -0x1

    aget v13, p2, v13

    neg-float v13, v13

    add-int/lit8 v14, v6, -0x1

    aget v14, p2, v14

    add-float/2addr v13, v14

    add-int/lit8 v14, v5, -0x2

    aget v14, p2, v14

    add-int/lit8 v15, v8, -0x2

    aget v15, p2, v15

    add-float/2addr v14, v15

    add-int/lit8 v15, v5, -0x1

    aget v15, p2, v15

    add-int/lit8 v16, v8, -0x1

    aget v16, p2, v16

    add-float v15, v15, v16

    add-int/lit8 v16, v5, -0x2

    aget v16, p2, v16

    add-int/lit8 v17, v8, -0x2

    aget v17, p2, v17

    sub-float v16, v16, v17

    add-int/lit8 v17, v5, -0x1

    aget v17, p2, v17

    add-int/lit8 v18, v8, -0x1

    aget v18, p2, v18

    sub-float v17, v17, v18

    add-int/lit8 v18, v7, -0x2

    add-float v19, v10, v14

    aput v19, p2, v18

    add-int/lit8 v18, v7, -0x1

    sub-float v19, v11, v15

    aput v19, p2, v18

    add-int/lit8 v18, v5, -0x2

    sub-float/2addr v10, v14

    aput v10, p2, v18

    add-int/lit8 v10, v5, -0x1

    add-float/2addr v11, v15

    aput v11, p2, v10

    add-float v10, v12, v17

    add-float v11, v13, v16

    add-int/lit8 v14, v6, -0x2

    mul-float v15, v1, v10

    mul-float v18, v4, v11

    sub-float v15, v15, v18

    aput v15, p2, v14

    add-int/lit8 v14, v6, -0x1

    mul-float/2addr v11, v1

    mul-float/2addr v10, v4

    add-float/2addr v10, v11

    aput v10, p2, v14

    sub-float v10, v12, v17

    sub-float v11, v13, v16

    add-int/lit8 v12, v8, -0x2

    mul-float v13, v3, v10

    mul-float v14, v2, v11

    add-float/2addr v13, v14

    aput v13, p2, v12

    add-int/lit8 v12, v8, -0x1

    mul-float/2addr v11, v3

    mul-float/2addr v10, v2

    sub-float v10, v11, v10

    aput v10, p2, v12

    aget v10, p2, v7

    aget v11, p2, v6

    add-float/2addr v10, v11

    add-int/lit8 v11, v7, 0x1

    aget v11, p2, v11

    neg-float v11, v11

    add-int/lit8 v12, v6, 0x1

    aget v12, p2, v12

    sub-float/2addr v11, v12

    aget v12, p2, v7

    aget v13, p2, v6

    sub-float/2addr v12, v13

    add-int/lit8 v13, v7, 0x1

    aget v13, p2, v13

    neg-float v13, v13

    add-int/lit8 v14, v6, 0x1

    aget v14, p2, v14

    add-float/2addr v13, v14

    aget v14, p2, v5

    aget v15, p2, v8

    add-float/2addr v14, v15

    add-int/lit8 v15, v5, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v8, 0x1

    aget v16, p2, v16

    add-float v15, v15, v16

    aget v16, p2, v5

    aget v17, p2, v8

    sub-float v16, v16, v17

    add-int/lit8 v17, v5, 0x1

    aget v17, p2, v17

    add-int/lit8 v18, v8, 0x1

    aget v18, p2, v18

    sub-float v17, v17, v18

    add-float v18, v10, v14

    aput v18, p2, v7

    add-int/lit8 v18, v7, 0x1

    sub-float v19, v11, v15

    aput v19, p2, v18

    sub-float/2addr v10, v14

    aput v10, p2, v5

    add-int/lit8 v10, v5, 0x1

    add-float/2addr v11, v15

    aput v11, p2, v10

    add-float v10, v12, v17

    add-float v11, v13, v16

    sub-float v14, v10, v11

    mul-float/2addr v14, v9

    aput v14, p2, v6

    add-int/lit8 v14, v6, 0x1

    add-float/2addr v10, v11

    mul-float/2addr v10, v9

    aput v10, p2, v14

    sub-float v10, v12, v17

    sub-float v11, v13, v16

    neg-float v12, v9

    add-float v13, v10, v11

    mul-float/2addr v12, v13

    aput v12, p2, v8

    add-int/lit8 v12, v8, 0x1

    neg-float v9, v9

    sub-float v10, v11, v10

    mul-float/2addr v9, v10

    aput v9, p2, v12

    add-int/lit8 v9, v7, 0x2

    aget v9, p2, v9

    add-int/lit8 v10, v6, 0x2

    aget v10, p2, v10

    add-float/2addr v9, v10

    add-int/lit8 v10, v7, 0x3

    aget v10, p2, v10

    neg-float v10, v10

    add-int/lit8 v11, v6, 0x3

    aget v11, p2, v11

    sub-float/2addr v10, v11

    add-int/lit8 v11, v7, 0x2

    aget v11, p2, v11

    add-int/lit8 v12, v6, 0x2

    aget v12, p2, v12

    sub-float/2addr v11, v12

    add-int/lit8 v12, v7, 0x3

    aget v12, p2, v12

    neg-float v12, v12

    add-int/lit8 v13, v6, 0x3

    aget v13, p2, v13

    add-float/2addr v12, v13

    add-int/lit8 v13, v5, 0x2

    aget v13, p2, v13

    add-int/lit8 v14, v8, 0x2

    aget v14, p2, v14

    add-float/2addr v13, v14

    add-int/lit8 v14, v5, 0x3

    aget v14, p2, v14

    add-int/lit8 v15, v8, 0x3

    aget v15, p2, v15

    add-float/2addr v14, v15

    add-int/lit8 v15, v5, 0x2

    aget v15, p2, v15

    add-int/lit8 v16, v8, 0x2

    aget v16, p2, v16

    sub-float v15, v15, v16

    add-int/lit8 v16, v5, 0x3

    aget v16, p2, v16

    add-int/lit8 v17, v8, 0x3

    aget v17, p2, v17

    sub-float v16, v16, v17

    add-int/lit8 v17, v7, 0x2

    add-float v18, v9, v13

    aput v18, p2, v17

    add-int/lit8 v7, v7, 0x3

    sub-float v17, v10, v14

    aput v17, p2, v7

    add-int/lit8 v7, v5, 0x2

    sub-float/2addr v9, v13

    aput v9, p2, v7

    add-int/lit8 v5, v5, 0x3

    add-float v7, v10, v14

    aput v7, p2, v5

    add-float v5, v11, v16

    add-float v7, v12, v15

    add-int/lit8 v9, v6, 0x2

    mul-float v10, v4, v5

    mul-float v13, v1, v7

    sub-float/2addr v10, v13

    aput v10, p2, v9

    add-int/lit8 v6, v6, 0x3

    mul-float/2addr v4, v7

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    aput v1, p2, v6

    sub-float v1, v11, v16

    sub-float v4, v12, v15

    add-int/lit8 v5, v8, 0x2

    mul-float v6, v2, v1

    mul-float v7, v3, v4

    add-float/2addr v6, v7

    aput v6, p2, v5

    add-int/lit8 v5, v8, 0x3

    mul-float/2addr v2, v4

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    aput v1, p2, v5

    return-void
.end method

.method private cftbsub(I[FI[II[F)V
    .registers 14

    const/16 v1, 0x20

    const/16 v0, 0x8

    const/4 v6, 0x1

    if-le p1, v0, :cond_68

    if-le p1, v1, :cond_55

    shr-int/lit8 v0, p1, 0x2

    sub-int v5, p5, v0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftb1st(I[FI[FI)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v6, :cond_2e

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v0

    if-le p1, v0, :cond_2e

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftrec4_th(I[FII[F)V

    :goto_2a
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->bitrv2conj(I[I[FI)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    const/16 v0, 0x200

    if-le p1, v0, :cond_3c

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftrec4(I[FII[F)V

    goto :goto_2a

    :cond_3c
    const/16 v0, 0x80

    if-le p1, v0, :cond_4b

    move-object v0, p0

    move v1, p1

    move v2, v6

    move-object v3, p2

    move v4, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftleaf(II[FII[F)V

    goto :goto_2a

    :cond_4b
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftfx41(I[FII[F)V

    goto :goto_2a

    :cond_55
    if-ne p1, v1, :cond_60

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->bitrv216neg([FI)V

    goto :goto_2d

    :cond_60
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->bitrv208neg([FI)V

    goto :goto_2d

    :cond_68
    if-ne p1, v0, :cond_6e

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftb040([FI)V

    goto :goto_2d

    :cond_6e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftx020([FI)V

    goto :goto_2d
.end method

.method private cftf040([FI)V
    .registers 13

    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x4

    aget v1, p1, v1

    add-float/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p2, 0x5

    aget v2, p1, v2

    add-float/2addr v1, v2

    aget v2, p1, p2

    add-int/lit8 v3, p2, 0x4

    aget v3, p1, v3

    sub-float/2addr v2, v3

    add-int/lit8 v3, p2, 0x1

    aget v3, p1, v3

    add-int/lit8 v4, p2, 0x5

    aget v4, p1, v4

    sub-float/2addr v3, v4

    add-int/lit8 v4, p2, 0x2

    aget v4, p1, v4

    add-int/lit8 v5, p2, 0x6

    aget v5, p1, v5

    add-float/2addr v4, v5

    add-int/lit8 v5, p2, 0x3

    aget v5, p1, v5

    add-int/lit8 v6, p2, 0x7

    aget v6, p1, v6

    add-float/2addr v5, v6

    add-int/lit8 v6, p2, 0x2

    aget v6, p1, v6

    add-int/lit8 v7, p2, 0x6

    aget v7, p1, v7

    sub-float/2addr v6, v7

    add-int/lit8 v7, p2, 0x3

    aget v7, p1, v7

    add-int/lit8 v8, p2, 0x7

    aget v8, p1, v8

    sub-float/2addr v7, v8

    add-float v8, v0, v4

    aput v8, p1, p2

    add-int/lit8 v8, p2, 0x1

    add-float v9, v1, v5

    aput v9, p1, v8

    add-int/lit8 v8, p2, 0x2

    sub-float v9, v2, v7

    aput v9, p1, v8

    add-int/lit8 v8, p2, 0x3

    add-float v9, v3, v6

    aput v9, p1, v8

    add-int/lit8 v8, p2, 0x4

    sub-float/2addr v0, v4

    aput v0, p1, v8

    add-int/lit8 v0, p2, 0x5

    sub-float/2addr v1, v5

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x6

    add-float v1, v2, v7

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x7

    sub-float v1, v3, v6

    aput v1, p1, v0

    return-void
.end method

.method private cftf081([FI[FI)V
    .registers 24

    add-int/lit8 v0, p4, 0x1

    aget v0, p3, v0

    aget v1, p1, p2

    add-int/lit8 v2, p2, 0x8

    aget v2, p1, v2

    add-float/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    add-int/lit8 v3, p2, 0x9

    aget v3, p1, v3

    add-float/2addr v2, v3

    aget v3, p1, p2

    add-int/lit8 v4, p2, 0x8

    aget v4, p1, v4

    sub-float/2addr v3, v4

    add-int/lit8 v4, p2, 0x1

    aget v4, p1, v4

    add-int/lit8 v5, p2, 0x9

    aget v5, p1, v5

    sub-float/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    aget v5, p1, v5

    add-int/lit8 v6, p2, 0xc

    aget v6, p1, v6

    add-float/2addr v5, v6

    add-int/lit8 v6, p2, 0x5

    aget v6, p1, v6

    add-int/lit8 v7, p2, 0xd

    aget v7, p1, v7

    add-float/2addr v6, v7

    add-int/lit8 v7, p2, 0x4

    aget v7, p1, v7

    add-int/lit8 v8, p2, 0xc

    aget v8, p1, v8

    sub-float/2addr v7, v8

    add-int/lit8 v8, p2, 0x5

    aget v8, p1, v8

    add-int/lit8 v9, p2, 0xd

    aget v9, p1, v9

    sub-float/2addr v8, v9

    add-float v9, v1, v5

    add-float v10, v2, v6

    sub-float/2addr v1, v5

    sub-float/2addr v2, v6

    sub-float v5, v3, v8

    add-float v6, v4, v7

    add-float/2addr v3, v8

    sub-float/2addr v4, v7

    add-int/lit8 v7, p2, 0x2

    aget v7, p1, v7

    add-int/lit8 v8, p2, 0xa

    aget v8, p1, v8

    add-float/2addr v7, v8

    add-int/lit8 v8, p2, 0x3

    aget v8, p1, v8

    add-int/lit8 v11, p2, 0xb

    aget v11, p1, v11

    add-float/2addr v8, v11

    add-int/lit8 v11, p2, 0x2

    aget v11, p1, v11

    add-int/lit8 v12, p2, 0xa

    aget v12, p1, v12

    sub-float/2addr v11, v12

    add-int/lit8 v12, p2, 0x3

    aget v12, p1, v12

    add-int/lit8 v13, p2, 0xb

    aget v13, p1, v13

    sub-float/2addr v12, v13

    add-int/lit8 v13, p2, 0x6

    aget v13, p1, v13

    add-int/lit8 v14, p2, 0xe

    aget v14, p1, v14

    add-float/2addr v13, v14

    add-int/lit8 v14, p2, 0x7

    aget v14, p1, v14

    add-int/lit8 v15, p2, 0xf

    aget v15, p1, v15

    add-float/2addr v14, v15

    add-int/lit8 v15, p2, 0x6

    aget v15, p1, v15

    add-int/lit8 v16, p2, 0xe

    aget v16, p1, v16

    sub-float v15, v15, v16

    add-int/lit8 v16, p2, 0x7

    aget v16, p1, v16

    add-int/lit8 v17, p2, 0xf

    aget v17, p1, v17

    sub-float v16, v16, v17

    add-float v17, v7, v13

    add-float v18, v8, v14

    sub-float/2addr v7, v13

    sub-float/2addr v8, v14

    sub-float v13, v11, v16

    add-float v14, v12, v15

    add-float v11, v11, v16

    sub-float/2addr v12, v15

    sub-float v15, v13, v14

    mul-float/2addr v15, v0

    add-float/2addr v13, v14

    mul-float/2addr v13, v0

    sub-float v14, v11, v12

    mul-float/2addr v14, v0

    add-float/2addr v11, v12

    mul-float/2addr v0, v11

    add-int/lit8 v11, p2, 0x8

    add-float v12, v5, v15

    aput v12, p1, v11

    add-int/lit8 v11, p2, 0x9

    add-float v12, v6, v13

    aput v12, p1, v11

    add-int/lit8 v11, p2, 0xa

    sub-float/2addr v5, v15

    aput v5, p1, v11

    add-int/lit8 v5, p2, 0xb

    sub-float/2addr v6, v13

    aput v6, p1, v5

    add-int/lit8 v5, p2, 0xc

    sub-float v6, v3, v0

    aput v6, p1, v5

    add-int/lit8 v5, p2, 0xd

    add-float v6, v4, v14

    aput v6, p1, v5

    add-int/lit8 v5, p2, 0xe

    add-float/2addr v0, v3

    aput v0, p1, v5

    add-int/lit8 v0, p2, 0xf

    sub-float v3, v4, v14

    aput v3, p1, v0

    add-float v0, v9, v17

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    add-float v3, v10, v18

    aput v3, p1, v0

    add-int/lit8 v0, p2, 0x2

    sub-float v3, v9, v17

    aput v3, p1, v0

    add-int/lit8 v0, p2, 0x3

    sub-float v3, v10, v18

    aput v3, p1, v0

    add-int/lit8 v0, p2, 0x4

    sub-float v3, v1, v8

    aput v3, p1, v0

    add-int/lit8 v0, p2, 0x5

    add-float v3, v2, v7

    aput v3, p1, v0

    add-int/lit8 v0, p2, 0x6

    add-float/2addr v1, v8

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x7

    sub-float v1, v2, v7

    aput v1, p1, v0

    return-void
.end method

.method private cftf082([FI[FI)V
    .registers 27

    add-int/lit8 v0, p4, 0x1

    aget v0, p3, v0

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    add-int/lit8 v2, p4, 0x3

    aget v2, p3, v2

    aget v3, p1, p2

    add-int/lit8 v4, p2, 0x9

    aget v4, p1, v4

    sub-float/2addr v3, v4

    add-int/lit8 v4, p2, 0x1

    aget v4, p1, v4

    add-int/lit8 v5, p2, 0x8

    aget v5, p1, v5

    add-float/2addr v4, v5

    aget v5, p1, p2

    add-int/lit8 v6, p2, 0x9

    aget v6, p1, v6

    add-float/2addr v5, v6

    add-int/lit8 v6, p2, 0x1

    aget v6, p1, v6

    add-int/lit8 v7, p2, 0x8

    aget v7, p1, v7

    sub-float/2addr v6, v7

    add-int/lit8 v7, p2, 0x4

    aget v7, p1, v7

    add-int/lit8 v8, p2, 0xd

    aget v8, p1, v8

    sub-float/2addr v7, v8

    add-int/lit8 v8, p2, 0x5

    aget v8, p1, v8

    add-int/lit8 v9, p2, 0xc

    aget v9, p1, v9

    add-float/2addr v8, v9

    sub-float v9, v7, v8

    mul-float/2addr v9, v0

    add-float/2addr v7, v8

    mul-float/2addr v7, v0

    add-int/lit8 v8, p2, 0x4

    aget v8, p1, v8

    add-int/lit8 v10, p2, 0xd

    aget v10, p1, v10

    add-float/2addr v8, v10

    add-int/lit8 v10, p2, 0x5

    aget v10, p1, v10

    add-int/lit8 v11, p2, 0xc

    aget v11, p1, v11

    sub-float/2addr v10, v11

    sub-float v11, v8, v10

    mul-float/2addr v11, v0

    add-float/2addr v8, v10

    mul-float/2addr v0, v8

    add-int/lit8 v8, p2, 0x2

    aget v8, p1, v8

    add-int/lit8 v10, p2, 0xb

    aget v10, p1, v10

    sub-float/2addr v8, v10

    add-int/lit8 v10, p2, 0x3

    aget v10, p1, v10

    add-int/lit8 v12, p2, 0xa

    aget v12, p1, v12

    add-float/2addr v10, v12

    mul-float v12, v1, v8

    mul-float v13, v2, v10

    sub-float/2addr v12, v13

    mul-float/2addr v10, v1

    mul-float/2addr v8, v2

    add-float/2addr v8, v10

    add-int/lit8 v10, p2, 0x2

    aget v10, p1, v10

    add-int/lit8 v13, p2, 0xb

    aget v13, p1, v13

    add-float/2addr v10, v13

    add-int/lit8 v13, p2, 0x3

    aget v13, p1, v13

    add-int/lit8 v14, p2, 0xa

    aget v14, p1, v14

    sub-float/2addr v13, v14

    mul-float v14, v2, v10

    mul-float v15, v1, v13

    sub-float/2addr v14, v15

    mul-float/2addr v13, v2

    mul-float/2addr v10, v1

    add-float/2addr v10, v13

    add-int/lit8 v13, p2, 0x6

    aget v13, p1, v13

    add-int/lit8 v15, p2, 0xf

    aget v15, p1, v15

    sub-float/2addr v13, v15

    add-int/lit8 v15, p2, 0x7

    aget v15, p1, v15

    add-int/lit8 v16, p2, 0xe

    aget v16, p1, v16

    add-float v15, v15, v16

    mul-float v16, v2, v13

    mul-float v17, v1, v15

    sub-float v16, v16, v17

    mul-float/2addr v15, v2

    mul-float/2addr v13, v1

    add-float/2addr v13, v15

    add-int/lit8 v15, p2, 0x6

    aget v15, p1, v15

    add-int/lit8 v17, p2, 0xf

    aget v17, p1, v17

    add-float v15, v15, v17

    add-int/lit8 v17, p2, 0x7

    aget v17, p1, v17

    add-int/lit8 v18, p2, 0xe

    aget v18, p1, v18

    sub-float v17, v17, v18

    mul-float v18, v1, v15

    mul-float v19, v2, v17

    sub-float v18, v18, v19

    mul-float v1, v1, v17

    mul-float/2addr v2, v15

    add-float/2addr v1, v2

    add-float v2, v3, v9

    add-float v15, v4, v7

    add-float v17, v12, v16

    add-float v19, v8, v13

    add-float v20, v2, v17

    aput v20, p1, p2

    add-int/lit8 v20, p2, 0x1

    add-float v21, v15, v19

    aput v21, p1, v20

    add-int/lit8 v20, p2, 0x2

    sub-float v2, v2, v17

    aput v2, p1, v20

    add-int/lit8 v2, p2, 0x3

    sub-float v15, v15, v19

    aput v15, p1, v2

    sub-float v2, v3, v9

    sub-float v3, v4, v7

    sub-float v4, v12, v16

    sub-float v7, v8, v13

    add-int/lit8 v8, p2, 0x4

    sub-float v9, v2, v7

    aput v9, p1, v8

    add-int/lit8 v8, p2, 0x5

    add-float v9, v3, v4

    aput v9, p1, v8

    add-int/lit8 v8, p2, 0x6

    add-float/2addr v2, v7

    aput v2, p1, v8

    add-int/lit8 v2, p2, 0x7

    sub-float/2addr v3, v4

    aput v3, p1, v2

    sub-float v2, v5, v0

    add-float v3, v6, v11

    sub-float v4, v14, v18

    sub-float v7, v10, v1

    add-int/lit8 v8, p2, 0x8

    add-float v9, v2, v4

    aput v9, p1, v8

    add-int/lit8 v8, p2, 0x9

    add-float v9, v3, v7

    aput v9, p1, v8

    add-int/lit8 v8, p2, 0xa

    sub-float/2addr v2, v4

    aput v2, p1, v8

    add-int/lit8 v2, p2, 0xb

    sub-float/2addr v3, v7

    aput v3, p1, v2

    add-float/2addr v0, v5

    sub-float v2, v6, v11

    add-float v3, v14, v18

    add-float/2addr v1, v10

    add-int/lit8 v4, p2, 0xc

    sub-float v5, v0, v1

    aput v5, p1, v4

    add-int/lit8 v4, p2, 0xd

    add-float v5, v2, v3

    aput v5, p1, v4

    add-int/lit8 v4, p2, 0xe

    add-float/2addr v0, v1

    aput v0, p1, v4

    add-int/lit8 v0, p2, 0xf

    sub-float v1, v2, v3

    aput v1, p1, v0

    return-void
.end method

.method private cftf161([FI[FI)V
    .registers 44

    add-int/lit8 v0, p4, 0x1

    aget v0, p3, v0

    add-int/lit8 v1, p4, 0x2

    aget v1, p3, v1

    add-int/lit8 v2, p4, 0x3

    aget v2, p3, v2

    aget v3, p1, p2

    add-int/lit8 v4, p2, 0x10

    aget v4, p1, v4

    add-float/2addr v3, v4

    add-int/lit8 v4, p2, 0x1

    aget v4, p1, v4

    add-int/lit8 v5, p2, 0x11

    aget v5, p1, v5

    add-float/2addr v4, v5

    aget v5, p1, p2

    add-int/lit8 v6, p2, 0x10

    aget v6, p1, v6

    sub-float/2addr v5, v6

    add-int/lit8 v6, p2, 0x1

    aget v6, p1, v6

    add-int/lit8 v7, p2, 0x11

    aget v7, p1, v7

    sub-float/2addr v6, v7

    add-int/lit8 v7, p2, 0x8

    aget v7, p1, v7

    add-int/lit8 v8, p2, 0x18

    aget v8, p1, v8

    add-float/2addr v7, v8

    add-int/lit8 v8, p2, 0x9

    aget v8, p1, v8

    add-int/lit8 v9, p2, 0x19

    aget v9, p1, v9

    add-float/2addr v8, v9

    add-int/lit8 v9, p2, 0x8

    aget v9, p1, v9

    add-int/lit8 v10, p2, 0x18

    aget v10, p1, v10

    sub-float/2addr v9, v10

    add-int/lit8 v10, p2, 0x9

    aget v10, p1, v10

    add-int/lit8 v11, p2, 0x19

    aget v11, p1, v11

    sub-float/2addr v10, v11

    add-float v11, v3, v7

    add-float v12, v4, v8

    sub-float/2addr v3, v7

    sub-float/2addr v4, v8

    sub-float v7, v5, v10

    add-float v8, v6, v9

    add-float/2addr v5, v10

    sub-float/2addr v6, v9

    add-int/lit8 v9, p2, 0x2

    aget v9, p1, v9

    add-int/lit8 v10, p2, 0x12

    aget v10, p1, v10

    add-float/2addr v9, v10

    add-int/lit8 v10, p2, 0x3

    aget v10, p1, v10

    add-int/lit8 v13, p2, 0x13

    aget v13, p1, v13

    add-float/2addr v10, v13

    add-int/lit8 v13, p2, 0x2

    aget v13, p1, v13

    add-int/lit8 v14, p2, 0x12

    aget v14, p1, v14

    sub-float/2addr v13, v14

    add-int/lit8 v14, p2, 0x3

    aget v14, p1, v14

    add-int/lit8 v15, p2, 0x13

    aget v15, p1, v15

    sub-float/2addr v14, v15

    add-int/lit8 v15, p2, 0xa

    aget v15, p1, v15

    add-int/lit8 v16, p2, 0x1a

    aget v16, p1, v16

    add-float v15, v15, v16

    add-int/lit8 v16, p2, 0xb

    aget v16, p1, v16

    add-int/lit8 v17, p2, 0x1b

    aget v17, p1, v17

    add-float v16, v16, v17

    add-int/lit8 v17, p2, 0xa

    aget v17, p1, v17

    add-int/lit8 v18, p2, 0x1a

    aget v18, p1, v18

    sub-float v17, v17, v18

    add-int/lit8 v18, p2, 0xb

    aget v18, p1, v18

    add-int/lit8 v19, p2, 0x1b

    aget v19, p1, v19

    sub-float v18, v18, v19

    add-float v19, v9, v15

    add-float v20, v10, v16

    sub-float/2addr v9, v15

    sub-float v10, v10, v16

    sub-float v15, v13, v18

    add-float v16, v14, v17

    mul-float v21, v1, v15

    mul-float v22, v2, v16

    sub-float v21, v21, v22

    mul-float v16, v16, v1

    mul-float/2addr v15, v2

    add-float v15, v15, v16

    add-float v13, v13, v18

    sub-float v14, v14, v17

    mul-float v16, v2, v13

    mul-float v17, v1, v14

    sub-float v16, v16, v17

    mul-float/2addr v14, v2

    mul-float/2addr v13, v1

    add-float/2addr v13, v14

    add-int/lit8 v14, p2, 0x4

    aget v14, p1, v14

    add-int/lit8 v17, p2, 0x14

    aget v17, p1, v17

    add-float v14, v14, v17

    add-int/lit8 v17, p2, 0x5

    aget v17, p1, v17

    add-int/lit8 v18, p2, 0x15

    aget v18, p1, v18

    add-float v17, v17, v18

    add-int/lit8 v18, p2, 0x4

    aget v18, p1, v18

    add-int/lit8 v22, p2, 0x14

    aget v22, p1, v22

    sub-float v18, v18, v22

    add-int/lit8 v22, p2, 0x5

    aget v22, p1, v22

    add-int/lit8 v23, p2, 0x15

    aget v23, p1, v23

    sub-float v22, v22, v23

    add-int/lit8 v23, p2, 0xc

    aget v23, p1, v23

    add-int/lit8 v24, p2, 0x1c

    aget v24, p1, v24

    add-float v23, v23, v24

    add-int/lit8 v24, p2, 0xd

    aget v24, p1, v24

    add-int/lit8 v25, p2, 0x1d

    aget v25, p1, v25

    add-float v24, v24, v25

    add-int/lit8 v25, p2, 0xc

    aget v25, p1, v25

    add-int/lit8 v26, p2, 0x1c

    aget v26, p1, v26

    sub-float v25, v25, v26

    add-int/lit8 v26, p2, 0xd

    aget v26, p1, v26

    add-int/lit8 v27, p2, 0x1d

    aget v27, p1, v27

    sub-float v26, v26, v27

    add-float v27, v14, v23

    add-float v28, v17, v24

    sub-float v14, v14, v23

    sub-float v17, v17, v24

    sub-float v23, v18, v26

    add-float v24, v22, v25

    sub-float v29, v23, v24

    mul-float v29, v29, v0

    add-float v23, v23, v24

    mul-float v23, v23, v0

    add-float v18, v18, v26

    sub-float v22, v22, v25

    add-float v24, v18, v22

    mul-float v24, v24, v0

    sub-float v18, v22, v18

    mul-float v18, v18, v0

    add-int/lit8 v22, p2, 0x6

    aget v22, p1, v22

    add-int/lit8 v25, p2, 0x16

    aget v25, p1, v25

    add-float v22, v22, v25

    add-int/lit8 v25, p2, 0x7

    aget v25, p1, v25

    add-int/lit8 v26, p2, 0x17

    aget v26, p1, v26

    add-float v25, v25, v26

    add-int/lit8 v26, p2, 0x6

    aget v26, p1, v26

    add-int/lit8 v30, p2, 0x16

    aget v30, p1, v30

    sub-float v26, v26, v30

    add-int/lit8 v30, p2, 0x7

    aget v30, p1, v30

    add-int/lit8 v31, p2, 0x17

    aget v31, p1, v31

    sub-float v30, v30, v31

    add-int/lit8 v31, p2, 0xe

    aget v31, p1, v31

    add-int/lit8 v32, p2, 0x1e

    aget v32, p1, v32

    add-float v31, v31, v32

    add-int/lit8 v32, p2, 0xf

    aget v32, p1, v32

    add-int/lit8 v33, p2, 0x1f

    aget v33, p1, v33

    add-float v32, v32, v33

    add-int/lit8 v33, p2, 0xe

    aget v33, p1, v33

    add-int/lit8 v34, p2, 0x1e

    aget v34, p1, v34

    sub-float v33, v33, v34

    add-int/lit8 v34, p2, 0xf

    aget v34, p1, v34

    add-int/lit8 v35, p2, 0x1f

    aget v35, p1, v35

    sub-float v34, v34, v35

    add-float v35, v22, v31

    add-float v36, v25, v32

    sub-float v22, v22, v31

    sub-float v25, v25, v32

    sub-float v31, v26, v34

    add-float v32, v30, v33

    mul-float v37, v2, v31

    mul-float v38, v1, v32

    sub-float v37, v37, v38

    mul-float v32, v32, v2

    mul-float v31, v31, v1

    add-float v31, v31, v32

    add-float v26, v26, v34

    sub-float v30, v30, v33

    mul-float v32, v1, v26

    mul-float v33, v2, v30

    sub-float v32, v32, v33

    mul-float v1, v1, v30

    mul-float v2, v2, v26

    add-float/2addr v1, v2

    sub-float v2, v5, v24

    sub-float v26, v6, v18

    add-float v5, v5, v24

    add-float v6, v6, v18

    sub-float v18, v16, v32

    sub-float v24, v13, v1

    add-float v16, v16, v32

    add-float/2addr v1, v13

    add-int/lit8 v13, p2, 0x18

    add-float v30, v2, v18

    aput v30, p1, v13

    add-int/lit8 v13, p2, 0x19

    add-float v30, v26, v24

    aput v30, p1, v13

    add-int/lit8 v13, p2, 0x1a

    sub-float v2, v2, v18

    aput v2, p1, v13

    add-int/lit8 v2, p2, 0x1b

    sub-float v13, v26, v24

    aput v13, p1, v2

    add-int/lit8 v2, p2, 0x1c

    sub-float v13, v5, v1

    aput v13, p1, v2

    add-int/lit8 v2, p2, 0x1d

    add-float v13, v6, v16

    aput v13, p1, v2

    add-int/lit8 v2, p2, 0x1e

    add-float/2addr v1, v5

    aput v1, p1, v2

    add-int/lit8 v1, p2, 0x1f

    sub-float v2, v6, v16

    aput v2, p1, v1

    add-float v1, v7, v29

    add-float v2, v8, v23

    sub-float v5, v7, v29

    sub-float v6, v8, v23

    add-float v7, v21, v37

    add-float v8, v15, v31

    sub-float v13, v21, v37

    sub-float v15, v15, v31

    add-int/lit8 v16, p2, 0x10

    add-float v18, v1, v7

    aput v18, p1, v16

    add-int/lit8 v16, p2, 0x11

    add-float v18, v2, v8

    aput v18, p1, v16

    add-int/lit8 v16, p2, 0x12

    sub-float/2addr v1, v7

    aput v1, p1, v16

    add-int/lit8 v1, p2, 0x13

    sub-float/2addr v2, v8

    aput v2, p1, v1

    add-int/lit8 v1, p2, 0x14

    sub-float v2, v5, v15

    aput v2, p1, v1

    add-int/lit8 v1, p2, 0x15

    add-float v2, v6, v13

    aput v2, p1, v1

    add-int/lit8 v1, p2, 0x16

    add-float v2, v5, v15

    aput v2, p1, v1

    add-int/lit8 v1, p2, 0x17

    sub-float v2, v6, v13

    aput v2, p1, v1

    sub-float v1, v9, v25

    add-float v2, v10, v22

    sub-float v5, v1, v2

    mul-float/2addr v5, v0

    add-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float v2, v9, v25

    sub-float v6, v10, v22

    sub-float v7, v2, v6

    mul-float/2addr v7, v0

    add-float/2addr v2, v6

    mul-float/2addr v0, v2

    sub-float v2, v3, v17

    add-float v6, v4, v14

    add-float v3, v3, v17

    sub-float/2addr v4, v14

    add-int/lit8 v8, p2, 0x8

    add-float v9, v2, v5

    aput v9, p1, v8

    add-int/lit8 v8, p2, 0x9

    add-float v9, v6, v1

    aput v9, p1, v8

    add-int/lit8 v8, p2, 0xa

    sub-float/2addr v2, v5

    aput v2, p1, v8

    add-int/lit8 v2, p2, 0xb

    sub-float v1, v6, v1

    aput v1, p1, v2

    add-int/lit8 v1, p2, 0xc

    sub-float v2, v3, v0

    aput v2, p1, v1

    add-int/lit8 v1, p2, 0xd

    add-float v2, v4, v7

    aput v2, p1, v1

    add-int/lit8 v1, p2, 0xe

    add-float/2addr v0, v3

    aput v0, p1, v1

    add-int/lit8 v0, p2, 0xf

    sub-float v1, v4, v7

    aput v1, p1, v0

    add-float v0, v11, v27

    add-float v1, v12, v28

    sub-float v2, v11, v27

    sub-float v3, v12, v28

    add-float v4, v19, v35

    add-float v5, v20, v36

    sub-float v6, v19, v35

    sub-float v7, v20, v36

    add-float v8, v0, v4

    aput v8, p1, p2

    add-int/lit8 v8, p2, 0x1

    add-float v9, v1, v5

    aput v9, p1, v8

    add-int/lit8 v8, p2, 0x2

    sub-float/2addr v0, v4

    aput v0, p1, v8

    add-int/lit8 v0, p2, 0x3

    sub-float/2addr v1, v5

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x4

    sub-float v1, v2, v7

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x5

    add-float v1, v3, v6

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x6

    add-float v1, v2, v7

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x7

    sub-float v1, v3, v6

    aput v1, p1, v0

    return-void
.end method

.method private cftf162([FI[FI)V
    .registers 44

    add-int/lit8 v0, p4, 0x1

    aget v0, p3, v0

    add-int/lit8 v1, p4, 0x4

    aget v1, p3, v1

    add-int/lit8 v2, p4, 0x5

    aget v2, p3, v2

    add-int/lit8 v3, p4, 0x6

    aget v3, p3, v3

    add-int/lit8 v4, p4, 0x7

    aget v4, p3, v4

    neg-float v4, v4

    add-int/lit8 v5, p4, 0x8

    aget v5, p3, v5

    add-int/lit8 v6, p4, 0x9

    aget v6, p3, v6

    aget v7, p1, p2

    add-int/lit8 v8, p2, 0x11

    aget v8, p1, v8

    sub-float/2addr v7, v8

    add-int/lit8 v8, p2, 0x1

    aget v8, p1, v8

    add-int/lit8 v9, p2, 0x10

    aget v9, p1, v9

    add-float/2addr v8, v9

    add-int/lit8 v9, p2, 0x8

    aget v9, p1, v9

    add-int/lit8 v10, p2, 0x19

    aget v10, p1, v10

    sub-float/2addr v9, v10

    add-int/lit8 v10, p2, 0x9

    aget v10, p1, v10

    add-int/lit8 v11, p2, 0x18

    aget v11, p1, v11

    add-float/2addr v10, v11

    sub-float v11, v9, v10

    mul-float/2addr v11, v0

    add-float/2addr v9, v10

    mul-float/2addr v9, v0

    add-float v10, v7, v11

    add-float v12, v8, v9

    sub-float/2addr v7, v11

    sub-float/2addr v8, v9

    aget v9, p1, p2

    add-int/lit8 v11, p2, 0x11

    aget v11, p1, v11

    add-float/2addr v9, v11

    add-int/lit8 v11, p2, 0x1

    aget v11, p1, v11

    add-int/lit8 v13, p2, 0x10

    aget v13, p1, v13

    sub-float/2addr v11, v13

    add-int/lit8 v13, p2, 0x8

    aget v13, p1, v13

    add-int/lit8 v14, p2, 0x19

    aget v14, p1, v14

    add-float/2addr v13, v14

    add-int/lit8 v14, p2, 0x9

    aget v14, p1, v14

    add-int/lit8 v15, p2, 0x18

    aget v15, p1, v15

    sub-float/2addr v14, v15

    sub-float v15, v13, v14

    mul-float/2addr v15, v0

    add-float/2addr v13, v14

    mul-float/2addr v13, v0

    sub-float v14, v9, v13

    add-float v16, v11, v15

    add-float/2addr v9, v13

    sub-float/2addr v11, v15

    add-int/lit8 v13, p2, 0x2

    aget v13, p1, v13

    add-int/lit8 v15, p2, 0x13

    aget v15, p1, v15

    sub-float/2addr v13, v15

    add-int/lit8 v15, p2, 0x3

    aget v15, p1, v15

    add-int/lit8 v17, p2, 0x12

    aget v17, p1, v17

    add-float v15, v15, v17

    mul-float v17, v1, v13

    mul-float v18, v2, v15

    sub-float v17, v17, v18

    mul-float/2addr v15, v1

    mul-float/2addr v13, v2

    add-float/2addr v13, v15

    add-int/lit8 v15, p2, 0xa

    aget v15, p1, v15

    add-int/lit8 v18, p2, 0x1b

    aget v18, p1, v18

    sub-float v15, v15, v18

    add-int/lit8 v18, p2, 0xb

    aget v18, p1, v18

    add-int/lit8 v19, p2, 0x1a

    aget v19, p1, v19

    add-float v18, v18, v19

    mul-float v19, v4, v15

    mul-float v20, v3, v18

    sub-float v19, v19, v20

    mul-float v18, v18, v4

    mul-float/2addr v15, v3

    add-float v15, v15, v18

    add-float v18, v17, v19

    add-float v20, v13, v15

    sub-float v17, v17, v19

    sub-float/2addr v13, v15

    add-int/lit8 v15, p2, 0x2

    aget v15, p1, v15

    add-int/lit8 v19, p2, 0x13

    aget v19, p1, v19

    add-float v15, v15, v19

    add-int/lit8 v19, p2, 0x3

    aget v19, p1, v19

    add-int/lit8 v21, p2, 0x12

    aget v21, p1, v21

    sub-float v19, v19, v21

    mul-float v21, v3, v15

    mul-float v22, v4, v19

    sub-float v21, v21, v22

    mul-float v19, v19, v3

    mul-float/2addr v15, v4

    add-float v15, v15, v19

    add-int/lit8 v19, p2, 0xa

    aget v19, p1, v19

    add-int/lit8 v22, p2, 0x1b

    aget v22, p1, v22

    add-float v19, v19, v22

    add-int/lit8 v22, p2, 0xb

    aget v22, p1, v22

    add-int/lit8 v23, p2, 0x1a

    aget v23, p1, v23

    sub-float v22, v22, v23

    mul-float v23, v1, v19

    mul-float v24, v2, v22

    add-float v23, v23, v24

    mul-float v22, v22, v1

    mul-float v19, v19, v2

    sub-float v19, v22, v19

    sub-float v22, v21, v23

    sub-float v24, v15, v19

    add-float v21, v21, v23

    add-float v15, v15, v19

    add-int/lit8 v19, p2, 0x4

    aget v19, p1, v19

    add-int/lit8 v23, p2, 0x15

    aget v23, p1, v23

    sub-float v19, v19, v23

    add-int/lit8 v23, p2, 0x5

    aget v23, p1, v23

    add-int/lit8 v25, p2, 0x14

    aget v25, p1, v25

    add-float v23, v23, v25

    mul-float v25, v5, v19

    mul-float v26, v6, v23

    sub-float v25, v25, v26

    mul-float v23, v23, v5

    mul-float v19, v19, v6

    add-float v19, v19, v23

    add-int/lit8 v23, p2, 0xc

    aget v23, p1, v23

    add-int/lit8 v26, p2, 0x1d

    aget v26, p1, v26

    sub-float v23, v23, v26

    add-int/lit8 v26, p2, 0xd

    aget v26, p1, v26

    add-int/lit8 v27, p2, 0x1c

    aget v27, p1, v27

    add-float v26, v26, v27

    mul-float v27, v6, v23

    mul-float v28, v5, v26

    sub-float v27, v27, v28

    mul-float v26, v26, v6

    mul-float v23, v23, v5

    add-float v23, v23, v26

    add-float v26, v25, v27

    add-float v28, v19, v23

    sub-float v25, v25, v27

    sub-float v19, v19, v23

    add-int/lit8 v23, p2, 0x4

    aget v23, p1, v23

    add-int/lit8 v27, p2, 0x15

    aget v27, p1, v27

    add-float v23, v23, v27

    add-int/lit8 v27, p2, 0x5

    aget v27, p1, v27

    add-int/lit8 v29, p2, 0x14

    aget v29, p1, v29

    sub-float v27, v27, v29

    mul-float v29, v6, v23

    mul-float v30, v5, v27

    sub-float v29, v29, v30

    mul-float v27, v27, v6

    mul-float v23, v23, v5

    add-float v23, v23, v27

    add-int/lit8 v27, p2, 0xc

    aget v27, p1, v27

    add-int/lit8 v30, p2, 0x1d

    aget v30, p1, v30

    add-float v27, v27, v30

    add-int/lit8 v30, p2, 0xd

    aget v30, p1, v30

    add-int/lit8 v31, p2, 0x1c

    aget v31, p1, v31

    sub-float v30, v30, v31

    mul-float v31, v5, v27

    mul-float v32, v6, v30

    sub-float v31, v31, v32

    mul-float v5, v5, v30

    mul-float v6, v6, v27

    add-float/2addr v5, v6

    sub-float v6, v29, v31

    sub-float v27, v23, v5

    add-float v29, v29, v31

    add-float v5, v5, v23

    add-int/lit8 v23, p2, 0x6

    aget v23, p1, v23

    add-int/lit8 v30, p2, 0x17

    aget v30, p1, v30

    sub-float v23, v23, v30

    add-int/lit8 v30, p2, 0x7

    aget v30, p1, v30

    add-int/lit8 v31, p2, 0x16

    aget v31, p1, v31

    add-float v30, v30, v31

    mul-float v31, v3, v23

    mul-float v32, v4, v30

    sub-float v31, v31, v32

    mul-float v30, v30, v3

    mul-float v23, v23, v4

    add-float v23, v23, v30

    add-int/lit8 v30, p2, 0xe

    aget v30, p1, v30

    add-int/lit8 v32, p2, 0x1f

    aget v32, p1, v32

    sub-float v30, v30, v32

    add-int/lit8 v32, p2, 0xf

    aget v32, p1, v32

    add-int/lit8 v33, p2, 0x1e

    aget v33, p1, v33

    add-float v32, v32, v33

    mul-float v33, v2, v30

    mul-float v34, v1, v32

    sub-float v33, v33, v34

    mul-float v32, v32, v2

    mul-float v30, v30, v1

    add-float v30, v30, v32

    add-float v32, v31, v33

    add-float v34, v23, v30

    sub-float v31, v31, v33

    sub-float v23, v23, v30

    add-int/lit8 v30, p2, 0x6

    aget v30, p1, v30

    add-int/lit8 v33, p2, 0x17

    aget v33, p1, v33

    add-float v30, v30, v33

    add-int/lit8 v33, p2, 0x7

    aget v33, p1, v33

    add-int/lit8 v35, p2, 0x16

    aget v35, p1, v35

    sub-float v33, v33, v35

    mul-float v35, v2, v30

    mul-float v36, v1, v33

    add-float v35, v35, v36

    mul-float v2, v2, v33

    mul-float v1, v1, v30

    sub-float v1, v2, v1

    add-int/lit8 v2, p2, 0xe

    aget v2, p1, v2

    add-int/lit8 v30, p2, 0x1f

    aget v30, p1, v30

    add-float v2, v2, v30

    add-int/lit8 v30, p2, 0xf

    aget v30, p1, v30

    add-int/lit8 v33, p2, 0x1e

    aget v33, p1, v33

    sub-float v30, v30, v33

    mul-float v33, v4, v2

    mul-float v36, v3, v30

    sub-float v33, v33, v36

    mul-float v4, v4, v30

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    add-float v3, v35, v33

    add-float v4, v1, v2

    sub-float v30, v35, v33

    sub-float/2addr v1, v2

    add-float v2, v10, v26

    add-float v33, v12, v28

    add-float v35, v18, v32

    add-float v36, v20, v34

    add-float v37, v2, v35

    aput v37, p1, p2

    add-int/lit8 v37, p2, 0x1

    add-float v38, v33, v36

    aput v38, p1, v37

    add-int/lit8 v37, p2, 0x2

    sub-float v2, v2, v35

    aput v2, p1, v37

    add-int/lit8 v2, p2, 0x3

    sub-float v33, v33, v36

    aput v33, p1, v2

    sub-float v2, v10, v26

    sub-float v10, v12, v28

    sub-float v12, v18, v32

    sub-float v18, v20, v34

    add-int/lit8 v20, p2, 0x4

    sub-float v26, v2, v18

    aput v26, p1, v20

    add-int/lit8 v20, p2, 0x5

    add-float v26, v10, v12

    aput v26, p1, v20

    add-int/lit8 v20, p2, 0x6

    add-float v2, v2, v18

    aput v2, p1, v20

    add-int/lit8 v2, p2, 0x7

    sub-float/2addr v10, v12

    aput v10, p1, v2

    sub-float v2, v7, v19

    add-float v10, v8, v25

    sub-float v12, v17, v23

    add-float v18, v13, v31

    sub-float v20, v12, v18

    mul-float v20, v20, v0

    add-float v12, v12, v18

    mul-float/2addr v12, v0

    add-int/lit8 v18, p2, 0x8

    add-float v26, v2, v20

    aput v26, p1, v18

    add-int/lit8 v18, p2, 0x9

    add-float v26, v10, v12

    aput v26, p1, v18

    add-int/lit8 v18, p2, 0xa

    sub-float v2, v2, v20

    aput v2, p1, v18

    add-int/lit8 v2, p2, 0xb

    sub-float/2addr v10, v12

    aput v10, p1, v2

    add-float v2, v7, v19

    sub-float v7, v8, v25

    add-float v8, v17, v23

    sub-float v10, v13, v31

    sub-float v12, v8, v10

    mul-float/2addr v12, v0

    add-float/2addr v8, v10

    mul-float/2addr v8, v0

    add-int/lit8 v10, p2, 0xc

    sub-float v13, v2, v8

    aput v13, p1, v10

    add-int/lit8 v10, p2, 0xd

    add-float v13, v7, v12

    aput v13, p1, v10

    add-int/lit8 v10, p2, 0xe

    add-float/2addr v2, v8

    aput v2, p1, v10

    add-int/lit8 v2, p2, 0xf

    sub-float/2addr v7, v12

    aput v7, p1, v2

    add-float v2, v14, v6

    add-float v7, v16, v27

    sub-float v8, v22, v3

    sub-float v10, v24, v4

    add-int/lit8 v12, p2, 0x10

    add-float v13, v2, v8

    aput v13, p1, v12

    add-int/lit8 v12, p2, 0x11

    add-float v13, v7, v10

    aput v13, p1, v12

    add-int/lit8 v12, p2, 0x12

    sub-float/2addr v2, v8

    aput v2, p1, v12

    add-int/lit8 v2, p2, 0x13

    sub-float/2addr v7, v10

    aput v7, p1, v2

    sub-float v2, v14, v6

    sub-float v6, v16, v27

    add-float v3, v3, v22

    add-float v4, v4, v24

    add-int/lit8 v7, p2, 0x14

    sub-float v8, v2, v4

    aput v8, p1, v7

    add-int/lit8 v7, p2, 0x15

    add-float v8, v6, v3

    aput v8, p1, v7

    add-int/lit8 v7, p2, 0x16

    add-float/2addr v2, v4

    aput v2, p1, v7

    add-int/lit8 v2, p2, 0x17

    sub-float v3, v6, v3

    aput v3, p1, v2

    sub-float v2, v9, v5

    add-float v3, v11, v29

    add-float v4, v21, v1

    sub-float v6, v15, v30

    sub-float v7, v4, v6

    mul-float/2addr v7, v0

    add-float/2addr v4, v6

    mul-float/2addr v4, v0

    add-int/lit8 v6, p2, 0x18

    add-float v8, v2, v7

    aput v8, p1, v6

    add-int/lit8 v6, p2, 0x19

    add-float v8, v3, v4

    aput v8, p1, v6

    add-int/lit8 v6, p2, 0x1a

    sub-float/2addr v2, v7

    aput v2, p1, v6

    add-int/lit8 v2, p2, 0x1b

    sub-float/2addr v3, v4

    aput v3, p1, v2

    add-float v2, v9, v5

    sub-float v3, v11, v29

    sub-float v1, v21, v1

    add-float v4, v15, v30

    sub-float v5, v1, v4

    mul-float/2addr v5, v0

    add-float/2addr v1, v4

    mul-float/2addr v0, v1

    add-int/lit8 v1, p2, 0x1c

    sub-float v4, v2, v0

    aput v4, p1, v1

    add-int/lit8 v1, p2, 0x1d

    add-float v4, v3, v5

    aput v4, p1, v1

    add-int/lit8 v1, p2, 0x1e

    add-float/2addr v0, v2

    aput v0, p1, v1

    add-int/lit8 v0, p2, 0x1f

    sub-float v1, v3, v5

    aput v1, p1, v0

    return-void
.end method

.method private cftf1st(I[FI[FI)V
    .registers 44

    shr-int/lit8 v6, p1, 0x3

    mul-int/lit8 v7, v6, 0x2

    add-int v0, v7, v7

    add-int v1, v0, v7

    add-int v2, p3, v7

    add-int v0, v0, p3

    add-int v1, v1, p3

    aget v3, p2, p3

    aget v4, p2, v0

    add-float/2addr v3, v4

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    add-int/lit8 v5, v0, 0x1

    aget v5, p2, v5

    add-float/2addr v4, v5

    aget v5, p2, p3

    aget v8, p2, v0

    sub-float/2addr v5, v8

    add-int/lit8 v8, p3, 0x1

    aget v8, p2, v8

    add-int/lit8 v9, v0, 0x1

    aget v9, p2, v9

    sub-float/2addr v8, v9

    aget v9, p2, v2

    aget v10, p2, v1

    add-float/2addr v9, v10

    add-int/lit8 v10, v2, 0x1

    aget v10, p2, v10

    add-int/lit8 v11, v1, 0x1

    aget v11, p2, v11

    add-float/2addr v10, v11

    aget v11, p2, v2

    aget v12, p2, v1

    sub-float/2addr v11, v12

    add-int/lit8 v12, v2, 0x1

    aget v12, p2, v12

    add-int/lit8 v13, v1, 0x1

    aget v13, p2, v13

    sub-float/2addr v12, v13

    add-float v13, v3, v9

    aput v13, p2, p3

    add-int/lit8 v13, p3, 0x1

    add-float v14, v4, v10

    aput v14, p2, v13

    sub-float/2addr v3, v9

    aput v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    sub-float v3, v4, v10

    aput v3, p2, v2

    sub-float v2, v5, v12

    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    add-float v2, v8, v11

    aput v2, p2, v0

    add-float v0, v5, v12

    aput v0, p2, v1

    add-int/lit8 v0, v1, 0x1

    sub-float v1, v8, v11

    aput v1, p2, v0

    add-int/lit8 v0, p5, 0x1

    aget v8, p4, v0

    add-int/lit8 v0, p5, 0x2

    aget v9, p4, v0

    add-int/lit8 v0, p5, 0x3

    aget v10, p4, v0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x2

    :goto_81
    add-int/lit8 v11, v6, -0x2

    if-ge v0, v11, :cond_2f9

    add-int/lit8 v5, v5, 0x4

    add-int v11, p5, v5

    aget v12, p4, v11

    add-float/2addr v4, v12

    mul-float v12, v9, v4

    add-int/lit8 v4, v11, 0x1

    aget v4, p4, v4

    add-float/2addr v3, v4

    mul-float v13, v9, v3

    add-int/lit8 v3, v11, 0x2

    aget v3, p4, v3

    add-float/2addr v2, v3

    mul-float v14, v10, v2

    add-int/lit8 v2, v11, 0x3

    aget v2, p4, v2

    add-float/2addr v1, v2

    mul-float v15, v10, v1

    aget v4, p4, v11

    add-int/lit8 v1, v11, 0x1

    aget v3, p4, v1

    add-int/lit8 v1, v11, 0x2

    aget v2, p4, v1

    add-int/lit8 v1, v11, 0x3

    aget v1, p4, v1

    add-int v11, v0, v7

    add-int v16, v11, v7

    add-int v17, v16, v7

    add-int v11, v11, p3

    add-int v16, v16, p3

    add-int v17, v17, p3

    add-int v18, p3, v0

    aget v19, p2, v18

    aget v20, p2, v16

    add-float v19, v19, v20

    add-int/lit8 v20, v18, 0x1

    aget v20, p2, v20

    add-int/lit8 v21, v16, 0x1

    aget v21, p2, v21

    add-float v20, v20, v21

    aget v21, p2, v18

    aget v22, p2, v16

    sub-float v21, v21, v22

    add-int/lit8 v22, v18, 0x1

    aget v22, p2, v22

    add-int/lit8 v23, v16, 0x1

    aget v23, p2, v23

    sub-float v22, v22, v23

    add-int/lit8 v23, v18, 0x2

    aget v23, p2, v23

    add-int/lit8 v24, v16, 0x2

    aget v24, p2, v24

    add-float v23, v23, v24

    add-int/lit8 v24, v18, 0x3

    aget v24, p2, v24

    add-int/lit8 v25, v16, 0x3

    aget v25, p2, v25

    add-float v24, v24, v25

    add-int/lit8 v25, v18, 0x2

    aget v25, p2, v25

    add-int/lit8 v26, v16, 0x2

    aget v26, p2, v26

    sub-float v25, v25, v26

    add-int/lit8 v26, v18, 0x3

    aget v26, p2, v26

    add-int/lit8 v27, v16, 0x3

    aget v27, p2, v27

    sub-float v26, v26, v27

    aget v27, p2, v11

    aget v28, p2, v17

    add-float v27, v27, v28

    add-int/lit8 v28, v11, 0x1

    aget v28, p2, v28

    add-int/lit8 v29, v17, 0x1

    aget v29, p2, v29

    add-float v28, v28, v29

    aget v29, p2, v11

    aget v30, p2, v17

    sub-float v29, v29, v30

    add-int/lit8 v30, v11, 0x1

    aget v30, p2, v30

    add-int/lit8 v31, v17, 0x1

    aget v31, p2, v31

    sub-float v30, v30, v31

    add-int/lit8 v31, v11, 0x2

    aget v31, p2, v31

    add-int/lit8 v32, v17, 0x2

    aget v32, p2, v32

    add-float v31, v31, v32

    add-int/lit8 v32, v11, 0x3

    aget v32, p2, v32

    add-int/lit8 v33, v17, 0x3

    aget v33, p2, v33

    add-float v32, v32, v33

    add-int/lit8 v33, v11, 0x2

    aget v33, p2, v33

    add-int/lit8 v34, v17, 0x2

    aget v34, p2, v34

    sub-float v33, v33, v34

    add-int/lit8 v34, v11, 0x3

    aget v34, p2, v34

    add-int/lit8 v35, v17, 0x3

    aget v35, p2, v35

    sub-float v34, v34, v35

    add-float v35, v19, v27

    aput v35, p2, v18

    add-int/lit8 v35, v18, 0x1

    add-float v36, v20, v28

    aput v36, p2, v35

    add-int/lit8 v35, v18, 0x2

    add-float v36, v23, v31

    aput v36, p2, v35

    add-int/lit8 v18, v18, 0x3

    add-float v35, v24, v32

    aput v35, p2, v18

    sub-float v18, v19, v27

    aput v18, p2, v11

    add-int/lit8 v18, v11, 0x1

    sub-float v19, v20, v28

    aput v19, p2, v18

    add-int/lit8 v18, v11, 0x2

    sub-float v19, v23, v31

    aput v19, p2, v18

    add-int/lit8 v11, v11, 0x3

    sub-float v18, v24, v32

    aput v18, p2, v11

    sub-float v11, v21, v30

    add-float v18, v22, v29

    mul-float v19, v12, v11

    mul-float v20, v13, v18

    sub-float v19, v19, v20

    aput v19, p2, v16

    add-int/lit8 v19, v16, 0x1

    mul-float v18, v18, v12

    mul-float/2addr v11, v13

    add-float v11, v11, v18

    aput v11, p2, v19

    sub-float v11, v25, v34

    add-float v18, v26, v33

    add-int/lit8 v19, v16, 0x2

    mul-float v20, v4, v11

    mul-float v23, v3, v18

    sub-float v20, v20, v23

    aput v20, p2, v19

    add-int/lit8 v16, v16, 0x3

    mul-float v18, v18, v4

    mul-float/2addr v11, v3

    add-float v11, v11, v18

    aput v11, p2, v16

    add-float v11, v21, v30

    sub-float v16, v22, v29

    mul-float v18, v14, v11

    mul-float v19, v15, v16

    add-float v18, v18, v19

    aput v18, p2, v17

    add-int/lit8 v18, v17, 0x1

    mul-float v16, v16, v14

    mul-float/2addr v11, v15

    sub-float v11, v16, v11

    aput v11, p2, v18

    add-float v11, v25, v34

    sub-float v16, v26, v33

    add-int/lit8 v18, v17, 0x2

    mul-float v19, v2, v11

    mul-float v20, v1, v16

    add-float v19, v19, v20

    aput v19, p2, v18

    add-int/lit8 v17, v17, 0x3

    mul-float v16, v16, v2

    mul-float/2addr v11, v1

    sub-float v11, v16, v11

    aput v11, p2, v17

    sub-int v11, v7, v0

    add-int v16, v11, v7

    add-int v17, v16, v7

    add-int v18, v17, v7

    add-int v11, v11, p3

    add-int v16, v16, p3

    add-int v17, v17, p3

    add-int v19, p3, v18

    aget v20, p2, v11

    aget v21, p2, v17

    add-float v20, v20, v21

    add-int/lit8 v21, v11, 0x1

    aget v21, p2, v21

    add-int/lit8 v22, v17, 0x1

    aget v22, p2, v22

    add-float v21, v21, v22

    aget v22, p2, v11

    aget v23, p2, v17

    sub-float v22, v22, v23

    add-int/lit8 v23, v11, 0x1

    aget v23, p2, v23

    add-int/lit8 v24, v17, 0x1

    aget v24, p2, v24

    sub-float v23, v23, v24

    add-int/lit8 v24, v11, -0x2

    aget v24, p2, v24

    add-int/lit8 v25, v17, -0x2

    aget v25, p2, v25

    add-float v24, v24, v25

    add-int/lit8 v25, v11, -0x1

    aget v25, p2, v25

    add-int/lit8 v26, v17, -0x1

    aget v26, p2, v26

    add-float v25, v25, v26

    add-int/lit8 v26, v11, -0x2

    aget v26, p2, v26

    add-int/lit8 v27, v17, -0x2

    aget v27, p2, v27

    sub-float v26, v26, v27

    add-int/lit8 v27, v11, -0x1

    aget v27, p2, v27

    add-int/lit8 v28, v17, -0x1

    aget v28, p2, v28

    sub-float v27, v27, v28

    aget v28, p2, v16

    aget v29, p2, v19

    add-float v28, v28, v29

    add-int/lit8 v29, v16, 0x1

    aget v29, p2, v29

    add-int/lit8 v30, v19, 0x1

    aget v30, p2, v30

    add-float v29, v29, v30

    aget v30, p2, v16

    aget v31, p2, v19

    sub-float v30, v30, v31

    add-int/lit8 v31, v16, 0x1

    aget v31, p2, v31

    add-int/lit8 v32, v19, 0x1

    aget v32, p2, v32

    sub-float v31, v31, v32

    add-int/lit8 v32, v16, -0x2

    aget v32, p2, v32

    add-int/lit8 v33, v19, -0x2

    aget v33, p2, v33

    add-float v32, v32, v33

    add-int/lit8 v33, v16, -0x1

    aget v33, p2, v33

    add-int/lit8 v34, v19, -0x1

    aget v34, p2, v34

    add-float v33, v33, v34

    add-int/lit8 v34, v16, -0x2

    aget v34, p2, v34

    add-int/lit8 v35, v19, -0x2

    aget v35, p2, v35

    sub-float v34, v34, v35

    add-int/lit8 v35, v16, -0x1

    aget v35, p2, v35

    add-int/lit8 v36, v19, -0x1

    aget v36, p2, v36

    sub-float v35, v35, v36

    add-float v36, v20, v28

    aput v36, p2, v11

    add-int/lit8 v36, v11, 0x1

    add-float v37, v21, v29

    aput v37, p2, v36

    add-int/lit8 v36, v11, -0x2

    add-float v37, v24, v32

    aput v37, p2, v36

    add-int/lit8 v11, v11, -0x1

    add-float v36, v25, v33

    aput v36, p2, v11

    sub-float v11, v20, v28

    aput v11, p2, v16

    add-int/lit8 v11, v16, 0x1

    sub-float v20, v21, v29

    aput v20, p2, v11

    add-int/lit8 v11, v16, -0x2

    sub-float v20, v24, v32

    aput v20, p2, v11

    add-int/lit8 v11, v16, -0x1

    sub-float v16, v25, v33

    aput v16, p2, v11

    sub-float v11, v22, v31

    add-float v16, v23, v30

    mul-float v20, v13, v11

    mul-float v21, v12, v16

    sub-float v20, v20, v21

    aput v20, p2, v17

    add-int/lit8 v20, v17, 0x1

    mul-float v13, v13, v16

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    aput v11, p2, v20

    sub-float v11, v26, v35

    add-float v12, v27, v34

    add-int/lit8 v13, v17, -0x2

    mul-float v16, v3, v11

    mul-float v20, v4, v12

    sub-float v16, v16, v20

    aput v16, p2, v13

    add-int/lit8 v13, v17, -0x1

    mul-float/2addr v12, v3

    mul-float/2addr v11, v4

    add-float/2addr v11, v12

    aput v11, p2, v13

    add-float v11, v22, v31

    sub-float v12, v23, v30

    mul-float v13, v15, v11

    mul-float v16, v14, v12

    add-float v13, v13, v16

    aput v13, p2, v19

    add-int/lit8 v13, v19, 0x1

    mul-float/2addr v12, v15

    mul-float/2addr v11, v14

    sub-float v11, v12, v11

    aput v11, p2, v13

    add-float v11, v26, v35

    sub-float v12, v27, v34

    add-int v13, p3, v18

    add-int/lit8 v13, v13, -0x2

    mul-float v14, v1, v11

    mul-float v15, v2, v12

    add-float/2addr v14, v15

    aput v14, p2, v13

    add-int v13, p3, v18

    add-int/lit8 v13, v13, -0x1

    mul-float/2addr v12, v1

    mul-float/2addr v11, v2

    sub-float v11, v12, v11

    aput v11, p2, v13

    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_81

    :cond_2f9
    add-float v0, v4, v8

    mul-float/2addr v0, v9

    add-float/2addr v3, v8

    mul-float/2addr v3, v9

    sub-float/2addr v2, v8

    mul-float/2addr v2, v10

    sub-float/2addr v1, v8

    mul-float/2addr v1, v10

    add-int v4, v6, v7

    add-int v5, v4, v7

    add-int/2addr v7, v5

    add-int v6, v6, p3

    add-int v4, v4, p3

    add-int v5, v5, p3

    add-int v7, v7, p3

    add-int/lit8 v9, v6, -0x2

    aget v9, p2, v9

    add-int/lit8 v10, v5, -0x2

    aget v10, p2, v10

    add-float/2addr v9, v10

    add-int/lit8 v10, v6, -0x1

    aget v10, p2, v10

    add-int/lit8 v11, v5, -0x1

    aget v11, p2, v11

    add-float/2addr v10, v11

    add-int/lit8 v11, v6, -0x2

    aget v11, p2, v11

    add-int/lit8 v12, v5, -0x2

    aget v12, p2, v12

    sub-float/2addr v11, v12

    add-int/lit8 v12, v6, -0x1

    aget v12, p2, v12

    add-int/lit8 v13, v5, -0x1

    aget v13, p2, v13

    sub-float/2addr v12, v13

    add-int/lit8 v13, v4, -0x2

    aget v13, p2, v13

    add-int/lit8 v14, v7, -0x2

    aget v14, p2, v14

    add-float/2addr v13, v14

    add-int/lit8 v14, v4, -0x1

    aget v14, p2, v14

    add-int/lit8 v15, v7, -0x1

    aget v15, p2, v15

    add-float/2addr v14, v15

    add-int/lit8 v15, v4, -0x2

    aget v15, p2, v15

    add-int/lit8 v16, v7, -0x2

    aget v16, p2, v16

    sub-float v15, v15, v16

    add-int/lit8 v16, v4, -0x1

    aget v16, p2, v16

    add-int/lit8 v17, v7, -0x1

    aget v17, p2, v17

    sub-float v16, v16, v17

    add-int/lit8 v17, v6, -0x2

    add-float v18, v9, v13

    aput v18, p2, v17

    add-int/lit8 v17, v6, -0x1

    add-float v18, v10, v14

    aput v18, p2, v17

    add-int/lit8 v17, v4, -0x2

    sub-float/2addr v9, v13

    aput v9, p2, v17

    add-int/lit8 v9, v4, -0x1

    sub-float/2addr v10, v14

    aput v10, p2, v9

    sub-float v9, v11, v16

    add-float v10, v12, v15

    add-int/lit8 v13, v5, -0x2

    mul-float v14, v0, v9

    mul-float v17, v3, v10

    sub-float v14, v14, v17

    aput v14, p2, v13

    add-int/lit8 v13, v5, -0x1

    mul-float/2addr v10, v0

    mul-float/2addr v9, v3

    add-float/2addr v9, v10

    aput v9, p2, v13

    add-float v9, v11, v16

    sub-float v10, v12, v15

    add-int/lit8 v11, v7, -0x2

    mul-float v12, v2, v9

    mul-float v13, v1, v10

    add-float/2addr v12, v13

    aput v12, p2, v11

    add-int/lit8 v11, v7, -0x1

    mul-float/2addr v10, v2

    mul-float/2addr v9, v1

    sub-float v9, v10, v9

    aput v9, p2, v11

    aget v9, p2, v6

    aget v10, p2, v5

    add-float/2addr v9, v10

    add-int/lit8 v10, v6, 0x1

    aget v10, p2, v10

    add-int/lit8 v11, v5, 0x1

    aget v11, p2, v11

    add-float/2addr v10, v11

    aget v11, p2, v6

    aget v12, p2, v5

    sub-float/2addr v11, v12

    add-int/lit8 v12, v6, 0x1

    aget v12, p2, v12

    add-int/lit8 v13, v5, 0x1

    aget v13, p2, v13

    sub-float/2addr v12, v13

    aget v13, p2, v4

    aget v14, p2, v7

    add-float/2addr v13, v14

    add-int/lit8 v14, v4, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v7, 0x1

    aget v15, p2, v15

    add-float/2addr v14, v15

    aget v15, p2, v4

    aget v16, p2, v7

    sub-float v15, v15, v16

    add-int/lit8 v16, v4, 0x1

    aget v16, p2, v16

    add-int/lit8 v17, v7, 0x1

    aget v17, p2, v17

    sub-float v16, v16, v17

    add-float v17, v9, v13

    aput v17, p2, v6

    add-int/lit8 v17, v6, 0x1

    add-float v18, v10, v14

    aput v18, p2, v17

    sub-float/2addr v9, v13

    aput v9, p2, v4

    add-int/lit8 v9, v4, 0x1

    sub-float/2addr v10, v14

    aput v10, p2, v9

    sub-float v9, v11, v16

    add-float v10, v12, v15

    sub-float v13, v9, v10

    mul-float/2addr v13, v8

    aput v13, p2, v5

    add-int/lit8 v13, v5, 0x1

    add-float/2addr v9, v10

    mul-float/2addr v9, v8

    aput v9, p2, v13

    add-float v9, v11, v16

    sub-float v10, v12, v15

    neg-float v11, v8

    add-float v12, v9, v10

    mul-float/2addr v11, v12

    aput v11, p2, v7

    add-int/lit8 v11, v7, 0x1

    neg-float v8, v8

    sub-float v9, v10, v9

    mul-float/2addr v8, v9

    aput v8, p2, v11

    add-int/lit8 v8, v6, 0x2

    aget v8, p2, v8

    add-int/lit8 v9, v5, 0x2

    aget v9, p2, v9

    add-float/2addr v8, v9

    add-int/lit8 v9, v6, 0x3

    aget v9, p2, v9

    add-int/lit8 v10, v5, 0x3

    aget v10, p2, v10

    add-float/2addr v9, v10

    add-int/lit8 v10, v6, 0x2

    aget v10, p2, v10

    add-int/lit8 v11, v5, 0x2

    aget v11, p2, v11

    sub-float/2addr v10, v11

    add-int/lit8 v11, v6, 0x3

    aget v11, p2, v11

    add-int/lit8 v12, v5, 0x3

    aget v12, p2, v12

    sub-float/2addr v11, v12

    add-int/lit8 v12, v4, 0x2

    aget v12, p2, v12

    add-int/lit8 v13, v7, 0x2

    aget v13, p2, v13

    add-float/2addr v12, v13

    add-int/lit8 v13, v4, 0x3

    aget v13, p2, v13

    add-int/lit8 v14, v7, 0x3

    aget v14, p2, v14

    add-float/2addr v13, v14

    add-int/lit8 v14, v4, 0x2

    aget v14, p2, v14

    add-int/lit8 v15, v7, 0x2

    aget v15, p2, v15

    sub-float/2addr v14, v15

    add-int/lit8 v15, v4, 0x3

    aget v15, p2, v15

    add-int/lit8 v16, v7, 0x3

    aget v16, p2, v16

    sub-float v15, v15, v16

    add-int/lit8 v16, v6, 0x2

    add-float v17, v8, v12

    aput v17, p2, v16

    add-int/lit8 v6, v6, 0x3

    add-float v16, v9, v13

    aput v16, p2, v6

    add-int/lit8 v6, v4, 0x2

    sub-float/2addr v8, v12

    aput v8, p2, v6

    add-int/lit8 v4, v4, 0x3

    sub-float v6, v9, v13

    aput v6, p2, v4

    sub-float v4, v10, v15

    add-float v6, v11, v14

    add-int/lit8 v8, v5, 0x2

    mul-float v9, v3, v4

    mul-float v12, v0, v6

    sub-float/2addr v9, v12

    aput v9, p2, v8

    add-int/lit8 v5, v5, 0x3

    mul-float/2addr v3, v6

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    aput v0, p2, v5

    add-float v0, v10, v15

    sub-float v3, v11, v14

    add-int/lit8 v4, v7, 0x2

    mul-float v5, v1, v0

    mul-float v6, v2, v3

    add-float/2addr v5, v6

    aput v5, p2, v4

    add-int/lit8 v4, v7, 0x3

    mul-float/2addr v1, v3

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    aput v0, p2, v4

    return-void
.end method

.method private cftfsub(I[FI[II[F)V
    .registers 14

    const/16 v1, 0x20

    const/16 v0, 0x8

    const/4 v6, 0x1

    if-le p1, v0, :cond_68

    if-le p1, v1, :cond_55

    shr-int/lit8 v0, p1, 0x2

    sub-int v5, p5, v0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf1st(I[FI[FI)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v6, :cond_2e

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v0

    if-le p1, v0, :cond_2e

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftrec4_th(I[FII[F)V

    :goto_2a
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->bitrv2(I[I[FI)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    const/16 v0, 0x200

    if-le p1, v0, :cond_3c

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftrec4(I[FII[F)V

    goto :goto_2a

    :cond_3c
    const/16 v0, 0x80

    if-le p1, v0, :cond_4b

    move-object v0, p0

    move v1, p1

    move v2, v6

    move-object v3, p2

    move v4, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftleaf(II[FII[F)V

    goto :goto_2a

    :cond_4b
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftfx41(I[FII[F)V

    goto :goto_2a

    :cond_55
    if-ne p1, v1, :cond_60

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->bitrv216([FI)V

    goto :goto_2d

    :cond_60
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->bitrv208([FI)V

    goto :goto_2d

    :cond_68
    if-ne p1, v0, :cond_6e

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf040([FI)V

    goto :goto_2d

    :cond_6e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftx020([FI)V

    goto :goto_2d
.end method

.method private cftfx41(I[FII[F)V
    .registers 8

    const/16 v0, 0x80

    if-ne p1, v0, :cond_1f

    add-int/lit8 v0, p4, -0x8

    invoke-direct {p0, p2, p3, p5, v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    add-int/lit8 v0, p3, 0x20

    add-int/lit8 v1, p4, -0x20

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf162([FI[FI)V

    add-int/lit8 v0, p3, 0x40

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    add-int/lit8 v0, p3, 0x60

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    :goto_1e
    return-void

    :cond_1f
    add-int/lit8 v0, p4, -0x8

    invoke-direct {p0, p2, p3, p5, v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    add-int/lit8 v0, p3, 0x10

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf082([FI[FI)V

    add-int/lit8 v0, p3, 0x20

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    add-int/lit8 v0, p3, 0x30

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    goto :goto_1e
.end method

.method private cftleaf(II[FII[F)V
    .registers 14

    const/16 v1, 0x80

    const/16 v6, 0x40

    const/16 v0, 0x200

    if-ne p1, v0, :cond_b2

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl1(I[FI[FI)V

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p3, p4, p6, v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    add-int/lit8 v0, p4, 0x20

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf162([FI[FI)V

    add-int/lit8 v0, p4, 0x40

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    add-int/lit8 v0, p4, 0x60

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    add-int/lit16 v3, p4, 0x80

    add-int/lit8 v5, p5, -0x80

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl2(I[FI[FI)V

    add-int/lit16 v0, p4, 0x80

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    add-int/lit16 v0, p4, 0xa0

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf162([FI[FI)V

    add-int/lit16 v0, p4, 0xc0

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    add-int/lit16 v0, p4, 0xe0

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf162([FI[FI)V

    add-int/lit16 v3, p4, 0x100

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl1(I[FI[FI)V

    add-int/lit16 v0, p4, 0x100

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    add-int/lit16 v0, p4, 0x120

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf162([FI[FI)V

    add-int/lit16 v0, p4, 0x140

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    add-int/lit16 v0, p4, 0x160

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    if-eqz p2, :cond_a0

    add-int/lit16 v3, p4, 0x180

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl1(I[FI[FI)V

    add-int/lit16 v0, p4, 0x1e0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    :goto_8a
    add-int/lit16 v0, p4, 0x180

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    add-int/lit16 v0, p4, 0x1a0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf162([FI[FI)V

    add-int/lit16 v0, p4, 0x1c0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf161([FI[FI)V

    :goto_9f
    return-void

    :cond_a0
    add-int/lit16 v3, p4, 0x180

    add-int/lit8 v5, p5, -0x80

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl2(I[FI[FI)V

    add-int/lit16 v0, p4, 0x1e0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf162([FI[FI)V

    goto :goto_8a

    :cond_b2
    add-int/lit8 v5, p5, -0x20

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl1(I[FI[FI)V

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p3, p4, p6, v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    add-int/lit8 v0, p4, 0x10

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf082([FI[FI)V

    add-int/lit8 v0, p4, 0x20

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    add-int/lit8 v0, p4, 0x30

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    add-int/lit8 v3, p4, 0x40

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl2(I[FI[FI)V

    add-int/lit8 v0, p4, 0x40

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    add-int/lit8 v0, p4, 0x50

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf082([FI[FI)V

    add-int/lit8 v0, p4, 0x60

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    add-int/lit8 v0, p4, 0x70

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf082([FI[FI)V

    add-int/lit16 v3, p4, 0x80

    add-int/lit8 v5, p5, -0x20

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl1(I[FI[FI)V

    add-int/lit16 v0, p4, 0x80

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    add-int/lit16 v0, p4, 0x90

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf082([FI[FI)V

    add-int/lit16 v0, p4, 0xa0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    add-int/lit16 v0, p4, 0xb0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    if-eqz p2, :cond_14f

    add-int/lit16 v3, p4, 0xc0

    add-int/lit8 v5, p5, -0x20

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl1(I[FI[FI)V

    add-int/lit16 v0, p4, 0xf0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    :goto_138
    add-int/lit16 v0, p4, 0xc0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    add-int/lit16 v0, p4, 0xd0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf082([FI[FI)V

    add-int/lit16 v0, p4, 0xe0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf081([FI[FI)V

    goto/16 :goto_9f

    :cond_14f
    add-int/lit16 v3, p4, 0xc0

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl2(I[FI[FI)V

    add-int/lit16 v0, p4, 0xf0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftf082([FI[FI)V

    goto :goto_138
.end method

.method private cftmdl1(I[FI[FI)V
    .registers 28

    shr-int/lit8 v2, p1, 0x3

    mul-int/lit8 v3, v2, 0x2

    add-int v0, v3, v3

    add-int v1, v0, v3

    add-int v4, p3, v3

    add-int v0, v0, p3

    add-int v1, v1, p3

    aget v5, p2, p3

    aget v6, p2, v0

    add-float/2addr v5, v6

    add-int/lit8 v6, p3, 0x1

    aget v6, p2, v6

    add-int/lit8 v7, v0, 0x1

    aget v7, p2, v7

    add-float/2addr v6, v7

    aget v7, p2, p3

    aget v8, p2, v0

    sub-float/2addr v7, v8

    add-int/lit8 v8, p3, 0x1

    aget v8, p2, v8

    add-int/lit8 v9, v0, 0x1

    aget v9, p2, v9

    sub-float/2addr v8, v9

    aget v9, p2, v4

    aget v10, p2, v1

    add-float/2addr v9, v10

    add-int/lit8 v10, v4, 0x1

    aget v10, p2, v10

    add-int/lit8 v11, v1, 0x1

    aget v11, p2, v11

    add-float/2addr v10, v11

    aget v11, p2, v4

    aget v12, p2, v1

    sub-float/2addr v11, v12

    add-int/lit8 v12, v4, 0x1

    aget v12, p2, v12

    add-int/lit8 v13, v1, 0x1

    aget v13, p2, v13

    sub-float/2addr v12, v13

    add-float v13, v5, v9

    aput v13, p2, p3

    add-int/lit8 v13, p3, 0x1

    add-float v14, v6, v10

    aput v14, p2, v13

    sub-float/2addr v5, v9

    aput v5, p2, v4

    add-int/lit8 v4, v4, 0x1

    sub-float v5, v6, v10

    aput v5, p2, v4

    sub-float v4, v7, v12

    aput v4, p2, v0

    add-int/lit8 v0, v0, 0x1

    add-float v4, v8, v11

    aput v4, p2, v0

    add-float v0, v7, v12

    aput v0, p2, v1

    add-int/lit8 v0, v1, 0x1

    sub-float v1, v8, v11

    aput v1, p2, v0

    add-int/lit8 v0, p5, 0x1

    aget v4, p4, v0

    const/4 v1, 0x0

    const/4 v0, 0x2

    :goto_73
    if-ge v0, v2, :cond_196

    add-int/lit8 v1, v1, 0x4

    add-int v5, p5, v1

    aget v6, p4, v5

    add-int/lit8 v7, v5, 0x1

    aget v7, p4, v7

    add-int/lit8 v8, v5, 0x2

    aget v8, p4, v8

    add-int/lit8 v5, v5, 0x3

    aget v5, p4, v5

    add-int v9, v0, v3

    add-int v10, v9, v3

    add-int v11, v10, v3

    add-int v9, v9, p3

    add-int v10, v10, p3

    add-int v11, v11, p3

    add-int v12, p3, v0

    aget v13, p2, v12

    aget v14, p2, v10

    add-float/2addr v13, v14

    add-int/lit8 v14, v12, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v10, 0x1

    aget v15, p2, v15

    add-float/2addr v14, v15

    aget v15, p2, v12

    aget v16, p2, v10

    sub-float v15, v15, v16

    add-int/lit8 v16, v12, 0x1

    aget v16, p2, v16

    add-int/lit8 v17, v10, 0x1

    aget v17, p2, v17

    sub-float v16, v16, v17

    aget v17, p2, v9

    aget v18, p2, v11

    add-float v17, v17, v18

    add-int/lit8 v18, v9, 0x1

    aget v18, p2, v18

    add-int/lit8 v19, v11, 0x1

    aget v19, p2, v19

    add-float v18, v18, v19

    aget v19, p2, v9

    aget v20, p2, v11

    sub-float v19, v19, v20

    add-int/lit8 v20, v9, 0x1

    aget v20, p2, v20

    add-int/lit8 v21, v11, 0x1

    aget v21, p2, v21

    sub-float v20, v20, v21

    add-float v21, v13, v17

    aput v21, p2, v12

    add-int/lit8 v12, v12, 0x1

    add-float v21, v14, v18

    aput v21, p2, v12

    sub-float v12, v13, v17

    aput v12, p2, v9

    add-int/lit8 v9, v9, 0x1

    sub-float v12, v14, v18

    aput v12, p2, v9

    sub-float v9, v15, v20

    add-float v12, v16, v19

    mul-float v13, v6, v9

    mul-float v14, v7, v12

    sub-float/2addr v13, v14

    aput v13, p2, v10

    add-int/lit8 v10, v10, 0x1

    mul-float/2addr v12, v6

    mul-float/2addr v9, v7

    add-float/2addr v9, v12

    aput v9, p2, v10

    add-float v9, v15, v20

    sub-float v10, v16, v19

    mul-float v12, v8, v9

    mul-float v13, v5, v10

    add-float/2addr v12, v13

    aput v12, p2, v11

    add-int/lit8 v11, v11, 0x1

    mul-float/2addr v10, v8

    mul-float/2addr v9, v5

    sub-float v9, v10, v9

    aput v9, p2, v11

    sub-int v9, v3, v0

    add-int v10, v9, v3

    add-int v11, v10, v3

    add-int v12, v11, v3

    add-int v9, v9, p3

    add-int v10, v10, p3

    add-int v11, v11, p3

    add-int v12, v12, p3

    aget v13, p2, v9

    aget v14, p2, v11

    add-float/2addr v13, v14

    add-int/lit8 v14, v9, 0x1

    aget v14, p2, v14

    add-int/lit8 v15, v11, 0x1

    aget v15, p2, v15

    add-float/2addr v14, v15

    aget v15, p2, v9

    aget v16, p2, v11

    sub-float v15, v15, v16

    add-int/lit8 v16, v9, 0x1

    aget v16, p2, v16

    add-int/lit8 v17, v11, 0x1

    aget v17, p2, v17

    sub-float v16, v16, v17

    aget v17, p2, v10

    aget v18, p2, v12

    add-float v17, v17, v18

    add-int/lit8 v18, v10, 0x1

    aget v18, p2, v18

    add-int/lit8 v19, v12, 0x1

    aget v19, p2, v19

    add-float v18, v18, v19

    aget v19, p2, v10

    aget v20, p2, v12

    sub-float v19, v19, v20

    add-int/lit8 v20, v10, 0x1

    aget v20, p2, v20

    add-int/lit8 v21, v12, 0x1

    aget v21, p2, v21

    sub-float v20, v20, v21

    add-float v21, v13, v17

    aput v21, p2, v9

    add-int/lit8 v9, v9, 0x1

    add-float v21, v14, v18

    aput v21, p2, v9

    sub-float v9, v13, v17

    aput v9, p2, v10

    add-int/lit8 v9, v10, 0x1

    sub-float v10, v14, v18

    aput v10, p2, v9

    sub-float v9, v15, v20

    add-float v10, v16, v19

    mul-float v13, v7, v9

    mul-float v14, v6, v10

    sub-float/2addr v13, v14

    aput v13, p2, v11

    add-int/lit8 v11, v11, 0x1

    mul-float/2addr v7, v10

    mul-float/2addr v6, v9

    add-float/2addr v6, v7

    aput v6, p2, v11

    add-float v6, v15, v20

    sub-float v7, v16, v19

    mul-float v9, v5, v6

    mul-float v10, v8, v7

    add-float/2addr v9, v10

    aput v9, p2, v12

    add-int/lit8 v9, v12, 0x1

    mul-float/2addr v5, v7

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    aput v5, p2, v9

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_73

    :cond_196
    add-int v0, v2, v3

    add-int v1, v0, v3

    add-int/2addr v3, v1

    add-int v2, v2, p3

    add-int v0, v0, p3

    add-int v1, v1, p3

    add-int v3, v3, p3

    aget v5, p2, v2

    aget v6, p2, v1

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, p2, v6

    add-int/lit8 v7, v1, 0x1

    aget v7, p2, v7

    add-float/2addr v6, v7

    aget v7, p2, v2

    aget v8, p2, v1

    sub-float/2addr v7, v8

    add-int/lit8 v8, v2, 0x1

    aget v8, p2, v8

    add-int/lit8 v9, v1, 0x1

    aget v9, p2, v9

    sub-float/2addr v8, v9

    aget v9, p2, v0

    aget v10, p2, v3

    add-float/2addr v9, v10

    add-int/lit8 v10, v0, 0x1

    aget v10, p2, v10

    add-int/lit8 v11, v3, 0x1

    aget v11, p2, v11

    add-float/2addr v10, v11

    aget v11, p2, v0

    aget v12, p2, v3

    sub-float/2addr v11, v12

    add-int/lit8 v12, v0, 0x1

    aget v12, p2, v12

    add-int/lit8 v13, v3, 0x1

    aget v13, p2, v13

    sub-float/2addr v12, v13

    add-float v13, v5, v9

    aput v13, p2, v2

    add-int/lit8 v2, v2, 0x1

    add-float v13, v6, v10

    aput v13, p2, v2

    sub-float v2, v5, v9

    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    sub-float v2, v6, v10

    aput v2, p2, v0

    sub-float v0, v7, v12

    add-float v2, v8, v11

    sub-float v5, v0, v2

    mul-float/2addr v5, v4

    aput v5, p2, v1

    add-int/lit8 v1, v1, 0x1

    add-float/2addr v0, v2

    mul-float/2addr v0, v4

    aput v0, p2, v1

    add-float v0, v7, v12

    sub-float v1, v8, v11

    neg-float v2, v4

    add-float v5, v0, v1

    mul-float/2addr v2, v5

    aput v2, p2, v3

    add-int/lit8 v2, v3, 0x1

    neg-float v3, v4

    sub-float v0, v1, v0

    mul-float/2addr v0, v3

    aput v0, p2, v2

    return-void
.end method

.method private cftmdl2(I[FI[FI)V
    .registers 33

    shr-int/lit8 v3, p1, 0x3

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v0, p5, 0x1

    aget v0, p4, v0

    add-int v1, v4, v4

    add-int v2, v1, v4

    add-int v5, p3, v4

    add-int v1, v1, p3

    add-int v2, v2, p3

    aget v6, p2, p3

    add-int/lit8 v7, v1, 0x1

    aget v7, p2, v7

    sub-float/2addr v6, v7

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    aget v8, p2, v1

    add-float/2addr v7, v8

    aget v8, p2, p3

    add-int/lit8 v9, v1, 0x1

    aget v9, p2, v9

    add-float/2addr v8, v9

    add-int/lit8 v9, p3, 0x1

    aget v9, p2, v9

    aget v10, p2, v1

    sub-float/2addr v9, v10

    aget v10, p2, v5

    add-int/lit8 v11, v2, 0x1

    aget v11, p2, v11

    sub-float/2addr v10, v11

    add-int/lit8 v11, v5, 0x1

    aget v11, p2, v11

    aget v12, p2, v2

    add-float/2addr v11, v12

    aget v12, p2, v5

    add-int/lit8 v13, v2, 0x1

    aget v13, p2, v13

    add-float/2addr v12, v13

    add-int/lit8 v13, v5, 0x1

    aget v13, p2, v13

    aget v14, p2, v2

    sub-float/2addr v13, v14

    sub-float v14, v10, v11

    mul-float/2addr v14, v0

    add-float/2addr v10, v11

    mul-float/2addr v10, v0

    add-float v11, v6, v14

    aput v11, p2, p3

    add-int/lit8 v11, p3, 0x1

    add-float v15, v7, v10

    aput v15, p2, v11

    sub-float/2addr v6, v14

    aput v6, p2, v5

    add-int/lit8 v5, v5, 0x1

    sub-float v6, v7, v10

    aput v6, p2, v5

    sub-float v5, v12, v13

    mul-float/2addr v5, v0

    add-float v6, v13, v12

    mul-float/2addr v0, v6

    sub-float v6, v8, v0

    aput v6, p2, v1

    add-int/lit8 v1, v1, 0x1

    add-float v6, v9, v5

    aput v6, p2, v1

    add-float/2addr v0, v8

    aput v0, p2, v2

    add-int/lit8 v0, v2, 0x1

    sub-float v1, v9, v5

    aput v1, p2, v0

    const/4 v2, 0x0

    mul-int/lit8 v1, v4, 0x2

    const/4 v0, 0x2

    :goto_7f
    if-ge v0, v3, :cond_1f0

    add-int/lit8 v2, v2, 0x4

    add-int v5, p5, v2

    aget v6, p4, v5

    add-int/lit8 v7, v5, 0x1

    aget v7, p4, v7

    add-int/lit8 v8, v5, 0x2

    aget v8, p4, v8

    add-int/lit8 v5, v5, 0x3

    aget v5, p4, v5

    add-int/lit8 v1, v1, -0x4

    add-int v9, p5, v1

    aget v10, p4, v9

    add-int/lit8 v11, v9, 0x1

    aget v11, p4, v11

    add-int/lit8 v12, v9, 0x2

    aget v12, p4, v12

    add-int/lit8 v9, v9, 0x3

    aget v9, p4, v9

    add-int v13, v0, v4

    add-int v14, v13, v4

    add-int v15, v14, v4

    add-int v13, v13, p3

    add-int v14, v14, p3

    add-int v15, v15, p3

    add-int v16, p3, v0

    aget v17, p2, v16

    add-int/lit8 v18, v14, 0x1

    aget v18, p2, v18

    sub-float v17, v17, v18

    add-int/lit8 v18, v16, 0x1

    aget v18, p2, v18

    aget v19, p2, v14

    add-float v18, v18, v19

    aget v19, p2, v16

    add-int/lit8 v20, v14, 0x1

    aget v20, p2, v20

    add-float v19, v19, v20

    add-int/lit8 v20, v16, 0x1

    aget v20, p2, v20

    aget v21, p2, v14

    sub-float v20, v20, v21

    aget v21, p2, v13

    add-int/lit8 v22, v15, 0x1

    aget v22, p2, v22

    sub-float v21, v21, v22

    add-int/lit8 v22, v13, 0x1

    aget v22, p2, v22

    aget v23, p2, v15

    add-float v22, v22, v23

    aget v23, p2, v13

    add-int/lit8 v24, v15, 0x1

    aget v24, p2, v24

    add-float v23, v23, v24

    add-int/lit8 v24, v13, 0x1

    aget v24, p2, v24

    aget v25, p2, v15

    sub-float v24, v24, v25

    mul-float v25, v6, v17

    mul-float v26, v7, v18

    sub-float v25, v25, v26

    mul-float v18, v18, v6

    mul-float v17, v17, v7

    add-float v17, v17, v18

    mul-float v18, v11, v21

    mul-float v26, v10, v22

    sub-float v18, v18, v26

    mul-float v22, v22, v11

    mul-float v21, v21, v10

    add-float v21, v21, v22

    add-float v22, v25, v18

    aput v22, p2, v16

    add-int/lit8 v16, v16, 0x1

    add-float v22, v17, v21

    aput v22, p2, v16

    sub-float v16, v25, v18

    aput v16, p2, v13

    add-int/lit8 v13, v13, 0x1

    sub-float v16, v17, v21

    aput v16, p2, v13

    mul-float v13, v8, v19

    mul-float v16, v5, v20

    add-float v13, v13, v16

    mul-float v16, v8, v20

    mul-float v17, v5, v19

    sub-float v16, v16, v17

    mul-float v17, v9, v23

    mul-float v18, v12, v24

    add-float v17, v17, v18

    mul-float v18, v9, v24

    mul-float v19, v12, v23

    sub-float v18, v18, v19

    add-float v19, v13, v17

    aput v19, p2, v14

    add-int/lit8 v14, v14, 0x1

    add-float v19, v16, v18

    aput v19, p2, v14

    sub-float v13, v13, v17

    aput v13, p2, v15

    add-int/lit8 v13, v15, 0x1

    sub-float v14, v16, v18

    aput v14, p2, v13

    sub-int v13, v4, v0

    add-int v14, v13, v4

    add-int v15, v14, v4

    add-int v16, v15, v4

    add-int v13, v13, p3

    add-int v14, v14, p3

    add-int v15, v15, p3

    add-int v16, v16, p3

    aget v17, p2, v13

    add-int/lit8 v18, v15, 0x1

    aget v18, p2, v18

    sub-float v17, v17, v18

    add-int/lit8 v18, v13, 0x1

    aget v18, p2, v18

    aget v19, p2, v15

    add-float v18, v18, v19

    aget v19, p2, v13

    add-int/lit8 v20, v15, 0x1

    aget v20, p2, v20

    add-float v19, v19, v20

    add-int/lit8 v20, v13, 0x1

    aget v20, p2, v20

    aget v21, p2, v15

    sub-float v20, v20, v21

    aget v21, p2, v14

    add-int/lit8 v22, v16, 0x1

    aget v22, p2, v22

    sub-float v21, v21, v22

    add-int/lit8 v22, v14, 0x1

    aget v22, p2, v22

    aget v23, p2, v16

    add-float v22, v22, v23

    aget v23, p2, v14

    add-int/lit8 v24, v16, 0x1

    aget v24, p2, v24

    add-float v23, v23, v24

    add-int/lit8 v24, v14, 0x1

    aget v24, p2, v24

    aget v25, p2, v16

    sub-float v24, v24, v25

    mul-float v25, v10, v17

    mul-float v26, v11, v18

    sub-float v25, v25, v26

    mul-float v10, v10, v18

    mul-float v11, v11, v17

    add-float/2addr v10, v11

    mul-float v11, v7, v21

    mul-float v17, v6, v22

    sub-float v11, v11, v17

    mul-float v7, v7, v22

    mul-float v6, v6, v21

    add-float/2addr v6, v7

    add-float v7, v25, v11

    aput v7, p2, v13

    add-int/lit8 v7, v13, 0x1

    add-float v13, v10, v6

    aput v13, p2, v7

    sub-float v7, v25, v11

    aput v7, p2, v14

    add-int/lit8 v7, v14, 0x1

    sub-float v6, v10, v6

    aput v6, p2, v7

    mul-float v6, v12, v19

    mul-float v7, v9, v20

    add-float/2addr v6, v7

    mul-float v7, v12, v20

    mul-float v9, v9, v19

    sub-float/2addr v7, v9

    mul-float v9, v5, v23

    mul-float v10, v8, v24

    add-float/2addr v9, v10

    mul-float v5, v5, v24

    mul-float v8, v8, v23

    sub-float/2addr v5, v8

    add-float v8, v6, v9

    aput v8, p2, v15

    add-int/lit8 v8, v15, 0x1

    add-float v10, v7, v5

    aput v10, p2, v8

    sub-float/2addr v6, v9

    aput v6, p2, v16

    add-int/lit8 v6, v16, 0x1

    sub-float v5, v7, v5

    aput v5, p2, v6

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_7f

    :cond_1f0
    add-int v0, p5, v4

    aget v0, p4, v0

    add-int v1, p5, v4

    add-int/lit8 v1, v1, 0x1

    aget v1, p4, v1

    add-int v2, v3, v4

    add-int v5, v2, v4

    add-int/2addr v4, v5

    add-int v3, v3, p3

    add-int v2, v2, p3

    add-int v5, v5, p3

    add-int v4, v4, p3

    aget v6, p2, v3

    add-int/lit8 v7, v5, 0x1

    aget v7, p2, v7

    sub-float/2addr v6, v7

    add-int/lit8 v7, v3, 0x1

    aget v7, p2, v7

    aget v8, p2, v5

    add-float/2addr v7, v8

    aget v8, p2, v3

    add-int/lit8 v9, v5, 0x1

    aget v9, p2, v9

    add-float/2addr v8, v9

    add-int/lit8 v9, v3, 0x1

    aget v9, p2, v9

    aget v10, p2, v5

    sub-float/2addr v9, v10

    aget v10, p2, v2

    add-int/lit8 v11, v4, 0x1

    aget v11, p2, v11

    sub-float/2addr v10, v11

    add-int/lit8 v11, v2, 0x1

    aget v11, p2, v11

    aget v12, p2, v4

    add-float/2addr v11, v12

    aget v12, p2, v2

    add-int/lit8 v13, v4, 0x1

    aget v13, p2, v13

    add-float/2addr v12, v13

    add-int/lit8 v13, v2, 0x1

    aget v13, p2, v13

    aget v14, p2, v4

    sub-float/2addr v13, v14

    mul-float v14, v0, v6

    mul-float v15, v1, v7

    sub-float/2addr v14, v15

    mul-float/2addr v7, v0

    mul-float/2addr v6, v1

    add-float/2addr v6, v7

    mul-float v7, v1, v10

    mul-float v15, v0, v11

    sub-float/2addr v7, v15

    mul-float/2addr v11, v1

    mul-float/2addr v10, v0

    add-float/2addr v10, v11

    add-float v11, v14, v7

    aput v11, p2, v3

    add-int/lit8 v3, v3, 0x1

    add-float v11, v6, v10

    aput v11, p2, v3

    sub-float v3, v14, v7

    aput v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    sub-float v3, v6, v10

    aput v3, p2, v2

    mul-float v2, v1, v8

    mul-float v3, v0, v9

    sub-float/2addr v2, v3

    mul-float v3, v1, v9

    mul-float v6, v0, v8

    add-float/2addr v3, v6

    mul-float v6, v0, v12

    mul-float v7, v1, v13

    sub-float/2addr v6, v7

    mul-float/2addr v0, v13

    mul-float/2addr v1, v12

    add-float/2addr v0, v1

    sub-float v1, v2, v6

    aput v1, p2, v5

    add-int/lit8 v1, v5, 0x1

    sub-float v5, v3, v0

    aput v5, p2, v1

    add-float v1, v2, v6

    aput v1, p2, v4

    add-int/lit8 v1, v4, 0x1

    add-float/2addr v0, v3

    aput v0, p2, v1

    return-void
.end method

.method private cftrec4(I[FII[F)V
    .registers 18

    add-int v6, p3, p1

    move v1, p1

    :goto_3
    const/16 v0, 0x200

    if-le v1, v0, :cond_17

    shr-int/lit8 v1, v1, 0x2

    sub-int v3, v6, v1

    shr-int/lit8 v0, v1, 0x1

    sub-int v5, p4, v0

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl1(I[FI[FI)V

    goto :goto_3

    :cond_17
    const/4 v2, 0x1

    sub-int v4, v6, v1

    move-object v0, p0

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftleaf(II[FII[F)V

    const/4 v3, 0x0

    sub-int v11, p3, v1

    sub-int v2, p1, v1

    :goto_28
    if-lez v2, :cond_45

    add-int/lit8 v3, v3, 0x1

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cfttree(III[FII[F)I

    move-result v6

    add-int v8, v11, v2

    move-object v4, p0

    move v5, v1

    move-object v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftleaf(II[FII[F)V

    sub-int/2addr v2, v1

    goto :goto_28

    :cond_45
    return-void
.end method

.method private cftrec4_th(I[FII[F)V
    .registers 20

    const/4 v2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    shr-int/lit8 v3, p1, 0x1

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_4Threads()I

    move-result v4

    if-le p1, v4, :cond_54

    const/4 v0, 0x4

    const/4 v1, 0x1

    shr-int/lit8 v3, v3, 0x1

    move v8, v0

    move v9, v1

    :goto_11
    new-array v13, v8, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v11, v0

    move v12, v2

    :goto_16
    if-ge v11, v8, :cond_50

    mul-int v0, v11, v3

    add-int v2, p3, v0

    if-eq v11, v9, :cond_39

    add-int/lit8 v10, v12, 0x1

    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$3;

    move-object v1, p0

    move v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$3;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;III[F[FI)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v12

    move v0, v10

    :goto_34
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    move v12, v0

    goto :goto_16

    :cond_39
    add-int/lit8 v10, v12, 0x1

    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$4;

    move-object v1, p0

    move v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$4;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;III[F[FI)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v12

    move v0, v10

    goto :goto_34

    :cond_50
    invoke-static {v13}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    return-void

    :cond_54
    move v8, v0

    move v9, v1

    goto :goto_11
.end method

.method private cfttree(III[FII[F)I
    .registers 16

    sub-int v0, p5, p1

    and-int/lit8 v1, p3, 0x3

    if-eqz v1, :cond_26

    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_19

    add-int v3, v0, p2

    shr-int/lit8 v0, p1, 0x1

    sub-int v5, p6, v0

    move-object v0, p0

    move v1, p1

    move-object v2, p4

    move-object v4, p7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl1(I[FI[FI)V

    move v0, v6

    :goto_18
    return v0

    :cond_19
    add-int v3, v0, p2

    sub-int v5, p6, p1

    move-object v0, p0

    move v1, p1

    move-object v2, p4

    move-object v4, p7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl2(I[FI[FI)V

    move v0, v6

    goto :goto_18

    :cond_26
    move v1, p1

    :goto_27
    and-int/lit8 v0, p3, 0x3

    if-nez v0, :cond_30

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 p3, p3, 0x2

    goto :goto_27

    :cond_30
    and-int/lit8 v6, p3, 0x1

    add-int v7, p5, p2

    if-eqz v6, :cond_49

    :goto_36
    const/16 v0, 0x80

    if-le v1, v0, :cond_5a

    sub-int v3, v7, v1

    shr-int/lit8 v0, v1, 0x1

    sub-int v5, p6, v0

    move-object v0, p0

    move-object v2, p4

    move-object v4, p7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl1(I[FI[FI)V

    shr-int/lit8 v1, v1, 0x2

    goto :goto_36

    :cond_49
    :goto_49
    const/16 v0, 0x80

    if-le v1, v0, :cond_5a

    sub-int v3, v7, v1

    sub-int v5, p6, v1

    move-object v0, p0

    move-object v2, p4

    move-object v4, p7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftmdl2(I[FI[FI)V

    shr-int/lit8 v1, v1, 0x2

    goto :goto_49

    :cond_5a
    move v0, v6

    goto :goto_18
.end method

.method private cftx020([FI)V
    .registers 8

    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    sub-float/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    sub-float/2addr v1, v2

    aget v2, p1, p2

    add-int/lit8 v3, p2, 0x2

    aget v3, p1, v3

    add-float/2addr v2, v3

    aput v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget v3, p1, v2

    add-int/lit8 v4, p2, 0x3

    aget v4, p1, v4

    add-float/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v2, p2, 0x2

    aput v0, p1, v2

    add-int/lit8 v0, p2, 0x3

    aput v1, p1, v0

    return-void
.end method

.method private dctsub(I[FII[FI)V
    .registers 17

    shr-int/lit8 v2, p1, 0x1

    div-int v3, p4, p1

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_6
    if-ge v0, v2, :cond_35

    sub-int v4, p1, v0

    add-int/2addr v1, v3

    add-int v5, p6, v1

    add-int v6, p3, v0

    add-int/2addr v4, p3

    aget v7, p5, v5

    add-int v8, p6, p4

    sub-int/2addr v8, v1

    aget v8, p5, v8

    sub-float/2addr v7, v8

    aget v5, p5, v5

    add-int v8, p6, p4

    sub-int/2addr v8, v1

    aget v8, p5, v8

    add-float/2addr v5, v8

    aget v8, p2, v6

    mul-float/2addr v8, v5

    aget v9, p2, v4

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    aget v9, p2, v6

    mul-float/2addr v7, v9

    aget v9, p2, v4

    mul-float/2addr v5, v9

    add-float/2addr v5, v7

    aput v5, p2, v6

    aput v8, p2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_35
    add-int v0, p3, v2

    aget v1, p2, v0

    aget v2, p5, p6

    mul-float/2addr v1, v2

    aput v1, p2, v0

    return-void
.end method

.method private makect(I[FI)V
    .registers 15

    const/4 v0, 0x1

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->ip:[I

    aput p1, v1, v0

    if-le p1, v0, :cond_40

    shr-int/lit8 v1, p1, 0x1

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v4, v1

    div-double/2addr v2, v4

    int-to-double v4, v1

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, p2, p3

    add-int v4, p3, v1

    aget v5, p2, p3

    float-to-double v5, v5

    mul-double/2addr v5, v9

    double-to-float v5, v5

    aput v5, p2, v4

    :goto_24
    if-ge v0, v1, :cond_40

    int-to-double v4, v0

    mul-double/2addr v4, v2

    add-int v6, p3, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v9

    double-to-float v7, v7

    aput v7, p2, v6

    add-int v6, p3, p1

    sub-int/2addr v6, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v9

    double-to-float v4, v4

    aput v4, p2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_40
    return-void
.end method

.method private makect(I)[F
    .registers 11

    mul-int/lit8 v0, p1, 0x2

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    int-to-double v3, v0

    div-double/2addr v1, v3

    new-array v3, v0, [F

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v0

    const/4 v0, 0x1

    :goto_11
    if-ge v0, p1, :cond_2b

    mul-int/lit8 v4, v0, 0x2

    int-to-double v5, v0

    mul-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    neg-double v5, v5

    double-to-float v5, v5

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2b
    return-object v3
.end method

.method private makeipt(I)V
    .registers 9

    const/4 v1, 0x2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->ip:[I

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->ip:[I

    const/4 v2, 0x3

    const/16 v3, 0x10

    aput v3, v0, v2

    :goto_d
    const/16 v0, 0x20

    if-le p1, v0, :cond_32

    shl-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, v2, 0x3

    move v0, v1

    :goto_16
    if-ge v0, v2, :cond_2e

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->ip:[I

    aget v4, v4, v0

    shl-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->ip:[I

    add-int v6, v1, v0

    aput v4, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->ip:[I

    add-int v6, v2, v0

    add-int/2addr v4, v3

    aput v4, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2e
    shr-int/lit8 p1, p1, 0x2

    move v1, v2

    goto :goto_d

    :cond_32
    return-void
.end method

.method private makewt(I)V
    .registers 15

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->ip:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->ip:[I

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x2

    if-le p1, v0, :cond_12f

    shr-int/lit8 v1, p1, 0x1

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v4, v1

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v2

    int-to-double v6, v1

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v0, v7

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    const/4 v7, 0x1

    aput v6, v0, v7

    const/4 v0, 0x4

    if-ne v1, v0, :cond_79

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    const/4 v2, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v3, v7

    aput v3, v0, v2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    const/4 v2, 0x3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v0, v2

    :cond_44
    const/4 v0, 0x0

    move v12, v0

    move v0, v1

    move v1, v12

    :goto_48
    const/4 v2, 0x2

    if-le v0, v2, :cond_12f

    add-int v2, v1, v0

    shr-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v0, v2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v4, v2, 0x1

    aput v6, v0, v4

    const/4 v0, 0x4

    if-ne v3, v0, :cond_d3

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v4, v1, 0x4

    aget v0, v0, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v1, v1, 0x5

    aget v1, v4, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v5, v2, 0x2

    aput v0, v4, v5

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v4, v2, 0x3

    aput v1, v0, v4

    :cond_76
    move v1, v2

    move v0, v3

    goto :goto_48

    :cond_79
    const/4 v0, 0x4

    if-le v1, v0, :cond_44

    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->makeipt(I)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    div-double v4, v8, v4

    double-to-float v4, v4

    aput v4, v0, v7

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    const/4 v4, 0x3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v9, 0x4018000000000000L    # 6.0

    mul-double/2addr v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    double-to-float v5, v7

    aput v5, v0, v4

    const/4 v0, 0x4

    :goto_9e
    if-ge v0, v1, :cond_44

    int-to-double v4, v0

    mul-double/2addr v4, v2

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    mul-double/2addr v7, v4

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v9, v0

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v10, v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v9, v10

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v5, v0, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    aput v9, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v5, v0, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    neg-double v7, v7

    double-to-float v7, v7

    aput v7, v4, v5

    add-int/lit8 v0, v0, 0x4

    goto :goto_9e

    :cond_d3
    const/4 v0, 0x4

    if-le v3, v0, :cond_76

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v4, v1, 0x4

    aget v0, v0, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v5, v1, 0x6

    aget v4, v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v7, v2, 0x2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    float-to-double v10, v0

    div-double/2addr v8, v10

    double-to-float v0, v8

    aput v0, v5, v7

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v5, v2, 0x3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    float-to-double v9, v4

    div-double/2addr v7, v9

    double-to-float v4, v7

    aput v4, v0, v5

    const/4 v0, 0x4

    :goto_f9
    if-ge v0, v3, :cond_76

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v1

    add-int v5, v2, v0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    aget v7, v7, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v10, v4, 0x2

    aget v9, v9, v10

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v4, v4, 0x3

    aget v4, v10, v4

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    aput v7, v10, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v10, v5, 0x1

    aput v8, v7, v10

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v8, v5, 0x2

    aput v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v5, v5, 0x3

    aput v4, v7, v5

    add-int/lit8 v0, v0, 0x4

    goto :goto_f9

    :cond_12f
    return-void
.end method

.method private rftbsub(I[FII[FI)V
    .registers 19

    shr-int/lit8 v2, p1, 0x1

    mul-int/lit8 v0, p4, 0x2

    div-int v3, v0, v2

    const/4 v1, 0x0

    const/4 v0, 0x2

    :goto_8
    if-ge v0, v2, :cond_50

    sub-int v4, p1, v0

    add-int/2addr v1, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-int v7, p6, p4

    sub-int/2addr v7, v1

    aget v7, p5, v7

    float-to-double v7, v7

    sub-double/2addr v5, v7

    double-to-float v5, v5

    add-int v6, p6, v1

    aget v6, p5, v6

    add-int v7, p3, v0

    add-int/2addr v4, p3

    aget v8, p2, v7

    aget v9, p2, v4

    sub-float/2addr v8, v9

    add-int/lit8 v9, v7, 0x1

    aget v9, p2, v9

    add-int/lit8 v10, v4, 0x1

    aget v10, p2, v10

    add-float/2addr v9, v10

    mul-float v10, v5, v8

    mul-float v11, v6, v9

    add-float/2addr v10, v11

    mul-float/2addr v5, v9

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    aget v6, p2, v7

    sub-float/2addr v6, v10

    aput v6, p2, v7

    add-int/lit8 v6, v7, 0x1

    aget v7, p2, v6

    sub-float/2addr v7, v5

    aput v7, p2, v6

    aget v6, p2, v4

    add-float/2addr v6, v10

    aput v6, p2, v4

    add-int/lit8 v4, v4, 0x1

    aget v6, p2, v4

    sub-float v5, v6, v5

    aput v5, p2, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_8

    :cond_50
    return-void
.end method

.method private rftfsub(I[FII[FI)V
    .registers 19

    shr-int/lit8 v2, p1, 0x1

    mul-int/lit8 v0, p4, 0x2

    div-int v3, v0, v2

    const/4 v1, 0x0

    const/4 v0, 0x2

    :goto_8
    if-ge v0, v2, :cond_50

    sub-int v4, p1, v0

    add-int/2addr v1, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-int v7, p6, p4

    sub-int/2addr v7, v1

    aget v7, p5, v7

    float-to-double v7, v7

    sub-double/2addr v5, v7

    double-to-float v5, v5

    add-int v6, p6, v1

    aget v6, p5, v6

    add-int v7, p3, v0

    add-int/2addr v4, p3

    aget v8, p2, v7

    aget v9, p2, v4

    sub-float/2addr v8, v9

    add-int/lit8 v9, v7, 0x1

    aget v9, p2, v9

    add-int/lit8 v10, v4, 0x1

    aget v10, p2, v10

    add-float/2addr v9, v10

    mul-float v10, v5, v8

    mul-float v11, v6, v9

    sub-float/2addr v10, v11

    mul-float/2addr v5, v9

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    aget v6, p2, v7

    sub-float/2addr v6, v10

    aput v6, p2, v7

    add-int/lit8 v6, v7, 0x1

    aget v7, p2, v6

    sub-float/2addr v7, v5

    aput v7, p2, v6

    aget v6, p2, v4

    add-float/2addr v6, v10

    aput v6, p2, v4

    add-int/lit8 v4, v4, 0x1

    aget v6, p2, v4

    sub-float v5, v6, v5

    aput v5, p2, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_8

    :cond_50
    return-void
.end method

.method private scale(F[FI)V
    .registers 15

    const/4 v10, 0x1

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v10, :cond_3d

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_3d

    const/4 v7, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    div-int v8, v0, v7

    new-array v9, v7, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v6, v0

    :goto_18
    if-ge v6, v7, :cond_39

    mul-int v0, v6, v8

    add-int v2, p3, v0

    if-ne v6, v10, :cond_36

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    add-int v3, p3, v0

    :goto_24
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$5;

    move-object v1, p0

    move-object v4, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$5;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;II[FF)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_18

    :cond_36
    add-int v3, v2, v8

    goto :goto_24

    :cond_39
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_3c
    return-void

    :cond_3d
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    add-int/2addr v0, p3

    :goto_40
    if-ge p3, v0, :cond_3c

    aget v1, p2, p3

    mul-float/2addr v1, p1

    aput v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_40
.end method


# virtual methods
.method public forward([FIZ)V
    .registers 16

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->isPowerOfTwo:Z

    if-eqz v0, :cond_a7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    add-int/lit8 v0, v0, -0x2

    :goto_15
    const/4 v2, 0x2

    if-lt v0, v2, :cond_39

    add-int v2, p2, v0

    add-int/lit8 v2, v2, 0x1

    add-int v3, p2, v0

    aget v3, p1, v3

    add-int v4, p2, v0

    add-int/lit8 v4, v4, -0x1

    aget v4, p1, v4

    sub-float/2addr v3, v4

    aput v3, p1, v2

    add-int v2, p2, v0

    aget v3, p1, v2

    add-int v4, p2, v0

    add-int/lit8 v4, v4, -0x1

    aget v4, p1, v4

    add-float/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v0, v0, -0x2

    goto :goto_15

    :cond_39
    add-int/lit8 v0, p2, 0x1

    aget v2, p1, p2

    sub-float/2addr v2, v1

    aput v2, p1, v0

    aget v0, p1, p2

    add-float/2addr v0, v1

    aput v0, p1, p2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_93

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->rftbsub(I[FII[FI)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftbsub(I[FI[II[F)V

    :cond_66
    :goto_66
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->dctsub(I[FII[FI)V

    if-eqz p3, :cond_5

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->scale(F[FI)V

    aget v0, p1, p2

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    aput v0, p1, p2

    goto/16 :goto_5

    :cond_93
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_66

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftbsub(I[FI[II[F)V

    goto :goto_66

    :cond_a7
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    mul-int/lit8 v8, v0, 0x2

    new-array v6, v8, [F

    const/4 v0, 0x0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    invoke-static {p1, p2, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    :goto_b9
    if-ge v0, v8, :cond_c6

    sub-int v2, v8, v0

    add-int/lit8 v2, v2, -0x1

    aget v2, v6, v2

    aput v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    :cond_c6
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    invoke-virtual {v0, v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    const/4 v0, 0x1

    if-le v1, v0, :cond_11d

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_11d

    const/4 v9, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    div-int v10, v0, v9

    new-array v11, v9, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v7, v0

    :goto_df
    if-ge v7, v9, :cond_fd

    mul-int v2, v7, v10

    const/4 v0, 0x1

    if-ne v7, v0, :cond_fa

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    :goto_e8
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$1;

    move-object v1, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$1;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;III[F[F)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_df

    :cond_fa
    add-int v3, v2, v10

    goto :goto_e8

    :cond_fd
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_100
    if-eqz p3, :cond_5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-direct {p0, v0, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->scale(F[FI)V

    aget v0, p1, p2

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    aput v0, p1, p2

    goto/16 :goto_5

    :cond_11d
    const/4 v0, 0x0

    :goto_11e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    if-ge v0, v1, :cond_100

    mul-int/lit8 v1, v0, 0x2

    add-int v2, p2, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    aget v3, v3, v1

    aget v4, v6, v1

    mul-float/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    add-int/lit8 v1, v1, 0x1

    aget v1, v6, v1

    mul-float/2addr v1, v4

    sub-float v1, v3, v1

    aput v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_11e
.end method

.method public forward([FZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    return-void
.end method

.method public inverse([FIZ)V
    .registers 15

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->isPowerOfTwo:Z

    if-eqz v0, :cond_aa

    if-eqz p3, :cond_27

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->scale(F[FI)V

    aget v0, p1, p2

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    aput v0, p1, p2

    :cond_27
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->dctsub(I[FII[FI)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_8d

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftfsub(I[FI[II[F)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->rftfsub(I[FII[FI)V

    :cond_56
    :goto_56
    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    sub-float v1, v0, v1

    aget v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    add-float/2addr v0, v2

    aput v0, p1, p2

    const/4 v0, 0x2

    :goto_68
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    if-ge v0, v2, :cond_a1

    add-int v2, p2, v0

    add-int/lit8 v2, v2, -0x1

    add-int v3, p2, v0

    aget v3, p1, v3

    add-int v4, p2, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    sub-float/2addr v3, v4

    aput v3, p1, v2

    add-int v2, p2, v0

    aget v3, p1, v2

    add-int v4, p2, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, p1, v4

    add-float/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_68

    :cond_8d
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_56

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->cftfsub(I[FI[II[F)V

    goto :goto_56

    :cond_a1
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    aput v1, p1, v0

    goto/16 :goto_5

    :cond_aa
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    mul-int/lit8 v0, v0, 0x2

    if-eqz p3, :cond_c6

    int-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {p0, v1, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->scale(F[FI)V

    aget v1, p1, p2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    aput v1, p1, p2

    :cond_c6
    new-array v6, v0, [F

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_10f

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_10f

    const/4 v8, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    div-int v9, v0, v8

    new-array v10, v8, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v7, v0

    :goto_e0
    if-ge v7, v8, :cond_fe

    mul-int v2, v7, v9

    const/4 v0, 0x1

    if-ne v7, v0, :cond_fb

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    :goto_e9
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;-><init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;II[FI[F)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_e0

    :cond_fb
    add-int v3, v2, v9

    goto :goto_e9

    :cond_fe
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_101
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->fft:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse([FZ)V

    const/4 v0, 0x0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    invoke-static {v6, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5

    :cond_10f
    const/4 v0, 0x0

    :goto_110
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->n:I

    if-ge v0, v1, :cond_101

    mul-int/lit8 v1, v0, 0x2

    add-int v2, p2, v0

    aget v2, p1, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    aget v3, v3, v1

    mul-float/2addr v3, v2

    aput v3, v6, v1

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->w:[F

    add-int/lit8 v1, v1, 0x1

    aget v1, v4, v1

    neg-float v1, v1

    mul-float/2addr v1, v2

    aput v1, v6, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_110
.end method

.method public inverse([FZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    return-void
.end method
