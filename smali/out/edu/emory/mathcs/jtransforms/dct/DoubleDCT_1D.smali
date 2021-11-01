.class public Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;
.super Ljava/lang/Object;


# static fields
.field private static final PI:D = 3.141592653589793


# instance fields
.field private fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

.field private ip:[I

.field private isPowerOfTwo:Z

.field private n:I

.field private nc:I

.field private nw:I

.field private w:[D


# direct methods
.method public constructor <init>(I)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->isPowerOfTwo:Z

    if-ge p1, v4, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iput p1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    invoke-static {p1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-eqz v0, :cond_70

    iput-boolean v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->isPowerOfTwo:Z

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

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->ip:[I

    mul-int/lit8 v0, p1, 0x5

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->ip:[I

    aget v0, v0, v5

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nw:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nw:I

    shl-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_5a

    shr-int/lit8 v0, p1, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nw:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nw:I

    invoke-direct {p0, v0}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->makewt(I)V

    :cond_5a
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->ip:[I

    aget v0, v0, v4

    iput v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nc:I

    if-le p1, v0, :cond_6f

    iput p1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nc:I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nw:I

    invoke-direct {p0, v0, v1, v2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->makect(I[DI)V

    :cond_6f
    :goto_6f
    return-void

    :cond_70
    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->makect(I)[D

    move-result-object v0

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    mul-int/lit8 v1, p1, 0x2

    invoke-direct {v0, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;-><init>(I)V

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    goto :goto_6f
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;)[D
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    return-object v0
.end method

.method static synthetic access$100(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;I[DI[DI)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl1(I[DI[DI)V

    return-void
.end method

.method static synthetic access$200(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;II[DII[D)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftleaf(II[DII[D)V

    return-void
.end method

.method static synthetic access$300(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;III[DII[D)I
    .registers 9

    invoke-direct/range {p0 .. p7}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cfttree(III[DII[D)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;I[DI[DI)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl2(I[DI[DI)V

    return-void
.end method

.method private bitrv2(I[I[DI)V
    .registers 22

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

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v6, v3

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v3

    add-int/lit8 v6, v6, -0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v5, v5, p4

    add-int v6, v6, p4

    aget-wide v7, p3, v5

    add-int/lit8 v9, v5, 0x1

    aget-wide v9, p3, v9

    aget-wide v11, p3, v6

    add-int/lit8 v13, v6, 0x1

    aget-wide v13, p3, v13

    aput-wide v11, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput-wide v13, p3, v5

    aput-wide v7, p3, v6

    add-int/lit8 v5, v6, 0x1

    aput-wide v9, p3, v5

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

    aget-wide v8, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget-wide v10, p3, v10

    aget-wide v12, p3, v7

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, p3, v14

    aput-wide v12, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput-wide v14, p3, v6

    aput-wide v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput-wide v10, p3, v6

    add-int/2addr v5, v4

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v0, v6

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget-wide v8, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget-wide v10, p3, v10

    aget-wide v12, p3, v7

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, p3, v14

    aput-wide v12, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput-wide v14, p3, v6

    aput-wide v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput-wide v10, p3, v6

    add-int/2addr v5, v4

    sub-int/2addr v0, v4

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget-wide v8, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget-wide v10, p3, v10

    aget-wide v12, p3, v7

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, p3, v14

    aput-wide v12, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput-wide v14, p3, v6

    aput-wide v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput-wide v10, p3, v6

    add-int/lit8 v5, v5, -0x2

    sub-int/2addr v0, v3

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget-wide v8, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget-wide v10, p3, v10

    aget-wide v12, p3, v7

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, p3, v14

    aput-wide v12, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput-wide v14, p3, v6

    aput-wide v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput-wide v10, p3, v6

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v0, v6

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget-wide v8, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget-wide v10, p3, v10

    aget-wide v12, p3, v7

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, p3, v14

    aput-wide v12, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput-wide v14, p3, v6

    aput-wide v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput-wide v10, p3, v6

    sub-int v6, v3, v4

    sub-int/2addr v5, v6

    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, -0x2

    add-int/2addr v0, v6

    add-int v5, v5, p4

    add-int v0, v0, p4

    aget-wide v6, p3, v5

    add-int/lit8 v8, v5, 0x1

    aget-wide v8, p3, v8

    aget-wide v10, p3, v0

    add-int/lit8 v12, v0, 0x1

    aget-wide v12, p3, v12

    aput-wide v10, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput-wide v12, p3, v5

    aput-wide v6, p3, v0

    add-int/lit8 v0, v0, 0x1

    aput-wide v8, p3, v0

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

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v6, v3

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v3

    add-int/lit8 v6, v6, -0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v5, v5, p4

    add-int v6, v6, p4

    aget-wide v7, p3, v5

    add-int/lit8 v9, v5, 0x1

    aget-wide v9, p3, v9

    aget-wide v11, p3, v6

    add-int/lit8 v13, v6, 0x1

    aget-wide v13, p3, v13

    aput-wide v11, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput-wide v13, p3, v5

    aput-wide v7, p3, v6

    add-int/lit8 v5, v6, 0x1

    aput-wide v9, p3, v5

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

    aget-wide v8, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget-wide v10, p3, v10

    aget-wide v12, p3, v7

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, p3, v14

    aput-wide v12, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput-wide v14, p3, v6

    aput-wide v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput-wide v10, p3, v6

    add-int/2addr v5, v4

    add-int/2addr v0, v4

    add-int v5, v5, p4

    add-int v0, v0, p4

    aget-wide v6, p3, v5

    add-int/lit8 v8, v5, 0x1

    aget-wide v8, p3, v8

    aget-wide v10, p3, v0

    add-int/lit8 v12, v0, 0x1

    aget-wide v12, p3, v12

    aput-wide v10, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput-wide v12, p3, v5

    aput-wide v6, p3, v0

    add-int/lit8 v0, v0, 0x1

    aput-wide v8, p3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2f6

    :cond_447
    return-void
.end method

.method private bitrv208([DI)V
    .registers 20

    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x6

    aget-wide v4, p1, v4

    add-int/lit8 v6, p2, 0x7

    aget-wide v6, p1, v6

    add-int/lit8 v8, p2, 0x8

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x9

    aget-wide v10, p1, v10

    add-int/lit8 v12, p2, 0xc

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0xd

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0x2

    aput-wide v8, p1, v16

    add-int/lit8 v8, p2, 0x3

    aput-wide v10, p1, v8

    add-int/lit8 v8, p2, 0x6

    aput-wide v12, p1, v8

    add-int/lit8 v8, p2, 0x7

    aput-wide v14, p1, v8

    add-int/lit8 v8, p2, 0x8

    aput-wide v0, p1, v8

    add-int/lit8 v0, p2, 0x9

    aput-wide v2, p1, v0

    add-int/lit8 v0, p2, 0xc

    aput-wide v4, p1, v0

    add-int/lit8 v0, p2, 0xd

    aput-wide v6, p1, v0

    return-void
.end method

.method private bitrv208neg([DI)V
    .registers 32

    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    add-int/lit8 v6, p2, 0x5

    aget-wide v6, p1, v6

    add-int/lit8 v8, p2, 0x6

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x7

    aget-wide v10, p1, v10

    add-int/lit8 v12, p2, 0x8

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x9

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0xa

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0xb

    aget-wide v18, p1, v18

    add-int/lit8 v20, p2, 0xc

    aget-wide v20, p1, v20

    add-int/lit8 v22, p2, 0xd

    aget-wide v22, p1, v22

    add-int/lit8 v24, p2, 0xe

    aget-wide v24, p1, v24

    add-int/lit8 v26, p2, 0xf

    aget-wide v26, p1, v26

    add-int/lit8 v28, p2, 0x2

    aput-wide v24, p1, v28

    add-int/lit8 v24, p2, 0x3

    aput-wide v26, p1, v24

    add-int/lit8 v24, p2, 0x4

    aput-wide v8, p1, v24

    add-int/lit8 v8, p2, 0x5

    aput-wide v10, p1, v8

    add-int/lit8 v8, p2, 0x6

    aput-wide v16, p1, v8

    add-int/lit8 v8, p2, 0x7

    aput-wide v18, p1, v8

    add-int/lit8 v8, p2, 0x8

    aput-wide v0, p1, v8

    add-int/lit8 v0, p2, 0x9

    aput-wide v2, p1, v0

    add-int/lit8 v0, p2, 0xa

    aput-wide v20, p1, v0

    add-int/lit8 v0, p2, 0xb

    aput-wide v22, p1, v0

    add-int/lit8 v0, p2, 0xc

    aput-wide v4, p1, v0

    add-int/lit8 v0, p2, 0xd

    aput-wide v6, p1, v0

    add-int/lit8 v0, p2, 0xe

    aput-wide v12, p1, v0

    add-int/lit8 v0, p2, 0xf

    aput-wide v14, p1, v0

    return-void
.end method

.method private bitrv216([DI)V
    .registers 52

    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    add-int/lit8 v6, p2, 0x5

    aget-wide v6, p1, v6

    add-int/lit8 v8, p2, 0x6

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x7

    aget-wide v10, p1, v10

    add-int/lit8 v12, p2, 0x8

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x9

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0xa

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0xb

    aget-wide v18, p1, v18

    add-int/lit8 v20, p2, 0xe

    aget-wide v20, p1, v20

    add-int/lit8 v22, p2, 0xf

    aget-wide v22, p1, v22

    add-int/lit8 v24, p2, 0x10

    aget-wide v24, p1, v24

    add-int/lit8 v26, p2, 0x11

    aget-wide v26, p1, v26

    add-int/lit8 v28, p2, 0x14

    aget-wide v28, p1, v28

    add-int/lit8 v30, p2, 0x15

    aget-wide v30, p1, v30

    add-int/lit8 v32, p2, 0x16

    aget-wide v32, p1, v32

    add-int/lit8 v34, p2, 0x17

    aget-wide v34, p1, v34

    add-int/lit8 v36, p2, 0x18

    aget-wide v36, p1, v36

    add-int/lit8 v38, p2, 0x19

    aget-wide v38, p1, v38

    add-int/lit8 v40, p2, 0x1a

    aget-wide v40, p1, v40

    add-int/lit8 v42, p2, 0x1b

    aget-wide v42, p1, v42

    add-int/lit8 v44, p2, 0x1c

    aget-wide v44, p1, v44

    add-int/lit8 v46, p2, 0x1d

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0x2

    aput-wide v24, p1, v48

    add-int/lit8 v24, p2, 0x3

    aput-wide v26, p1, v24

    add-int/lit8 v24, p2, 0x4

    aput-wide v12, p1, v24

    add-int/lit8 v12, p2, 0x5

    aput-wide v14, p1, v12

    add-int/lit8 v12, p2, 0x6

    aput-wide v36, p1, v12

    add-int/lit8 v12, p2, 0x7

    aput-wide v38, p1, v12

    add-int/lit8 v12, p2, 0x8

    aput-wide v4, p1, v12

    add-int/lit8 v4, p2, 0x9

    aput-wide v6, p1, v4

    add-int/lit8 v4, p2, 0xa

    aput-wide v28, p1, v4

    add-int/lit8 v4, p2, 0xb

    aput-wide v30, p1, v4

    add-int/lit8 v4, p2, 0xe

    aput-wide v44, p1, v4

    add-int/lit8 v4, p2, 0xf

    aput-wide v46, p1, v4

    add-int/lit8 v4, p2, 0x10

    aput-wide v0, p1, v4

    add-int/lit8 v0, p2, 0x11

    aput-wide v2, p1, v0

    add-int/lit8 v0, p2, 0x14

    aput-wide v16, p1, v0

    add-int/lit8 v0, p2, 0x15

    aput-wide v18, p1, v0

    add-int/lit8 v0, p2, 0x16

    aput-wide v40, p1, v0

    add-int/lit8 v0, p2, 0x17

    aput-wide v42, p1, v0

    add-int/lit8 v0, p2, 0x18

    aput-wide v8, p1, v0

    add-int/lit8 v0, p2, 0x19

    aput-wide v10, p1, v0

    add-int/lit8 v0, p2, 0x1a

    aput-wide v32, p1, v0

    add-int/lit8 v0, p2, 0x1b

    aput-wide v34, p1, v0

    add-int/lit8 v0, p2, 0x1c

    aput-wide v20, p1, v0

    add-int/lit8 v0, p2, 0x1d

    aput-wide v22, p1, v0

    return-void
.end method

.method private bitrv216neg([DI)V
    .registers 64

    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    add-int/lit8 v6, p2, 0x5

    aget-wide v6, p1, v6

    add-int/lit8 v8, p2, 0x6

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x7

    aget-wide v10, p1, v10

    add-int/lit8 v12, p2, 0x8

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x9

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0xa

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0xb

    aget-wide v18, p1, v18

    add-int/lit8 v20, p2, 0xc

    aget-wide v20, p1, v20

    add-int/lit8 v22, p2, 0xd

    aget-wide v22, p1, v22

    add-int/lit8 v24, p2, 0xe

    aget-wide v24, p1, v24

    add-int/lit8 v26, p2, 0xf

    aget-wide v26, p1, v26

    add-int/lit8 v28, p2, 0x10

    aget-wide v28, p1, v28

    add-int/lit8 v30, p2, 0x11

    aget-wide v30, p1, v30

    add-int/lit8 v32, p2, 0x12

    aget-wide v32, p1, v32

    add-int/lit8 v34, p2, 0x13

    aget-wide v34, p1, v34

    add-int/lit8 v36, p2, 0x14

    aget-wide v36, p1, v36

    add-int/lit8 v38, p2, 0x15

    aget-wide v38, p1, v38

    add-int/lit8 v40, p2, 0x16

    aget-wide v40, p1, v40

    add-int/lit8 v42, p2, 0x17

    aget-wide v42, p1, v42

    add-int/lit8 v44, p2, 0x18

    aget-wide v44, p1, v44

    add-int/lit8 v46, p2, 0x19

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0x1a

    aget-wide v48, p1, v48

    add-int/lit8 v50, p2, 0x1b

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0x1c

    aget-wide v52, p1, v52

    add-int/lit8 v54, p2, 0x1d

    aget-wide v54, p1, v54

    add-int/lit8 v56, p2, 0x1e

    aget-wide v56, p1, v56

    add-int/lit8 v58, p2, 0x1f

    aget-wide v58, p1, v58

    add-int/lit8 v60, p2, 0x2

    aput-wide v56, p1, v60

    add-int/lit8 v56, p2, 0x3

    aput-wide v58, p1, v56

    add-int/lit8 v56, p2, 0x4

    aput-wide v24, p1, v56

    add-int/lit8 v24, p2, 0x5

    aput-wide v26, p1, v24

    add-int/lit8 v24, p2, 0x6

    aput-wide v40, p1, v24

    add-int/lit8 v24, p2, 0x7

    aput-wide v42, p1, v24

    add-int/lit8 v24, p2, 0x8

    aput-wide v8, p1, v24

    add-int/lit8 v8, p2, 0x9

    aput-wide v10, p1, v8

    add-int/lit8 v8, p2, 0xa

    aput-wide v48, p1, v8

    add-int/lit8 v8, p2, 0xb

    aput-wide v50, p1, v8

    add-int/lit8 v8, p2, 0xc

    aput-wide v16, p1, v8

    add-int/lit8 v8, p2, 0xd

    aput-wide v18, p1, v8

    add-int/lit8 v8, p2, 0xe

    aput-wide v32, p1, v8

    add-int/lit8 v8, p2, 0xf

    aput-wide v34, p1, v8

    add-int/lit8 v8, p2, 0x10

    aput-wide v0, p1, v8

    add-int/lit8 v0, p2, 0x11

    aput-wide v2, p1, v0

    add-int/lit8 v0, p2, 0x12

    aput-wide v52, p1, v0

    add-int/lit8 v0, p2, 0x13

    aput-wide v54, p1, v0

    add-int/lit8 v0, p2, 0x14

    aput-wide v20, p1, v0

    add-int/lit8 v0, p2, 0x15

    aput-wide v22, p1, v0

    add-int/lit8 v0, p2, 0x16

    aput-wide v36, p1, v0

    add-int/lit8 v0, p2, 0x17

    aput-wide v38, p1, v0

    add-int/lit8 v0, p2, 0x18

    aput-wide v4, p1, v0

    add-int/lit8 v0, p2, 0x19

    aput-wide v6, p1, v0

    add-int/lit8 v0, p2, 0x1a

    aput-wide v44, p1, v0

    add-int/lit8 v0, p2, 0x1b

    aput-wide v46, p1, v0

    add-int/lit8 v0, p2, 0x1c

    aput-wide v12, p1, v0

    add-int/lit8 v0, p2, 0x1d

    aput-wide v14, p1, v0

    add-int/lit8 v0, p2, 0x1e

    aput-wide v28, p1, v0

    add-int/lit8 v0, p2, 0x1f

    aput-wide v30, p1, v0

    return-void
.end method

.method private bitrv2conj(I[I[DI)V
    .registers 22

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

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v6, v3

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v3

    add-int/lit8 v6, v6, -0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    mul-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    add-int v5, v5, p4

    add-int v6, v6, p4

    aget-wide v7, p3, v5

    add-int/lit8 v9, v5, 0x1

    aget-wide v9, p3, v9

    neg-double v9, v9

    aget-wide v11, p3, v6

    add-int/lit8 v13, v6, 0x1

    aget-wide v13, p3, v13

    neg-double v13, v13

    aput-wide v11, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput-wide v13, p3, v5

    aput-wide v7, p3, v6

    add-int/lit8 v5, v6, 0x1

    aput-wide v9, p3, v5

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

    aget-wide v9, p3, v9

    neg-double v9, v9

    aput-wide v9, p3, v8

    aget-wide v8, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget-wide v10, p3, v10

    neg-double v10, v10

    aget-wide v12, p3, v7

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aput-wide v12, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput-wide v14, p3, v6

    aput-wide v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput-wide v10, p3, v6

    add-int/lit8 v6, v7, 0x3

    add-int/lit8 v7, v7, 0x3

    aget-wide v7, p3, v7

    neg-double v7, v7

    aput-wide v7, p3, v6

    add-int/2addr v5, v4

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v0, v6

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget-wide v8, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget-wide v10, p3, v10

    neg-double v10, v10

    aget-wide v12, p3, v7

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aput-wide v12, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput-wide v14, p3, v6

    aput-wide v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput-wide v10, p3, v6

    add-int/2addr v5, v4

    sub-int/2addr v0, v4

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget-wide v8, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget-wide v10, p3, v10

    neg-double v10, v10

    aget-wide v12, p3, v7

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aput-wide v12, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput-wide v14, p3, v6

    aput-wide v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput-wide v10, p3, v6

    add-int/lit8 v5, v5, -0x2

    sub-int/2addr v0, v3

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget-wide v8, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget-wide v10, p3, v10

    neg-double v10, v10

    aget-wide v12, p3, v7

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aput-wide v12, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput-wide v14, p3, v6

    aput-wide v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput-wide v10, p3, v6

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x2

    add-int/2addr v0, v6

    add-int v6, p4, v5

    add-int v7, p4, v0

    aget-wide v8, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget-wide v10, p3, v10

    neg-double v10, v10

    aget-wide v12, p3, v7

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aput-wide v12, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput-wide v14, p3, v6

    aput-wide v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput-wide v10, p3, v6

    sub-int v6, v3, v4

    sub-int/2addr v5, v6

    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, -0x2

    add-int/2addr v0, v6

    add-int v5, v5, p4

    add-int v0, v0, p4

    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v7, v5, -0x1

    aget-wide v7, p3, v7

    neg-double v7, v7

    aput-wide v7, p3, v6

    aget-wide v6, p3, v5

    add-int/lit8 v8, v5, 0x1

    aget-wide v8, p3, v8

    neg-double v8, v8

    aget-wide v10, p3, v0

    add-int/lit8 v12, v0, 0x1

    aget-wide v12, p3, v12

    neg-double v12, v12

    aput-wide v10, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput-wide v12, p3, v5

    aput-wide v6, p3, v0

    add-int/lit8 v5, v0, 0x1

    aput-wide v8, p3, v5

    add-int/lit8 v5, v0, 0x3

    add-int/lit8 v0, v0, 0x3

    aget-wide v6, p3, v0

    neg-double v6, v6

    aput-wide v6, p3, v5

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

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v6, v3

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    add-int/2addr v5, v4

    add-int/2addr v6, v4

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v3

    add-int/lit8 v6, v6, -0x2

    add-int v7, p4, v5

    add-int v8, p4, v6

    aget-wide v9, p3, v7

    add-int/lit8 v11, v7, 0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aget-wide v13, p3, v8

    add-int/lit8 v15, v8, 0x1

    aget-wide v15, p3, v15

    neg-double v15, v15

    aput-wide v13, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v15, p3, v7

    aput-wide v9, p3, v8

    add-int/lit8 v7, v8, 0x1

    aput-wide v11, p3, v7

    sub-int/2addr v5, v4

    sub-int/2addr v6, v4

    add-int v5, v5, p4

    add-int v6, v6, p4

    aget-wide v7, p3, v5

    add-int/lit8 v9, v5, 0x1

    aget-wide v9, p3, v9

    neg-double v9, v9

    aget-wide v11, p3, v6

    add-int/lit8 v13, v6, 0x1

    aget-wide v13, p3, v13

    neg-double v13, v13

    aput-wide v11, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput-wide v13, p3, v5

    aput-wide v7, p3, v6

    add-int/lit8 v5, v6, 0x1

    aput-wide v9, p3, v5

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

    aget-wide v9, p3, v9

    neg-double v9, v9

    aput-wide v9, p3, v8

    aget-wide v8, p3, v6

    add-int/lit8 v10, v6, 0x1

    aget-wide v10, p3, v10

    neg-double v10, v10

    aget-wide v12, p3, v7

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aput-wide v12, p3, v6

    add-int/lit8 v6, v6, 0x1

    aput-wide v14, p3, v6

    aput-wide v8, p3, v7

    add-int/lit8 v6, v7, 0x1

    aput-wide v10, p3, v6

    add-int/lit8 v6, v7, 0x3

    add-int/lit8 v7, v7, 0x3

    aget-wide v7, p3, v7

    neg-double v7, v7

    aput-wide v7, p3, v6

    add-int/2addr v5, v4

    add-int/2addr v0, v4

    add-int v5, v5, p4

    add-int v0, v0, p4

    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v7, v5, -0x1

    aget-wide v7, p3, v7

    neg-double v7, v7

    aput-wide v7, p3, v6

    aget-wide v6, p3, v5

    add-int/lit8 v8, v5, 0x1

    aget-wide v8, p3, v8

    neg-double v8, v8

    aget-wide v10, p3, v0

    add-int/lit8 v12, v0, 0x1

    aget-wide v12, p3, v12

    neg-double v12, v12

    aput-wide v10, p3, v5

    add-int/lit8 v5, v5, 0x1

    aput-wide v12, p3, v5

    aput-wide v6, p3, v0

    add-int/lit8 v5, v0, 0x1

    aput-wide v8, p3, v5

    add-int/lit8 v5, v0, 0x3

    add-int/lit8 v0, v0, 0x3

    aget-wide v6, p3, v0

    neg-double v6, v6

    aput-wide v6, p3, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_346

    :cond_4cf
    return-void
.end method

.method private cftb040([DI)V
    .registers 22

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x4

    aget-wide v2, p1, v2

    add-double/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x4

    aget-wide v6, p1, v6

    sub-double/2addr v4, v6

    add-int/lit8 v6, p2, 0x1

    aget-wide v6, p1, v6

    add-int/lit8 v8, p2, 0x5

    aget-wide v8, p1, v8

    sub-double/2addr v6, v8

    add-int/lit8 v8, p2, 0x2

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x6

    aget-wide v10, p1, v10

    add-double/2addr v8, v10

    add-int/lit8 v10, p2, 0x3

    aget-wide v10, p1, v10

    add-int/lit8 v12, p2, 0x7

    aget-wide v12, p1, v12

    add-double/2addr v10, v12

    add-int/lit8 v12, p2, 0x2

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x6

    aget-wide v14, p1, v14

    sub-double/2addr v12, v14

    add-int/lit8 v14, p2, 0x3

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0x7

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    add-double v16, v0, v8

    aput-wide v16, p1, p2

    add-int/lit8 v16, p2, 0x1

    add-double v17, v2, v10

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x2

    add-double v17, v4, v14

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x3

    sub-double v17, v6, v12

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x4

    sub-double/2addr v0, v8

    aput-wide v0, p1, v16

    add-int/lit8 v0, p2, 0x5

    sub-double v1, v2, v10

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x6

    sub-double v1, v4, v14

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x7

    add-double v1, v6, v12

    aput-wide v1, p1, v0

    return-void
.end method

.method private cftb1st(I[DI[DI)V
    .registers 73

    shr-int/lit8 v12, p1, 0x3

    mul-int/lit8 v13, v12, 0x2

    add-int v2, v13, v13

    add-int v3, v2, v13

    add-int v4, p3, v13

    add-int v2, v2, p3

    add-int v3, v3, p3

    aget-wide v5, p2, p3

    aget-wide v7, p2, v2

    add-double/2addr v5, v7

    add-int/lit8 v7, p3, 0x1

    aget-wide v7, p2, v7

    neg-double v7, v7

    add-int/lit8 v9, v2, 0x1

    aget-wide v9, p2, v9

    sub-double/2addr v7, v9

    aget-wide v9, p2, p3

    aget-wide v14, p2, v2

    sub-double/2addr v9, v14

    add-int/lit8 v11, p3, 0x1

    aget-wide v14, p2, v11

    neg-double v14, v14

    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p2, v11

    add-double v14, v14, v16

    aget-wide v16, p2, v4

    aget-wide v18, p2, v3

    add-double v16, v16, v18

    add-int/lit8 v11, v4, 0x1

    aget-wide v18, p2, v11

    add-int/lit8 v11, v3, 0x1

    aget-wide v20, p2, v11

    add-double v18, v18, v20

    aget-wide v20, p2, v4

    aget-wide v22, p2, v3

    sub-double v20, v20, v22

    add-int/lit8 v11, v4, 0x1

    aget-wide v22, p2, v11

    add-int/lit8 v11, v3, 0x1

    aget-wide v24, p2, v11

    sub-double v22, v22, v24

    add-double v24, v5, v16

    aput-wide v24, p2, p3

    add-int/lit8 v11, p3, 0x1

    sub-double v24, v7, v18

    aput-wide v24, p2, v11

    sub-double v5, v5, v16

    aput-wide v5, p2, v4

    add-int/lit8 v4, v4, 0x1

    add-double v5, v7, v18

    aput-wide v5, p2, v4

    add-double v4, v9, v22

    aput-wide v4, p2, v2

    add-int/lit8 v2, v2, 0x1

    add-double v4, v14, v20

    aput-wide v4, p2, v2

    sub-double v4, v9, v22

    aput-wide v4, p2, v3

    add-int/lit8 v2, v3, 0x1

    sub-double v3, v14, v20

    aput-wide v3, p2, v2

    add-int/lit8 v2, p5, 0x1

    aget-wide v14, p4, v2

    add-int/lit8 v2, p5, 0x2

    aget-wide v16, p4, v2

    add-int/lit8 v2, p5, 0x3

    aget-wide v18, p4, v2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x2

    :goto_8b
    add-int/lit8 v20, v12, -0x2

    move/from16 v0, v20

    if-ge v2, v0, :cond_33a

    add-int/lit8 v11, v11, 0x4

    add-int v20, p5, v11

    aget-wide v21, p4, v20

    add-double v9, v9, v21

    mul-double v21, v16, v9

    add-int/lit8 v9, v20, 0x1

    aget-wide v9, p4, v9

    add-double/2addr v7, v9

    mul-double v23, v16, v7

    add-int/lit8 v7, v20, 0x2

    aget-wide v7, p4, v7

    add-double/2addr v5, v7

    mul-double v25, v18, v5

    add-int/lit8 v5, v20, 0x3

    aget-wide v5, p4, v5

    add-double/2addr v3, v5

    mul-double v27, v18, v3

    aget-wide v9, p4, v20

    add-int/lit8 v3, v20, 0x1

    aget-wide v7, p4, v3

    add-int/lit8 v3, v20, 0x2

    aget-wide v5, p4, v3

    add-int/lit8 v3, v20, 0x3

    aget-wide v3, p4, v3

    add-int v20, v2, v13

    add-int v29, v20, v13

    add-int v30, v29, v13

    add-int v20, v20, p3

    add-int v31, p3, v29

    add-int v30, v30, p3

    add-int v32, p3, v2

    aget-wide v33, p2, v32

    aget-wide v35, p2, v31

    add-double v33, v33, v35

    add-int/lit8 v35, v32, 0x1

    aget-wide v35, p2, v35

    move-wide/from16 v0, v35

    neg-double v0, v0

    move-wide/from16 v35, v0

    add-int/lit8 v37, v31, 0x1

    aget-wide v37, p2, v37

    sub-double v35, v35, v37

    aget-wide v37, p2, v32

    add-int v29, v29, p3

    aget-wide v39, p2, v29

    sub-double v37, v37, v39

    add-int/lit8 v29, v32, 0x1

    aget-wide v39, p2, v29

    move-wide/from16 v0, v39

    neg-double v0, v0

    move-wide/from16 v39, v0

    add-int/lit8 v29, v31, 0x1

    aget-wide v41, p2, v29

    add-double v39, v39, v41

    add-int/lit8 v29, v32, 0x2

    aget-wide v41, p2, v29

    add-int/lit8 v29, v31, 0x2

    aget-wide v43, p2, v29

    add-double v41, v41, v43

    add-int/lit8 v29, v32, 0x3

    aget-wide v43, p2, v29

    move-wide/from16 v0, v43

    neg-double v0, v0

    move-wide/from16 v43, v0

    add-int/lit8 v29, v31, 0x3

    aget-wide v45, p2, v29

    sub-double v43, v43, v45

    add-int/lit8 v29, v32, 0x2

    aget-wide v45, p2, v29

    add-int/lit8 v29, v31, 0x2

    aget-wide v47, p2, v29

    sub-double v45, v45, v47

    add-int/lit8 v29, v32, 0x3

    aget-wide v47, p2, v29

    move-wide/from16 v0, v47

    neg-double v0, v0

    move-wide/from16 v47, v0

    add-int/lit8 v29, v31, 0x3

    aget-wide v49, p2, v29

    add-double v47, v47, v49

    aget-wide v49, p2, v20

    aget-wide v51, p2, v30

    add-double v49, v49, v51

    add-int/lit8 v29, v20, 0x1

    aget-wide v51, p2, v29

    add-int/lit8 v29, v30, 0x1

    aget-wide v53, p2, v29

    add-double v51, v51, v53

    aget-wide v53, p2, v20

    aget-wide v55, p2, v30

    sub-double v53, v53, v55

    add-int/lit8 v29, v20, 0x1

    aget-wide v55, p2, v29

    add-int/lit8 v29, v30, 0x1

    aget-wide v57, p2, v29

    sub-double v55, v55, v57

    add-int/lit8 v29, v20, 0x2

    aget-wide v57, p2, v29

    add-int/lit8 v29, v30, 0x2

    aget-wide v59, p2, v29

    add-double v57, v57, v59

    add-int/lit8 v29, v20, 0x3

    aget-wide v59, p2, v29

    add-int/lit8 v29, v30, 0x3

    aget-wide v61, p2, v29

    add-double v59, v59, v61

    add-int/lit8 v29, v20, 0x2

    aget-wide v61, p2, v29

    add-int/lit8 v29, v30, 0x2

    aget-wide v63, p2, v29

    sub-double v61, v61, v63

    add-int/lit8 v29, v20, 0x3

    aget-wide v63, p2, v29

    add-int/lit8 v29, v30, 0x3

    aget-wide v65, p2, v29

    sub-double v63, v63, v65

    add-double v65, v33, v49

    aput-wide v65, p2, v32

    add-int/lit8 v29, v32, 0x1

    sub-double v65, v35, v51

    aput-wide v65, p2, v29

    add-int/lit8 v29, v32, 0x2

    add-double v65, v41, v57

    aput-wide v65, p2, v29

    add-int/lit8 v29, v32, 0x3

    sub-double v65, v43, v59

    aput-wide v65, p2, v29

    sub-double v32, v33, v49

    aput-wide v32, p2, v20

    add-int/lit8 v29, v20, 0x1

    add-double v32, v35, v51

    aput-wide v32, p2, v29

    add-int/lit8 v29, v20, 0x2

    sub-double v32, v41, v57

    aput-wide v32, p2, v29

    add-int/lit8 v20, v20, 0x3

    add-double v32, v43, v59

    aput-wide v32, p2, v20

    add-double v32, v37, v55

    add-double v34, v39, v53

    mul-double v41, v21, v32

    mul-double v43, v23, v34

    sub-double v41, v41, v43

    aput-wide v41, p2, v31

    add-int/lit8 v20, v31, 0x1

    mul-double v34, v34, v21

    mul-double v32, v32, v23

    add-double v32, v32, v34

    aput-wide v32, p2, v20

    add-double v32, v45, v63

    add-double v34, v47, v61

    add-int/lit8 v20, v31, 0x2

    mul-double v41, v9, v32

    mul-double v43, v7, v34

    sub-double v41, v41, v43

    aput-wide v41, p2, v20

    add-int/lit8 v20, v31, 0x3

    mul-double v34, v34, v9

    mul-double v31, v7, v32

    add-double v31, v31, v34

    aput-wide v31, p2, v20

    sub-double v31, v37, v55

    sub-double v33, v39, v53

    mul-double v35, v25, v31

    mul-double v37, v27, v33

    add-double v35, v35, v37

    aput-wide v35, p2, v30

    add-int/lit8 v20, v30, 0x1

    mul-double v33, v33, v25

    mul-double v31, v31, v27

    sub-double v31, v33, v31

    aput-wide v31, p2, v20

    sub-double v31, v45, v63

    sub-double v33, v47, v61

    add-int/lit8 v20, v30, 0x2

    mul-double v35, v5, v31

    mul-double v37, v3, v33

    add-double v35, v35, v37

    aput-wide v35, p2, v20

    add-int/lit8 v20, v30, 0x3

    mul-double v29, v5, v33

    mul-double v31, v31, v3

    sub-double v29, v29, v31

    aput-wide v29, p2, v20

    sub-int v20, v13, v2

    add-int v29, v20, v13

    add-int v30, v29, v13

    add-int v31, v30, v13

    add-int v20, v20, p3

    add-int v29, v29, p3

    add-int v30, v30, p3

    add-int v31, v31, p3

    aget-wide v32, p2, v20

    aget-wide v34, p2, v30

    add-double v32, v32, v34

    add-int/lit8 v34, v20, 0x1

    aget-wide v34, p2, v34

    move-wide/from16 v0, v34

    neg-double v0, v0

    move-wide/from16 v34, v0

    add-int/lit8 v36, v30, 0x1

    aget-wide v36, p2, v36

    sub-double v34, v34, v36

    aget-wide v36, p2, v20

    aget-wide v38, p2, v30

    sub-double v36, v36, v38

    add-int/lit8 v38, v20, 0x1

    aget-wide v38, p2, v38

    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 v38, v0

    add-int/lit8 v40, v30, 0x1

    aget-wide v40, p2, v40

    add-double v38, v38, v40

    add-int/lit8 v40, v20, -0x2

    aget-wide v40, p2, v40

    add-int/lit8 v42, v30, -0x2

    aget-wide v42, p2, v42

    add-double v40, v40, v42

    add-int/lit8 v42, v20, -0x1

    aget-wide v42, p2, v42

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    add-int/lit8 v44, v30, -0x1

    aget-wide v44, p2, v44

    sub-double v42, v42, v44

    add-int/lit8 v44, v20, -0x2

    aget-wide v44, p2, v44

    add-int/lit8 v46, v30, -0x2

    aget-wide v46, p2, v46

    sub-double v44, v44, v46

    add-int/lit8 v46, v20, -0x1

    aget-wide v46, p2, v46

    move-wide/from16 v0, v46

    neg-double v0, v0

    move-wide/from16 v46, v0

    add-int/lit8 v48, v30, -0x1

    aget-wide v48, p2, v48

    add-double v46, v46, v48

    aget-wide v48, p2, v29

    aget-wide v50, p2, v31

    add-double v48, v48, v50

    add-int/lit8 v50, v29, 0x1

    aget-wide v50, p2, v50

    add-int/lit8 v52, v31, 0x1

    aget-wide v52, p2, v52

    add-double v50, v50, v52

    aget-wide v52, p2, v29

    aget-wide v54, p2, v31

    sub-double v52, v52, v54

    add-int/lit8 v54, v29, 0x1

    aget-wide v54, p2, v54

    add-int/lit8 v56, v31, 0x1

    aget-wide v56, p2, v56

    sub-double v54, v54, v56

    add-int/lit8 v56, v29, -0x2

    aget-wide v56, p2, v56

    add-int/lit8 v58, v31, -0x2

    aget-wide v58, p2, v58

    add-double v56, v56, v58

    add-int/lit8 v58, v29, -0x1

    aget-wide v58, p2, v58

    add-int/lit8 v60, v31, -0x1

    aget-wide v60, p2, v60

    add-double v58, v58, v60

    add-int/lit8 v60, v29, -0x2

    aget-wide v60, p2, v60

    add-int/lit8 v62, v31, -0x2

    aget-wide v62, p2, v62

    sub-double v60, v60, v62

    add-int/lit8 v62, v29, -0x1

    aget-wide v62, p2, v62

    add-int/lit8 v64, v31, -0x1

    aget-wide v64, p2, v64

    sub-double v62, v62, v64

    add-double v64, v32, v48

    aput-wide v64, p2, v20

    add-int/lit8 v64, v20, 0x1

    sub-double v65, v34, v50

    aput-wide v65, p2, v64

    add-int/lit8 v64, v20, -0x2

    add-double v65, v40, v56

    aput-wide v65, p2, v64

    add-int/lit8 v20, v20, -0x1

    sub-double v64, v42, v58

    aput-wide v64, p2, v20

    sub-double v32, v32, v48

    aput-wide v32, p2, v29

    add-int/lit8 v20, v29, 0x1

    add-double v32, v34, v50

    aput-wide v32, p2, v20

    add-int/lit8 v20, v29, -0x2

    sub-double v32, v40, v56

    aput-wide v32, p2, v20

    add-int/lit8 v20, v29, -0x1

    add-double v32, v42, v58

    aput-wide v32, p2, v20

    add-double v32, v36, v54

    add-double v34, v38, v52

    mul-double v40, v23, v32

    mul-double v42, v21, v34

    sub-double v40, v40, v42

    aput-wide v40, p2, v30

    add-int/lit8 v20, v30, 0x1

    mul-double v23, v23, v34

    mul-double v21, v21, v32

    add-double v21, v21, v23

    aput-wide v21, p2, v20

    add-double v20, v44, v62

    add-double v22, v46, v60

    add-int/lit8 v24, v30, -0x2

    mul-double v32, v7, v20

    mul-double v34, v9, v22

    sub-double v32, v32, v34

    aput-wide v32, p2, v24

    add-int/lit8 v24, v30, -0x1

    mul-double v22, v22, v7

    mul-double v20, v20, v9

    add-double v20, v20, v22

    aput-wide v20, p2, v24

    sub-double v20, v36, v54

    sub-double v22, v38, v52

    mul-double v29, v27, v20

    mul-double v32, v25, v22

    add-double v29, v29, v32

    aput-wide v29, p2, v31

    add-int/lit8 v24, v31, 0x1

    mul-double v22, v22, v27

    mul-double v20, v20, v25

    sub-double v20, v22, v20

    aput-wide v20, p2, v24

    sub-double v20, v44, v62

    sub-double v22, v46, v60

    add-int/lit8 v24, v31, -0x2

    mul-double v25, v3, v20

    mul-double v27, v5, v22

    add-double v25, v25, v27

    aput-wide v25, p2, v24

    add-int/lit8 v24, v31, -0x1

    mul-double v22, v22, v3

    mul-double v20, v20, v5

    sub-double v20, v22, v20

    aput-wide v20, p2, v24

    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_8b

    :cond_33a
    add-double/2addr v9, v14

    mul-double v9, v9, v16

    add-double/2addr v7, v14

    mul-double v7, v7, v16

    sub-double/2addr v5, v14

    mul-double v5, v5, v18

    sub-double v2, v3, v14

    mul-double v2, v2, v18

    add-int v4, v12, v13

    add-int v11, v4, v13

    add-int/2addr v13, v11

    add-int v12, v12, p3

    add-int v4, v4, p3

    add-int v11, v11, p3

    add-int v13, v13, p3

    add-int/lit8 v16, v12, -0x2

    aget-wide v16, p2, v16

    add-int/lit8 v18, v11, -0x2

    aget-wide v18, p2, v18

    add-double v16, v16, v18

    add-int/lit8 v18, v12, -0x1

    aget-wide v18, p2, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    add-int/lit8 v20, v11, -0x1

    aget-wide v20, p2, v20

    sub-double v18, v18, v20

    add-int/lit8 v20, v12, -0x2

    aget-wide v20, p2, v20

    add-int/lit8 v22, v11, -0x2

    aget-wide v22, p2, v22

    sub-double v20, v20, v22

    add-int/lit8 v22, v12, -0x1

    aget-wide v22, p2, v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    add-int/lit8 v24, v11, -0x1

    aget-wide v24, p2, v24

    add-double v22, v22, v24

    add-int/lit8 v24, v4, -0x2

    aget-wide v24, p2, v24

    add-int/lit8 v26, v13, -0x2

    aget-wide v26, p2, v26

    add-double v24, v24, v26

    add-int/lit8 v26, v4, -0x1

    aget-wide v26, p2, v26

    add-int/lit8 v28, v13, -0x1

    aget-wide v28, p2, v28

    add-double v26, v26, v28

    add-int/lit8 v28, v4, -0x2

    aget-wide v28, p2, v28

    add-int/lit8 v30, v13, -0x2

    aget-wide v30, p2, v30

    sub-double v28, v28, v30

    add-int/lit8 v30, v4, -0x1

    aget-wide v30, p2, v30

    add-int/lit8 v32, v13, -0x1

    aget-wide v32, p2, v32

    sub-double v30, v30, v32

    add-int/lit8 v32, v12, -0x2

    add-double v33, v16, v24

    aput-wide v33, p2, v32

    add-int/lit8 v32, v12, -0x1

    sub-double v33, v18, v26

    aput-wide v33, p2, v32

    add-int/lit8 v32, v4, -0x2

    sub-double v16, v16, v24

    aput-wide v16, p2, v32

    add-int/lit8 v16, v4, -0x1

    add-double v17, v18, v26

    aput-wide v17, p2, v16

    add-double v16, v20, v30

    add-double v18, v22, v28

    add-int/lit8 v24, v11, -0x2

    mul-double v25, v9, v16

    mul-double v32, v7, v18

    sub-double v25, v25, v32

    aput-wide v25, p2, v24

    add-int/lit8 v24, v11, -0x1

    mul-double v18, v18, v9

    mul-double v16, v16, v7

    add-double v16, v16, v18

    aput-wide v16, p2, v24

    sub-double v16, v20, v30

    sub-double v18, v22, v28

    add-int/lit8 v20, v13, -0x2

    mul-double v21, v5, v16

    mul-double v23, v2, v18

    add-double v21, v21, v23

    aput-wide v21, p2, v20

    add-int/lit8 v20, v13, -0x1

    mul-double v18, v18, v5

    mul-double v16, v16, v2

    sub-double v16, v18, v16

    aput-wide v16, p2, v20

    aget-wide v16, p2, v12

    aget-wide v18, p2, v11

    add-double v16, v16, v18

    add-int/lit8 v18, v12, 0x1

    aget-wide v18, p2, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    add-int/lit8 v20, v11, 0x1

    aget-wide v20, p2, v20

    sub-double v18, v18, v20

    aget-wide v20, p2, v12

    aget-wide v22, p2, v11

    sub-double v20, v20, v22

    add-int/lit8 v22, v12, 0x1

    aget-wide v22, p2, v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    add-int/lit8 v24, v11, 0x1

    aget-wide v24, p2, v24

    add-double v22, v22, v24

    aget-wide v24, p2, v4

    aget-wide v26, p2, v13

    add-double v24, v24, v26

    add-int/lit8 v26, v4, 0x1

    aget-wide v26, p2, v26

    add-int/lit8 v28, v13, 0x1

    aget-wide v28, p2, v28

    add-double v26, v26, v28

    aget-wide v28, p2, v4

    aget-wide v30, p2, v13

    sub-double v28, v28, v30

    add-int/lit8 v30, v4, 0x1

    aget-wide v30, p2, v30

    add-int/lit8 v32, v13, 0x1

    aget-wide v32, p2, v32

    sub-double v30, v30, v32

    add-double v32, v16, v24

    aput-wide v32, p2, v12

    add-int/lit8 v32, v12, 0x1

    sub-double v33, v18, v26

    aput-wide v33, p2, v32

    sub-double v16, v16, v24

    aput-wide v16, p2, v4

    add-int/lit8 v16, v4, 0x1

    add-double v17, v18, v26

    aput-wide v17, p2, v16

    add-double v16, v20, v30

    add-double v18, v22, v28

    sub-double v24, v16, v18

    mul-double v24, v24, v14

    aput-wide v24, p2, v11

    add-int/lit8 v24, v11, 0x1

    add-double v16, v16, v18

    mul-double v16, v16, v14

    aput-wide v16, p2, v24

    sub-double v16, v20, v30

    sub-double v18, v22, v28

    neg-double v0, v14

    move-wide/from16 v20, v0

    add-double v22, v16, v18

    mul-double v20, v20, v22

    aput-wide v20, p2, v13

    add-int/lit8 v20, v13, 0x1

    neg-double v14, v14

    sub-double v16, v18, v16

    mul-double v14, v14, v16

    aput-wide v14, p2, v20

    add-int/lit8 v14, v12, 0x2

    aget-wide v14, p2, v14

    add-int/lit8 v16, v11, 0x2

    aget-wide v16, p2, v16

    add-double v14, v14, v16

    add-int/lit8 v16, v12, 0x3

    aget-wide v16, p2, v16

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    add-int/lit8 v18, v11, 0x3

    aget-wide v18, p2, v18

    sub-double v16, v16, v18

    add-int/lit8 v18, v12, 0x2

    aget-wide v18, p2, v18

    add-int/lit8 v20, v11, 0x2

    aget-wide v20, p2, v20

    sub-double v18, v18, v20

    add-int/lit8 v20, v12, 0x3

    aget-wide v20, p2, v20

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    add-int/lit8 v22, v11, 0x3

    aget-wide v22, p2, v22

    add-double v20, v20, v22

    add-int/lit8 v22, v4, 0x2

    aget-wide v22, p2, v22

    add-int/lit8 v24, v13, 0x2

    aget-wide v24, p2, v24

    add-double v22, v22, v24

    add-int/lit8 v24, v4, 0x3

    aget-wide v24, p2, v24

    add-int/lit8 v26, v13, 0x3

    aget-wide v26, p2, v26

    add-double v24, v24, v26

    add-int/lit8 v26, v4, 0x2

    aget-wide v26, p2, v26

    add-int/lit8 v28, v13, 0x2

    aget-wide v28, p2, v28

    sub-double v26, v26, v28

    add-int/lit8 v28, v4, 0x3

    aget-wide v28, p2, v28

    add-int/lit8 v30, v13, 0x3

    aget-wide v30, p2, v30

    sub-double v28, v28, v30

    add-int/lit8 v30, v12, 0x2

    add-double v31, v14, v22

    aput-wide v31, p2, v30

    add-int/lit8 v12, v12, 0x3

    sub-double v30, v16, v24

    aput-wide v30, p2, v12

    add-int/lit8 v12, v4, 0x2

    sub-double v14, v14, v22

    aput-wide v14, p2, v12

    add-int/lit8 v4, v4, 0x3

    add-double v14, v16, v24

    aput-wide v14, p2, v4

    add-double v14, v18, v28

    add-double v16, v20, v26

    add-int/lit8 v4, v11, 0x2

    mul-double v22, v7, v14

    mul-double v24, v9, v16

    sub-double v22, v22, v24

    aput-wide v22, p2, v4

    add-int/lit8 v4, v11, 0x3

    mul-double v7, v7, v16

    mul-double/2addr v9, v14

    add-double/2addr v7, v9

    aput-wide v7, p2, v4

    sub-double v7, v18, v28

    sub-double v9, v20, v26

    add-int/lit8 v4, v13, 0x2

    mul-double v11, v2, v7

    mul-double v14, v5, v9

    add-double/2addr v11, v14

    aput-wide v11, p2, v4

    add-int/lit8 v4, v13, 0x3

    mul-double/2addr v2, v9

    mul-double/2addr v5, v7

    sub-double/2addr v2, v5

    aput-wide v2, p2, v4

    return-void
.end method

.method private cftbsub(I[DI[II[D)V
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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftb1st(I[DI[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftrec4_th(I[DII[D)V

    :goto_2a
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->bitrv2conj(I[I[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftrec4(I[DII[D)V

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

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftleaf(II[DII[D)V

    goto :goto_2a

    :cond_4b
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftfx41(I[DII[D)V

    goto :goto_2a

    :cond_55
    if-ne p1, v1, :cond_60

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->bitrv216neg([DI)V

    goto :goto_2d

    :cond_60
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->bitrv208neg([DI)V

    goto :goto_2d

    :cond_68
    if-ne p1, v0, :cond_6e

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftb040([DI)V

    goto :goto_2d

    :cond_6e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftx020([DI)V

    goto :goto_2d
.end method

.method private cftf040([DI)V
    .registers 22

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x4

    aget-wide v2, p1, v2

    add-double/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x4

    aget-wide v6, p1, v6

    sub-double/2addr v4, v6

    add-int/lit8 v6, p2, 0x1

    aget-wide v6, p1, v6

    add-int/lit8 v8, p2, 0x5

    aget-wide v8, p1, v8

    sub-double/2addr v6, v8

    add-int/lit8 v8, p2, 0x2

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x6

    aget-wide v10, p1, v10

    add-double/2addr v8, v10

    add-int/lit8 v10, p2, 0x3

    aget-wide v10, p1, v10

    add-int/lit8 v12, p2, 0x7

    aget-wide v12, p1, v12

    add-double/2addr v10, v12

    add-int/lit8 v12, p2, 0x2

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x6

    aget-wide v14, p1, v14

    sub-double/2addr v12, v14

    add-int/lit8 v14, p2, 0x3

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0x7

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    add-double v16, v0, v8

    aput-wide v16, p1, p2

    add-int/lit8 v16, p2, 0x1

    add-double v17, v2, v10

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x2

    sub-double v17, v4, v14

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x3

    add-double v17, v6, v12

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x4

    sub-double/2addr v0, v8

    aput-wide v0, p1, v16

    add-int/lit8 v0, p2, 0x5

    sub-double v1, v2, v10

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x6

    add-double v1, v4, v14

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x7

    sub-double v1, v6, v12

    aput-wide v1, p1, v0

    return-void
.end method

.method private cftf081([DI[DI)V
    .registers 43

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    aget-wide v2, p1, p2

    add-int/lit8 v4, p2, 0x8

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    add-int/lit8 v4, p2, 0x1

    aget-wide v4, p1, v4

    add-int/lit8 v6, p2, 0x9

    aget-wide v6, p1, v6

    add-double/2addr v4, v6

    aget-wide v6, p1, p2

    add-int/lit8 v8, p2, 0x8

    aget-wide v8, p1, v8

    sub-double/2addr v6, v8

    add-int/lit8 v8, p2, 0x1

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x9

    aget-wide v10, p1, v10

    sub-double/2addr v8, v10

    add-int/lit8 v10, p2, 0x4

    aget-wide v10, p1, v10

    add-int/lit8 v12, p2, 0xc

    aget-wide v12, p1, v12

    add-double/2addr v10, v12

    add-int/lit8 v12, p2, 0x5

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0xd

    aget-wide v14, p1, v14

    add-double/2addr v12, v14

    add-int/lit8 v14, p2, 0x4

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0xc

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    add-int/lit8 v16, p2, 0x5

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0xd

    aget-wide v18, p1, v18

    sub-double v16, v16, v18

    add-double v18, v2, v10

    add-double v20, v4, v12

    sub-double/2addr v2, v10

    sub-double/2addr v4, v12

    sub-double v10, v6, v16

    add-double v12, v8, v14

    add-double v6, v6, v16

    sub-double/2addr v8, v14

    add-int/lit8 v14, p2, 0x2

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0xa

    aget-wide v16, p1, v16

    add-double v14, v14, v16

    add-int/lit8 v16, p2, 0x3

    aget-wide v16, p1, v16

    add-int/lit8 v22, p2, 0xb

    aget-wide v22, p1, v22

    add-double v16, v16, v22

    add-int/lit8 v22, p2, 0x2

    aget-wide v22, p1, v22

    add-int/lit8 v24, p2, 0xa

    aget-wide v24, p1, v24

    sub-double v22, v22, v24

    add-int/lit8 v24, p2, 0x3

    aget-wide v24, p1, v24

    add-int/lit8 v26, p2, 0xb

    aget-wide v26, p1, v26

    sub-double v24, v24, v26

    add-int/lit8 v26, p2, 0x6

    aget-wide v26, p1, v26

    add-int/lit8 v28, p2, 0xe

    aget-wide v28, p1, v28

    add-double v26, v26, v28

    add-int/lit8 v28, p2, 0x7

    aget-wide v28, p1, v28

    add-int/lit8 v30, p2, 0xf

    aget-wide v30, p1, v30

    add-double v28, v28, v30

    add-int/lit8 v30, p2, 0x6

    aget-wide v30, p1, v30

    add-int/lit8 v32, p2, 0xe

    aget-wide v32, p1, v32

    sub-double v30, v30, v32

    add-int/lit8 v32, p2, 0x7

    aget-wide v32, p1, v32

    add-int/lit8 v34, p2, 0xf

    aget-wide v34, p1, v34

    sub-double v32, v32, v34

    add-double v34, v14, v26

    add-double v36, v16, v28

    sub-double v14, v14, v26

    sub-double v16, v16, v28

    sub-double v26, v22, v32

    add-double v28, v24, v30

    add-double v22, v22, v32

    sub-double v24, v24, v30

    sub-double v30, v26, v28

    mul-double v30, v30, v0

    add-double v26, v26, v28

    mul-double v26, v26, v0

    sub-double v28, v22, v24

    mul-double v28, v28, v0

    add-double v22, v22, v24

    mul-double v0, v0, v22

    add-int/lit8 v22, p2, 0x8

    add-double v23, v10, v30

    aput-wide v23, p1, v22

    add-int/lit8 v22, p2, 0x9

    add-double v23, v12, v26

    aput-wide v23, p1, v22

    add-int/lit8 v22, p2, 0xa

    sub-double v10, v10, v30

    aput-wide v10, p1, v22

    add-int/lit8 v10, p2, 0xb

    sub-double v11, v12, v26

    aput-wide v11, p1, v10

    add-int/lit8 v10, p2, 0xc

    sub-double v11, v6, v0

    aput-wide v11, p1, v10

    add-int/lit8 v10, p2, 0xd

    add-double v11, v8, v28

    aput-wide v11, p1, v10

    add-int/lit8 v10, p2, 0xe

    add-double/2addr v0, v6

    aput-wide v0, p1, v10

    add-int/lit8 v0, p2, 0xf

    sub-double v6, v8, v28

    aput-wide v6, p1, v0

    add-double v0, v18, v34

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    add-double v6, v20, v36

    aput-wide v6, p1, v0

    add-int/lit8 v0, p2, 0x2

    sub-double v6, v18, v34

    aput-wide v6, p1, v0

    add-int/lit8 v0, p2, 0x3

    sub-double v6, v20, v36

    aput-wide v6, p1, v0

    add-int/lit8 v0, p2, 0x4

    sub-double v6, v2, v16

    aput-wide v6, p1, v0

    add-int/lit8 v0, p2, 0x5

    add-double v6, v4, v14

    aput-wide v6, p1, v0

    add-int/lit8 v0, p2, 0x6

    add-double v1, v2, v16

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x7

    sub-double v1, v4, v14

    aput-wide v1, p1, v0

    return-void
.end method

.method private cftf082([DI[DI)V
    .registers 48

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v2, p4, 0x2

    aget-wide v2, p3, v2

    add-int/lit8 v4, p4, 0x3

    aget-wide v4, p3, v4

    aget-wide v6, p1, p2

    add-int/lit8 v8, p2, 0x9

    aget-wide v8, p1, v8

    sub-double/2addr v6, v8

    add-int/lit8 v8, p2, 0x1

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x8

    aget-wide v10, p1, v10

    add-double/2addr v8, v10

    aget-wide v10, p1, p2

    add-int/lit8 v12, p2, 0x9

    aget-wide v12, p1, v12

    add-double/2addr v10, v12

    add-int/lit8 v12, p2, 0x1

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x8

    aget-wide v14, p1, v14

    sub-double/2addr v12, v14

    add-int/lit8 v14, p2, 0x4

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0xd

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    add-int/lit8 v16, p2, 0x5

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0xc

    aget-wide v18, p1, v18

    add-double v16, v16, v18

    sub-double v18, v14, v16

    mul-double v18, v18, v0

    add-double v14, v14, v16

    mul-double/2addr v14, v0

    add-int/lit8 v16, p2, 0x4

    aget-wide v16, p1, v16

    add-int/lit8 v20, p2, 0xd

    aget-wide v20, p1, v20

    add-double v16, v16, v20

    add-int/lit8 v20, p2, 0x5

    aget-wide v20, p1, v20

    add-int/lit8 v22, p2, 0xc

    aget-wide v22, p1, v22

    sub-double v20, v20, v22

    sub-double v22, v16, v20

    mul-double v22, v22, v0

    add-double v16, v16, v20

    mul-double v0, v0, v16

    add-int/lit8 v16, p2, 0x2

    aget-wide v16, p1, v16

    add-int/lit8 v20, p2, 0xb

    aget-wide v20, p1, v20

    sub-double v16, v16, v20

    add-int/lit8 v20, p2, 0x3

    aget-wide v20, p1, v20

    add-int/lit8 v24, p2, 0xa

    aget-wide v24, p1, v24

    add-double v20, v20, v24

    mul-double v24, v2, v16

    mul-double v26, v4, v20

    sub-double v24, v24, v26

    mul-double v20, v20, v2

    mul-double v16, v16, v4

    add-double v16, v16, v20

    add-int/lit8 v20, p2, 0x2

    aget-wide v20, p1, v20

    add-int/lit8 v26, p2, 0xb

    aget-wide v26, p1, v26

    add-double v20, v20, v26

    add-int/lit8 v26, p2, 0x3

    aget-wide v26, p1, v26

    add-int/lit8 v28, p2, 0xa

    aget-wide v28, p1, v28

    sub-double v26, v26, v28

    mul-double v28, v4, v20

    mul-double v30, v2, v26

    sub-double v28, v28, v30

    mul-double v26, v26, v4

    mul-double v20, v20, v2

    add-double v20, v20, v26

    add-int/lit8 v26, p2, 0x6

    aget-wide v26, p1, v26

    add-int/lit8 v30, p2, 0xf

    aget-wide v30, p1, v30

    sub-double v26, v26, v30

    add-int/lit8 v30, p2, 0x7

    aget-wide v30, p1, v30

    add-int/lit8 v32, p2, 0xe

    aget-wide v32, p1, v32

    add-double v30, v30, v32

    mul-double v32, v4, v26

    mul-double v34, v2, v30

    sub-double v32, v32, v34

    mul-double v30, v30, v4

    mul-double v26, v26, v2

    add-double v26, v26, v30

    add-int/lit8 v30, p2, 0x6

    aget-wide v30, p1, v30

    add-int/lit8 v34, p2, 0xf

    aget-wide v34, p1, v34

    add-double v30, v30, v34

    add-int/lit8 v34, p2, 0x7

    aget-wide v34, p1, v34

    add-int/lit8 v36, p2, 0xe

    aget-wide v36, p1, v36

    sub-double v34, v34, v36

    mul-double v36, v2, v30

    mul-double v38, v4, v34

    sub-double v36, v36, v38

    mul-double v2, v2, v34

    mul-double v4, v4, v30

    add-double/2addr v2, v4

    add-double v4, v6, v18

    add-double v30, v8, v14

    add-double v34, v24, v32

    add-double v38, v16, v26

    add-double v40, v4, v34

    aput-wide v40, p1, p2

    add-int/lit8 v40, p2, 0x1

    add-double v41, v30, v38

    aput-wide v41, p1, v40

    add-int/lit8 v40, p2, 0x2

    sub-double v4, v4, v34

    aput-wide v4, p1, v40

    add-int/lit8 v4, p2, 0x3

    sub-double v30, v30, v38

    aput-wide v30, p1, v4

    sub-double v4, v6, v18

    sub-double v6, v8, v14

    sub-double v8, v24, v32

    sub-double v14, v16, v26

    add-int/lit8 v16, p2, 0x4

    sub-double v17, v4, v14

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x5

    add-double v17, v6, v8

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x6

    add-double/2addr v4, v14

    aput-wide v4, p1, v16

    add-int/lit8 v4, p2, 0x7

    sub-double v5, v6, v8

    aput-wide v5, p1, v4

    sub-double v4, v10, v0

    add-double v6, v12, v22

    sub-double v8, v28, v36

    sub-double v14, v20, v2

    add-int/lit8 v16, p2, 0x8

    add-double v17, v4, v8

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x9

    add-double v17, v6, v14

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0xa

    sub-double/2addr v4, v8

    aput-wide v4, p1, v16

    add-int/lit8 v4, p2, 0xb

    sub-double v5, v6, v14

    aput-wide v5, p1, v4

    add-double/2addr v0, v10

    sub-double v4, v12, v22

    add-double v6, v28, v36

    add-double v2, v2, v20

    add-int/lit8 v8, p2, 0xc

    sub-double v9, v0, v2

    aput-wide v9, p1, v8

    add-int/lit8 v8, p2, 0xd

    add-double v9, v4, v6

    aput-wide v9, p1, v8

    add-int/lit8 v8, p2, 0xe

    add-double/2addr v0, v2

    aput-wide v0, p1, v8

    add-int/lit8 v0, p2, 0xf

    sub-double v1, v4, v6

    aput-wide v1, p1, v0

    return-void
.end method

.method private cftf161([DI[DI)V
    .registers 83

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v2, p4, 0x2

    aget-wide v2, p3, v2

    add-int/lit8 v4, p4, 0x3

    aget-wide v4, p3, v4

    aget-wide v6, p1, p2

    add-int/lit8 v8, p2, 0x10

    aget-wide v8, p1, v8

    add-double/2addr v6, v8

    add-int/lit8 v8, p2, 0x1

    aget-wide v8, p1, v8

    add-int/lit8 v10, p2, 0x11

    aget-wide v10, p1, v10

    add-double/2addr v8, v10

    aget-wide v10, p1, p2

    add-int/lit8 v12, p2, 0x10

    aget-wide v12, p1, v12

    sub-double/2addr v10, v12

    add-int/lit8 v12, p2, 0x1

    aget-wide v12, p1, v12

    add-int/lit8 v14, p2, 0x11

    aget-wide v14, p1, v14

    sub-double/2addr v12, v14

    add-int/lit8 v14, p2, 0x8

    aget-wide v14, p1, v14

    add-int/lit8 v16, p2, 0x18

    aget-wide v16, p1, v16

    add-double v14, v14, v16

    add-int/lit8 v16, p2, 0x9

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x19

    aget-wide v18, p1, v18

    add-double v16, v16, v18

    add-int/lit8 v18, p2, 0x8

    aget-wide v18, p1, v18

    add-int/lit8 v20, p2, 0x18

    aget-wide v20, p1, v20

    sub-double v18, v18, v20

    add-int/lit8 v20, p2, 0x9

    aget-wide v20, p1, v20

    add-int/lit8 v22, p2, 0x19

    aget-wide v22, p1, v22

    sub-double v20, v20, v22

    add-double v22, v6, v14

    add-double v24, v8, v16

    sub-double/2addr v6, v14

    sub-double v8, v8, v16

    sub-double v14, v10, v20

    add-double v16, v12, v18

    add-double v10, v10, v20

    sub-double v12, v12, v18

    add-int/lit8 v18, p2, 0x2

    aget-wide v18, p1, v18

    add-int/lit8 v20, p2, 0x12

    aget-wide v20, p1, v20

    add-double v18, v18, v20

    add-int/lit8 v20, p2, 0x3

    aget-wide v20, p1, v20

    add-int/lit8 v26, p2, 0x13

    aget-wide v26, p1, v26

    add-double v20, v20, v26

    add-int/lit8 v26, p2, 0x2

    aget-wide v26, p1, v26

    add-int/lit8 v28, p2, 0x12

    aget-wide v28, p1, v28

    sub-double v26, v26, v28

    add-int/lit8 v28, p2, 0x3

    aget-wide v28, p1, v28

    add-int/lit8 v30, p2, 0x13

    aget-wide v30, p1, v30

    sub-double v28, v28, v30

    add-int/lit8 v30, p2, 0xa

    aget-wide v30, p1, v30

    add-int/lit8 v32, p2, 0x1a

    aget-wide v32, p1, v32

    add-double v30, v30, v32

    add-int/lit8 v32, p2, 0xb

    aget-wide v32, p1, v32

    add-int/lit8 v34, p2, 0x1b

    aget-wide v34, p1, v34

    add-double v32, v32, v34

    add-int/lit8 v34, p2, 0xa

    aget-wide v34, p1, v34

    add-int/lit8 v36, p2, 0x1a

    aget-wide v36, p1, v36

    sub-double v34, v34, v36

    add-int/lit8 v36, p2, 0xb

    aget-wide v36, p1, v36

    add-int/lit8 v38, p2, 0x1b

    aget-wide v38, p1, v38

    sub-double v36, v36, v38

    add-double v38, v18, v30

    add-double v40, v20, v32

    sub-double v18, v18, v30

    sub-double v20, v20, v32

    sub-double v30, v26, v36

    add-double v32, v28, v34

    mul-double v42, v2, v30

    mul-double v44, v4, v32

    sub-double v42, v42, v44

    mul-double v32, v32, v2

    mul-double v30, v30, v4

    add-double v30, v30, v32

    add-double v26, v26, v36

    sub-double v28, v28, v34

    mul-double v32, v4, v26

    mul-double v34, v2, v28

    sub-double v32, v32, v34

    mul-double v28, v28, v4

    mul-double v26, v26, v2

    add-double v26, v26, v28

    add-int/lit8 v28, p2, 0x4

    aget-wide v28, p1, v28

    add-int/lit8 v34, p2, 0x14

    aget-wide v34, p1, v34

    add-double v28, v28, v34

    add-int/lit8 v34, p2, 0x5

    aget-wide v34, p1, v34

    add-int/lit8 v36, p2, 0x15

    aget-wide v36, p1, v36

    add-double v34, v34, v36

    add-int/lit8 v36, p2, 0x4

    aget-wide v36, p1, v36

    add-int/lit8 v44, p2, 0x14

    aget-wide v44, p1, v44

    sub-double v36, v36, v44

    add-int/lit8 v44, p2, 0x5

    aget-wide v44, p1, v44

    add-int/lit8 v46, p2, 0x15

    aget-wide v46, p1, v46

    sub-double v44, v44, v46

    add-int/lit8 v46, p2, 0xc

    aget-wide v46, p1, v46

    add-int/lit8 v48, p2, 0x1c

    aget-wide v48, p1, v48

    add-double v46, v46, v48

    add-int/lit8 v48, p2, 0xd

    aget-wide v48, p1, v48

    add-int/lit8 v50, p2, 0x1d

    aget-wide v50, p1, v50

    add-double v48, v48, v50

    add-int/lit8 v50, p2, 0xc

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0x1c

    aget-wide v52, p1, v52

    sub-double v50, v50, v52

    add-int/lit8 v52, p2, 0xd

    aget-wide v52, p1, v52

    add-int/lit8 v54, p2, 0x1d

    aget-wide v54, p1, v54

    sub-double v52, v52, v54

    add-double v54, v28, v46

    add-double v56, v34, v48

    sub-double v28, v28, v46

    sub-double v34, v34, v48

    sub-double v46, v36, v52

    add-double v48, v44, v50

    sub-double v58, v46, v48

    mul-double v58, v58, v0

    add-double v46, v46, v48

    mul-double v46, v46, v0

    add-double v36, v36, v52

    sub-double v44, v44, v50

    add-double v48, v36, v44

    mul-double v48, v48, v0

    sub-double v36, v44, v36

    mul-double v36, v36, v0

    add-int/lit8 v44, p2, 0x6

    aget-wide v44, p1, v44

    add-int/lit8 v50, p2, 0x16

    aget-wide v50, p1, v50

    add-double v44, v44, v50

    add-int/lit8 v50, p2, 0x7

    aget-wide v50, p1, v50

    add-int/lit8 v52, p2, 0x17

    aget-wide v52, p1, v52

    add-double v50, v50, v52

    add-int/lit8 v52, p2, 0x6

    aget-wide v52, p1, v52

    add-int/lit8 v60, p2, 0x16

    aget-wide v60, p1, v60

    sub-double v52, v52, v60

    add-int/lit8 v60, p2, 0x7

    aget-wide v60, p1, v60

    add-int/lit8 v62, p2, 0x17

    aget-wide v62, p1, v62

    sub-double v60, v60, v62

    add-int/lit8 v62, p2, 0xe

    aget-wide v62, p1, v62

    add-int/lit8 v64, p2, 0x1e

    aget-wide v64, p1, v64

    add-double v62, v62, v64

    add-int/lit8 v64, p2, 0xf

    aget-wide v64, p1, v64

    add-int/lit8 v66, p2, 0x1f

    aget-wide v66, p1, v66

    add-double v64, v64, v66

    add-int/lit8 v66, p2, 0xe

    aget-wide v66, p1, v66

    add-int/lit8 v68, p2, 0x1e

    aget-wide v68, p1, v68

    sub-double v66, v66, v68

    add-int/lit8 v68, p2, 0xf

    aget-wide v68, p1, v68

    add-int/lit8 v70, p2, 0x1f

    aget-wide v70, p1, v70

    sub-double v68, v68, v70

    add-double v70, v44, v62

    add-double v72, v50, v64

    sub-double v44, v44, v62

    sub-double v50, v50, v64

    sub-double v62, v52, v68

    add-double v64, v60, v66

    mul-double v74, v4, v62

    mul-double v76, v2, v64

    sub-double v74, v74, v76

    mul-double v64, v64, v4

    mul-double v62, v62, v2

    add-double v62, v62, v64

    add-double v52, v52, v68

    sub-double v60, v60, v66

    mul-double v64, v2, v52

    mul-double v66, v4, v60

    sub-double v64, v64, v66

    mul-double v2, v2, v60

    mul-double v4, v4, v52

    add-double/2addr v2, v4

    sub-double v4, v10, v48

    sub-double v52, v12, v36

    add-double v10, v10, v48

    add-double v12, v12, v36

    sub-double v36, v32, v64

    sub-double v48, v26, v2

    add-double v32, v32, v64

    add-double v2, v2, v26

    add-int/lit8 v26, p2, 0x18

    add-double v60, v4, v36

    aput-wide v60, p1, v26

    add-int/lit8 v26, p2, 0x19

    add-double v60, v52, v48

    aput-wide v60, p1, v26

    add-int/lit8 v26, p2, 0x1a

    sub-double v4, v4, v36

    aput-wide v4, p1, v26

    add-int/lit8 v4, p2, 0x1b

    sub-double v26, v52, v48

    aput-wide v26, p1, v4

    add-int/lit8 v4, p2, 0x1c

    sub-double v26, v10, v2

    aput-wide v26, p1, v4

    add-int/lit8 v4, p2, 0x1d

    add-double v26, v12, v32

    aput-wide v26, p1, v4

    add-int/lit8 v4, p2, 0x1e

    add-double/2addr v2, v10

    aput-wide v2, p1, v4

    add-int/lit8 v2, p2, 0x1f

    sub-double v3, v12, v32

    aput-wide v3, p1, v2

    add-double v2, v14, v58

    add-double v4, v16, v46

    sub-double v10, v14, v58

    sub-double v12, v16, v46

    add-double v14, v42, v74

    add-double v16, v30, v62

    sub-double v26, v42, v74

    sub-double v30, v30, v62

    add-int/lit8 v32, p2, 0x10

    add-double v36, v2, v14

    aput-wide v36, p1, v32

    add-int/lit8 v32, p2, 0x11

    add-double v36, v4, v16

    aput-wide v36, p1, v32

    add-int/lit8 v32, p2, 0x12

    sub-double/2addr v2, v14

    aput-wide v2, p1, v32

    add-int/lit8 v2, p2, 0x13

    sub-double v3, v4, v16

    aput-wide v3, p1, v2

    add-int/lit8 v2, p2, 0x14

    sub-double v3, v10, v30

    aput-wide v3, p1, v2

    add-int/lit8 v2, p2, 0x15

    add-double v3, v12, v26

    aput-wide v3, p1, v2

    add-int/lit8 v2, p2, 0x16

    add-double v3, v10, v30

    aput-wide v3, p1, v2

    add-int/lit8 v2, p2, 0x17

    sub-double v3, v12, v26

    aput-wide v3, p1, v2

    sub-double v2, v18, v50

    add-double v4, v20, v44

    sub-double v10, v2, v4

    mul-double/2addr v10, v0

    add-double/2addr v2, v4

    mul-double/2addr v2, v0

    add-double v4, v18, v50

    sub-double v12, v20, v44

    sub-double v14, v4, v12

    mul-double/2addr v14, v0

    add-double/2addr v4, v12

    mul-double/2addr v0, v4

    sub-double v4, v6, v34

    add-double v12, v8, v28

    add-double v6, v6, v34

    sub-double v8, v8, v28

    add-int/lit8 v16, p2, 0x8

    add-double v17, v4, v10

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x9

    add-double v17, v12, v2

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0xa

    sub-double/2addr v4, v10

    aput-wide v4, p1, v16

    add-int/lit8 v4, p2, 0xb

    sub-double v2, v12, v2

    aput-wide v2, p1, v4

    add-int/lit8 v2, p2, 0xc

    sub-double v3, v6, v0

    aput-wide v3, p1, v2

    add-int/lit8 v2, p2, 0xd

    add-double v3, v8, v14

    aput-wide v3, p1, v2

    add-int/lit8 v2, p2, 0xe

    add-double/2addr v0, v6

    aput-wide v0, p1, v2

    add-int/lit8 v0, p2, 0xf

    sub-double v1, v8, v14

    aput-wide v1, p1, v0

    add-double v0, v22, v54

    add-double v2, v24, v56

    sub-double v4, v22, v54

    sub-double v6, v24, v56

    add-double v8, v38, v70

    add-double v10, v40, v72

    sub-double v12, v38, v70

    sub-double v14, v40, v72

    add-double v16, v0, v8

    aput-wide v16, p1, p2

    add-int/lit8 v16, p2, 0x1

    add-double v17, v2, v10

    aput-wide v17, p1, v16

    add-int/lit8 v16, p2, 0x2

    sub-double/2addr v0, v8

    aput-wide v0, p1, v16

    add-int/lit8 v0, p2, 0x3

    sub-double v1, v2, v10

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x4

    sub-double v1, v4, v14

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x5

    add-double v1, v6, v12

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x6

    add-double v1, v4, v14

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x7

    sub-double v1, v6, v12

    aput-wide v1, p1, v0

    return-void
.end method

.method private cftf162([DI[DI)V
    .registers 82

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v2, p4, 0x4

    aget-wide v2, p3, v2

    add-int/lit8 v4, p4, 0x5

    aget-wide v4, p3, v4

    add-int/lit8 v6, p4, 0x6

    aget-wide v6, p3, v6

    add-int/lit8 v8, p4, 0x7

    aget-wide v8, p3, v8

    neg-double v8, v8

    add-int/lit8 v10, p4, 0x8

    aget-wide v10, p3, v10

    add-int/lit8 v12, p4, 0x9

    aget-wide v12, p3, v12

    aget-wide v14, p1, p2

    add-int/lit8 v16, p2, 0x11

    aget-wide v16, p1, v16

    sub-double v14, v14, v16

    add-int/lit8 v16, p2, 0x1

    aget-wide v16, p1, v16

    add-int/lit8 v18, p2, 0x10

    aget-wide v18, p1, v18

    add-double v16, v16, v18

    add-int/lit8 v18, p2, 0x8

    aget-wide v18, p1, v18

    add-int/lit8 v20, p2, 0x19

    aget-wide v20, p1, v20

    sub-double v18, v18, v20

    add-int/lit8 v20, p2, 0x9

    aget-wide v20, p1, v20

    add-int/lit8 v22, p2, 0x18

    aget-wide v22, p1, v22

    add-double v20, v20, v22

    sub-double v22, v18, v20

    mul-double v22, v22, v0

    add-double v18, v18, v20

    mul-double v18, v18, v0

    add-double v20, v14, v22

    add-double v24, v16, v18

    sub-double v14, v14, v22

    sub-double v16, v16, v18

    aget-wide v18, p1, p2

    add-int/lit8 v22, p2, 0x11

    aget-wide v22, p1, v22

    add-double v18, v18, v22

    add-int/lit8 v22, p2, 0x1

    aget-wide v22, p1, v22

    add-int/lit8 v26, p2, 0x10

    aget-wide v26, p1, v26

    sub-double v22, v22, v26

    add-int/lit8 v26, p2, 0x8

    aget-wide v26, p1, v26

    add-int/lit8 v28, p2, 0x19

    aget-wide v28, p1, v28

    add-double v26, v26, v28

    add-int/lit8 v28, p2, 0x9

    aget-wide v28, p1, v28

    add-int/lit8 v30, p2, 0x18

    aget-wide v30, p1, v30

    sub-double v28, v28, v30

    sub-double v30, v26, v28

    mul-double v30, v30, v0

    add-double v26, v26, v28

    mul-double v26, v26, v0

    sub-double v28, v18, v26

    add-double v32, v22, v30

    add-double v18, v18, v26

    sub-double v22, v22, v30

    add-int/lit8 v26, p2, 0x2

    aget-wide v26, p1, v26

    add-int/lit8 v30, p2, 0x13

    aget-wide v30, p1, v30

    sub-double v26, v26, v30

    add-int/lit8 v30, p2, 0x3

    aget-wide v30, p1, v30

    add-int/lit8 v34, p2, 0x12

    aget-wide v34, p1, v34

    add-double v30, v30, v34

    mul-double v34, v2, v26

    mul-double v36, v4, v30

    sub-double v34, v34, v36

    mul-double v30, v30, v2

    mul-double v26, v26, v4

    add-double v26, v26, v30

    add-int/lit8 v30, p2, 0xa

    aget-wide v30, p1, v30

    add-int/lit8 v36, p2, 0x1b

    aget-wide v36, p1, v36

    sub-double v30, v30, v36

    add-int/lit8 v36, p2, 0xb

    aget-wide v36, p1, v36

    add-int/lit8 v38, p2, 0x1a

    aget-wide v38, p1, v38

    add-double v36, v36, v38

    mul-double v38, v8, v30

    mul-double v40, v6, v36

    sub-double v38, v38, v40

    mul-double v36, v36, v8

    mul-double v30, v30, v6

    add-double v30, v30, v36

    add-double v36, v34, v38

    add-double v40, v26, v30

    sub-double v34, v34, v38

    sub-double v26, v26, v30

    add-int/lit8 v30, p2, 0x2

    aget-wide v30, p1, v30

    add-int/lit8 v38, p2, 0x13

    aget-wide v38, p1, v38

    add-double v30, v30, v38

    add-int/lit8 v38, p2, 0x3

    aget-wide v38, p1, v38

    add-int/lit8 v42, p2, 0x12

    aget-wide v42, p1, v42

    sub-double v38, v38, v42

    mul-double v42, v6, v30

    mul-double v44, v8, v38

    sub-double v42, v42, v44

    mul-double v38, v38, v6

    mul-double v30, v30, v8

    add-double v30, v30, v38

    add-int/lit8 v38, p2, 0xa

    aget-wide v38, p1, v38

    add-int/lit8 v44, p2, 0x1b

    aget-wide v44, p1, v44

    add-double v38, v38, v44

    add-int/lit8 v44, p2, 0xb

    aget-wide v44, p1, v44

    add-int/lit8 v46, p2, 0x1a

    aget-wide v46, p1, v46

    sub-double v44, v44, v46

    mul-double v46, v2, v38

    mul-double v48, v4, v44

    add-double v46, v46, v48

    mul-double v44, v44, v2

    mul-double v38, v38, v4

    sub-double v38, v44, v38

    sub-double v44, v42, v46

    sub-double v48, v30, v38

    add-double v42, v42, v46

    add-double v30, v30, v38

    add-int/lit8 v38, p2, 0x4

    aget-wide v38, p1, v38

    add-int/lit8 v46, p2, 0x15

    aget-wide v46, p1, v46

    sub-double v38, v38, v46

    add-int/lit8 v46, p2, 0x5

    aget-wide v46, p1, v46

    add-int/lit8 v50, p2, 0x14

    aget-wide v50, p1, v50

    add-double v46, v46, v50

    mul-double v50, v10, v38

    mul-double v52, v12, v46

    sub-double v50, v50, v52

    mul-double v46, v46, v10

    mul-double v38, v38, v12

    add-double v38, v38, v46

    add-int/lit8 v46, p2, 0xc

    aget-wide v46, p1, v46

    add-int/lit8 v52, p2, 0x1d

    aget-wide v52, p1, v52

    sub-double v46, v46, v52

    add-int/lit8 v52, p2, 0xd

    aget-wide v52, p1, v52

    add-int/lit8 v54, p2, 0x1c

    aget-wide v54, p1, v54

    add-double v52, v52, v54

    mul-double v54, v12, v46

    mul-double v56, v10, v52

    sub-double v54, v54, v56

    mul-double v52, v52, v12

    mul-double v46, v46, v10

    add-double v46, v46, v52

    add-double v52, v50, v54

    add-double v56, v38, v46

    sub-double v50, v50, v54

    sub-double v38, v38, v46

    add-int/lit8 v46, p2, 0x4

    aget-wide v46, p1, v46

    add-int/lit8 v54, p2, 0x15

    aget-wide v54, p1, v54

    add-double v46, v46, v54

    add-int/lit8 v54, p2, 0x5

    aget-wide v54, p1, v54

    add-int/lit8 v58, p2, 0x14

    aget-wide v58, p1, v58

    sub-double v54, v54, v58

    mul-double v58, v12, v46

    mul-double v60, v10, v54

    sub-double v58, v58, v60

    mul-double v54, v54, v12

    mul-double v46, v46, v10

    add-double v46, v46, v54

    add-int/lit8 v54, p2, 0xc

    aget-wide v54, p1, v54

    add-int/lit8 v60, p2, 0x1d

    aget-wide v60, p1, v60

    add-double v54, v54, v60

    add-int/lit8 v60, p2, 0xd

    aget-wide v60, p1, v60

    add-int/lit8 v62, p2, 0x1c

    aget-wide v62, p1, v62

    sub-double v60, v60, v62

    mul-double v62, v10, v54

    mul-double v64, v12, v60

    sub-double v62, v62, v64

    mul-double v10, v10, v60

    mul-double v12, v12, v54

    add-double/2addr v10, v12

    sub-double v12, v58, v62

    sub-double v54, v46, v10

    add-double v58, v58, v62

    add-double v10, v10, v46

    add-int/lit8 v46, p2, 0x6

    aget-wide v46, p1, v46

    add-int/lit8 v60, p2, 0x17

    aget-wide v60, p1, v60

    sub-double v46, v46, v60

    add-int/lit8 v60, p2, 0x7

    aget-wide v60, p1, v60

    add-int/lit8 v62, p2, 0x16

    aget-wide v62, p1, v62

    add-double v60, v60, v62

    mul-double v62, v6, v46

    mul-double v64, v8, v60

    sub-double v62, v62, v64

    mul-double v60, v60, v6

    mul-double v46, v46, v8

    add-double v46, v46, v60

    add-int/lit8 v60, p2, 0xe

    aget-wide v60, p1, v60

    add-int/lit8 v64, p2, 0x1f

    aget-wide v64, p1, v64

    sub-double v60, v60, v64

    add-int/lit8 v64, p2, 0xf

    aget-wide v64, p1, v64

    add-int/lit8 v66, p2, 0x1e

    aget-wide v66, p1, v66

    add-double v64, v64, v66

    mul-double v66, v4, v60

    mul-double v68, v2, v64

    sub-double v66, v66, v68

    mul-double v64, v64, v4

    mul-double v60, v60, v2

    add-double v60, v60, v64

    add-double v64, v62, v66

    add-double v68, v46, v60

    sub-double v62, v62, v66

    sub-double v46, v46, v60

    add-int/lit8 v60, p2, 0x6

    aget-wide v60, p1, v60

    add-int/lit8 v66, p2, 0x17

    aget-wide v66, p1, v66

    add-double v60, v60, v66

    add-int/lit8 v66, p2, 0x7

    aget-wide v66, p1, v66

    add-int/lit8 v70, p2, 0x16

    aget-wide v70, p1, v70

    sub-double v66, v66, v70

    mul-double v70, v4, v60

    mul-double v72, v2, v66

    add-double v70, v70, v72

    mul-double v4, v4, v66

    mul-double v2, v2, v60

    sub-double v2, v4, v2

    add-int/lit8 v4, p2, 0xe

    aget-wide v4, p1, v4

    add-int/lit8 v60, p2, 0x1f

    aget-wide v60, p1, v60

    add-double v4, v4, v60

    add-int/lit8 v60, p2, 0xf

    aget-wide v60, p1, v60

    add-int/lit8 v66, p2, 0x1e

    aget-wide v66, p1, v66

    sub-double v60, v60, v66

    mul-double v66, v8, v4

    mul-double v72, v6, v60

    sub-double v66, v66, v72

    mul-double v8, v8, v60

    mul-double/2addr v4, v6

    add-double/2addr v4, v8

    add-double v6, v70, v66

    add-double v8, v2, v4

    sub-double v60, v70, v66

    sub-double/2addr v2, v4

    add-double v4, v20, v52

    add-double v66, v24, v56

    add-double v70, v36, v64

    add-double v72, v40, v68

    add-double v74, v4, v70

    aput-wide v74, p1, p2

    add-int/lit8 v74, p2, 0x1

    add-double v75, v66, v72

    aput-wide v75, p1, v74

    add-int/lit8 v74, p2, 0x2

    sub-double v4, v4, v70

    aput-wide v4, p1, v74

    add-int/lit8 v4, p2, 0x3

    sub-double v66, v66, v72

    aput-wide v66, p1, v4

    sub-double v4, v20, v52

    sub-double v20, v24, v56

    sub-double v24, v36, v64

    sub-double v36, v40, v68

    add-int/lit8 v40, p2, 0x4

    sub-double v52, v4, v36

    aput-wide v52, p1, v40

    add-int/lit8 v40, p2, 0x5

    add-double v52, v20, v24

    aput-wide v52, p1, v40

    add-int/lit8 v40, p2, 0x6

    add-double v4, v4, v36

    aput-wide v4, p1, v40

    add-int/lit8 v4, p2, 0x7

    sub-double v20, v20, v24

    aput-wide v20, p1, v4

    sub-double v4, v14, v38

    add-double v20, v16, v50

    sub-double v24, v34, v46

    add-double v36, v26, v62

    sub-double v40, v24, v36

    mul-double v40, v40, v0

    add-double v24, v24, v36

    mul-double v24, v24, v0

    add-int/lit8 v36, p2, 0x8

    add-double v52, v4, v40

    aput-wide v52, p1, v36

    add-int/lit8 v36, p2, 0x9

    add-double v52, v20, v24

    aput-wide v52, p1, v36

    add-int/lit8 v36, p2, 0xa

    sub-double v4, v4, v40

    aput-wide v4, p1, v36

    add-int/lit8 v4, p2, 0xb

    sub-double v20, v20, v24

    aput-wide v20, p1, v4

    add-double v4, v14, v38

    sub-double v14, v16, v50

    add-double v16, v34, v46

    sub-double v20, v26, v62

    sub-double v24, v16, v20

    mul-double v24, v24, v0

    add-double v16, v16, v20

    mul-double v16, v16, v0

    add-int/lit8 v20, p2, 0xc

    sub-double v26, v4, v16

    aput-wide v26, p1, v20

    add-int/lit8 v20, p2, 0xd

    add-double v26, v14, v24

    aput-wide v26, p1, v20

    add-int/lit8 v20, p2, 0xe

    add-double v4, v4, v16

    aput-wide v4, p1, v20

    add-int/lit8 v4, p2, 0xf

    sub-double v14, v14, v24

    aput-wide v14, p1, v4

    add-double v4, v28, v12

    add-double v14, v32, v54

    sub-double v16, v44, v6

    sub-double v20, v48, v8

    add-int/lit8 v24, p2, 0x10

    add-double v25, v4, v16

    aput-wide v25, p1, v24

    add-int/lit8 v24, p2, 0x11

    add-double v25, v14, v20

    aput-wide v25, p1, v24

    add-int/lit8 v24, p2, 0x12

    sub-double v4, v4, v16

    aput-wide v4, p1, v24

    add-int/lit8 v4, p2, 0x13

    sub-double v14, v14, v20

    aput-wide v14, p1, v4

    sub-double v4, v28, v12

    sub-double v12, v32, v54

    add-double v6, v6, v44

    add-double v8, v8, v48

    add-int/lit8 v14, p2, 0x14

    sub-double v15, v4, v8

    aput-wide v15, p1, v14

    add-int/lit8 v14, p2, 0x15

    add-double v15, v12, v6

    aput-wide v15, p1, v14

    add-int/lit8 v14, p2, 0x16

    add-double/2addr v4, v8

    aput-wide v4, p1, v14

    add-int/lit8 v4, p2, 0x17

    sub-double v5, v12, v6

    aput-wide v5, p1, v4

    sub-double v4, v18, v10

    add-double v6, v22, v58

    add-double v8, v42, v2

    sub-double v12, v30, v60

    sub-double v14, v8, v12

    mul-double/2addr v14, v0

    add-double/2addr v8, v12

    mul-double/2addr v8, v0

    add-int/lit8 v12, p2, 0x18

    add-double v16, v4, v14

    aput-wide v16, p1, v12

    add-int/lit8 v12, p2, 0x19

    add-double v16, v6, v8

    aput-wide v16, p1, v12

    add-int/lit8 v12, p2, 0x1a

    sub-double/2addr v4, v14

    aput-wide v4, p1, v12

    add-int/lit8 v4, p2, 0x1b

    sub-double v5, v6, v8

    aput-wide v5, p1, v4

    add-double v4, v18, v10

    sub-double v6, v22, v58

    sub-double v2, v42, v2

    add-double v8, v30, v60

    sub-double v10, v2, v8

    mul-double/2addr v10, v0

    add-double/2addr v2, v8

    mul-double/2addr v0, v2

    add-int/lit8 v2, p2, 0x1c

    sub-double v8, v4, v0

    aput-wide v8, p1, v2

    add-int/lit8 v2, p2, 0x1d

    add-double v8, v6, v10

    aput-wide v8, p1, v2

    add-int/lit8 v2, p2, 0x1e

    add-double/2addr v0, v4

    aput-wide v0, p1, v2

    add-int/lit8 v0, p2, 0x1f

    sub-double v1, v6, v10

    aput-wide v1, p1, v0

    return-void
.end method

.method private cftf1st(I[DI[DI)V
    .registers 74

    shr-int/lit8 v12, p1, 0x3

    mul-int/lit8 v13, v12, 0x2

    add-int v2, v13, v13

    add-int v3, v2, v13

    add-int v4, p3, v13

    add-int v2, v2, p3

    add-int v3, v3, p3

    aget-wide v5, p2, p3

    aget-wide v7, p2, v2

    add-double/2addr v5, v7

    add-int/lit8 v7, p3, 0x1

    aget-wide v7, p2, v7

    add-int/lit8 v9, v2, 0x1

    aget-wide v9, p2, v9

    add-double/2addr v7, v9

    aget-wide v9, p2, p3

    aget-wide v14, p2, v2

    sub-double/2addr v9, v14

    add-int/lit8 v11, p3, 0x1

    aget-wide v14, p2, v11

    add-int/lit8 v11, v2, 0x1

    aget-wide v16, p2, v11

    sub-double v14, v14, v16

    aget-wide v16, p2, v4

    aget-wide v18, p2, v3

    add-double v16, v16, v18

    add-int/lit8 v11, v4, 0x1

    aget-wide v18, p2, v11

    add-int/lit8 v11, v3, 0x1

    aget-wide v20, p2, v11

    add-double v18, v18, v20

    aget-wide v20, p2, v4

    aget-wide v22, p2, v3

    sub-double v20, v20, v22

    add-int/lit8 v11, v4, 0x1

    aget-wide v22, p2, v11

    add-int/lit8 v11, v3, 0x1

    aget-wide v24, p2, v11

    sub-double v22, v22, v24

    add-double v24, v5, v16

    aput-wide v24, p2, p3

    add-int/lit8 v11, p3, 0x1

    add-double v24, v7, v18

    aput-wide v24, p2, v11

    sub-double v5, v5, v16

    aput-wide v5, p2, v4

    add-int/lit8 v4, v4, 0x1

    sub-double v5, v7, v18

    aput-wide v5, p2, v4

    sub-double v4, v9, v22

    aput-wide v4, p2, v2

    add-int/lit8 v2, v2, 0x1

    add-double v4, v14, v20

    aput-wide v4, p2, v2

    add-double v4, v9, v22

    aput-wide v4, p2, v3

    add-int/lit8 v2, v3, 0x1

    sub-double v3, v14, v20

    aput-wide v3, p2, v2

    add-int/lit8 v2, p5, 0x1

    aget-wide v14, p4, v2

    add-int/lit8 v2, p5, 0x2

    aget-wide v16, p4, v2

    add-int/lit8 v2, p5, 0x3

    aget-wide v18, p4, v2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x2

    :goto_89
    add-int/lit8 v20, v12, -0x2

    move/from16 v0, v20

    if-ge v2, v0, :cond_312

    add-int/lit8 v11, v11, 0x4

    add-int v20, p5, v11

    aget-wide v21, p4, v20

    add-double v9, v9, v21

    mul-double v21, v16, v9

    add-int/lit8 v9, v20, 0x1

    aget-wide v9, p4, v9

    add-double/2addr v7, v9

    mul-double v23, v16, v7

    add-int/lit8 v7, v20, 0x2

    aget-wide v7, p4, v7

    add-double/2addr v5, v7

    mul-double v25, v18, v5

    add-int/lit8 v5, v20, 0x3

    aget-wide v5, p4, v5

    add-double/2addr v3, v5

    mul-double v27, v18, v3

    aget-wide v9, p4, v20

    add-int/lit8 v3, v20, 0x1

    aget-wide v7, p4, v3

    add-int/lit8 v3, v20, 0x2

    aget-wide v5, p4, v3

    add-int/lit8 v3, v20, 0x3

    aget-wide v3, p4, v3

    add-int v20, v2, v13

    add-int v29, v20, v13

    add-int v30, v29, v13

    add-int v20, v20, p3

    add-int v29, v29, p3

    add-int v30, v30, p3

    add-int v31, p3, v2

    aget-wide v32, p2, v31

    aget-wide v34, p2, v29

    add-double v32, v32, v34

    add-int/lit8 v34, v31, 0x1

    aget-wide v34, p2, v34

    add-int/lit8 v36, v29, 0x1

    aget-wide v36, p2, v36

    add-double v34, v34, v36

    aget-wide v36, p2, v31

    aget-wide v38, p2, v29

    sub-double v36, v36, v38

    add-int/lit8 v38, v31, 0x1

    aget-wide v38, p2, v38

    add-int/lit8 v40, v29, 0x1

    aget-wide v40, p2, v40

    sub-double v38, v38, v40

    add-int/lit8 v40, v31, 0x2

    aget-wide v40, p2, v40

    add-int/lit8 v42, v29, 0x2

    aget-wide v42, p2, v42

    add-double v40, v40, v42

    add-int/lit8 v42, v31, 0x3

    aget-wide v42, p2, v42

    add-int/lit8 v44, v29, 0x3

    aget-wide v44, p2, v44

    add-double v42, v42, v44

    add-int/lit8 v44, v31, 0x2

    aget-wide v44, p2, v44

    add-int/lit8 v46, v29, 0x2

    aget-wide v46, p2, v46

    sub-double v44, v44, v46

    add-int/lit8 v46, v31, 0x3

    aget-wide v46, p2, v46

    add-int/lit8 v48, v29, 0x3

    aget-wide v48, p2, v48

    sub-double v46, v46, v48

    aget-wide v48, p2, v20

    aget-wide v50, p2, v30

    add-double v48, v48, v50

    add-int/lit8 v50, v20, 0x1

    aget-wide v50, p2, v50

    add-int/lit8 v52, v30, 0x1

    aget-wide v52, p2, v52

    add-double v50, v50, v52

    aget-wide v52, p2, v20

    aget-wide v54, p2, v30

    sub-double v52, v52, v54

    add-int/lit8 v54, v20, 0x1

    aget-wide v54, p2, v54

    add-int/lit8 v56, v30, 0x1

    aget-wide v56, p2, v56

    sub-double v54, v54, v56

    add-int/lit8 v56, v20, 0x2

    aget-wide v56, p2, v56

    add-int/lit8 v58, v30, 0x2

    aget-wide v58, p2, v58

    add-double v56, v56, v58

    add-int/lit8 v58, v20, 0x3

    aget-wide v58, p2, v58

    add-int/lit8 v60, v30, 0x3

    aget-wide v60, p2, v60

    add-double v58, v58, v60

    add-int/lit8 v60, v20, 0x2

    aget-wide v60, p2, v60

    add-int/lit8 v62, v30, 0x2

    aget-wide v62, p2, v62

    sub-double v60, v60, v62

    add-int/lit8 v62, v20, 0x3

    aget-wide v62, p2, v62

    add-int/lit8 v64, v30, 0x3

    aget-wide v64, p2, v64

    sub-double v62, v62, v64

    add-double v64, v32, v48

    aput-wide v64, p2, v31

    add-int/lit8 v64, v31, 0x1

    add-double v65, v34, v50

    aput-wide v65, p2, v64

    add-int/lit8 v64, v31, 0x2

    add-double v65, v40, v56

    aput-wide v65, p2, v64

    add-int/lit8 v31, v31, 0x3

    add-double v64, v42, v58

    aput-wide v64, p2, v31

    sub-double v31, v32, v48

    aput-wide v31, p2, v20

    add-int/lit8 v31, v20, 0x1

    sub-double v32, v34, v50

    aput-wide v32, p2, v31

    add-int/lit8 v31, v20, 0x2

    sub-double v32, v40, v56

    aput-wide v32, p2, v31

    add-int/lit8 v20, v20, 0x3

    sub-double v31, v42, v58

    aput-wide v31, p2, v20

    sub-double v31, v36, v54

    add-double v33, v38, v52

    mul-double v40, v21, v31

    mul-double v42, v23, v33

    sub-double v40, v40, v42

    aput-wide v40, p2, v29

    add-int/lit8 v20, v29, 0x1

    mul-double v33, v33, v21

    mul-double v31, v31, v23

    add-double v31, v31, v33

    aput-wide v31, p2, v20

    sub-double v31, v44, v62

    add-double v33, v46, v60

    add-int/lit8 v20, v29, 0x2

    mul-double v40, v9, v31

    mul-double v42, v7, v33

    sub-double v40, v40, v42

    aput-wide v40, p2, v20

    add-int/lit8 v20, v29, 0x3

    mul-double v33, v33, v9

    mul-double v31, v31, v7

    add-double v31, v31, v33

    aput-wide v31, p2, v20

    add-double v31, v36, v54

    sub-double v33, v38, v52

    mul-double v35, v25, v31

    mul-double v37, v27, v33

    add-double v35, v35, v37

    aput-wide v35, p2, v30

    add-int/lit8 v20, v30, 0x1

    mul-double v33, v33, v25

    mul-double v31, v31, v27

    sub-double v31, v33, v31

    aput-wide v31, p2, v20

    add-double v31, v44, v62

    sub-double v33, v46, v60

    add-int/lit8 v20, v30, 0x2

    mul-double v35, v5, v31

    mul-double v37, v3, v33

    add-double v35, v35, v37

    aput-wide v35, p2, v20

    add-int/lit8 v20, v30, 0x3

    mul-double v29, v5, v33

    mul-double v31, v31, v3

    sub-double v29, v29, v31

    aput-wide v29, p2, v20

    sub-int v20, v13, v2

    add-int v29, v20, v13

    add-int v30, v29, v13

    add-int v31, v30, v13

    add-int v20, v20, p3

    add-int v29, v29, p3

    add-int v30, v30, p3

    add-int v32, p3, v31

    aget-wide v33, p2, v20

    aget-wide v35, p2, v30

    add-double v33, v33, v35

    add-int/lit8 v35, v20, 0x1

    aget-wide v35, p2, v35

    add-int/lit8 v37, v30, 0x1

    aget-wide v37, p2, v37

    add-double v35, v35, v37

    aget-wide v37, p2, v20

    aget-wide v39, p2, v30

    sub-double v37, v37, v39

    add-int/lit8 v39, v20, 0x1

    aget-wide v39, p2, v39

    add-int/lit8 v41, v30, 0x1

    aget-wide v41, p2, v41

    sub-double v39, v39, v41

    add-int/lit8 v41, v20, -0x2

    aget-wide v41, p2, v41

    add-int/lit8 v43, v30, -0x2

    aget-wide v43, p2, v43

    add-double v41, v41, v43

    add-int/lit8 v43, v20, -0x1

    aget-wide v43, p2, v43

    add-int/lit8 v45, v30, -0x1

    aget-wide v45, p2, v45

    add-double v43, v43, v45

    add-int/lit8 v45, v20, -0x2

    aget-wide v45, p2, v45

    add-int/lit8 v47, v30, -0x2

    aget-wide v47, p2, v47

    sub-double v45, v45, v47

    add-int/lit8 v47, v20, -0x1

    aget-wide v47, p2, v47

    add-int/lit8 v49, v30, -0x1

    aget-wide v49, p2, v49

    sub-double v47, v47, v49

    aget-wide v49, p2, v29

    aget-wide v51, p2, v32

    add-double v49, v49, v51

    add-int/lit8 v51, v29, 0x1

    aget-wide v51, p2, v51

    add-int/lit8 v53, v32, 0x1

    aget-wide v53, p2, v53

    add-double v51, v51, v53

    aget-wide v53, p2, v29

    aget-wide v55, p2, v32

    sub-double v53, v53, v55

    add-int/lit8 v55, v29, 0x1

    aget-wide v55, p2, v55

    add-int/lit8 v57, v32, 0x1

    aget-wide v57, p2, v57

    sub-double v55, v55, v57

    add-int/lit8 v57, v29, -0x2

    aget-wide v57, p2, v57

    add-int/lit8 v59, v32, -0x2

    aget-wide v59, p2, v59

    add-double v57, v57, v59

    add-int/lit8 v59, v29, -0x1

    aget-wide v59, p2, v59

    add-int/lit8 v61, v32, -0x1

    aget-wide v61, p2, v61

    add-double v59, v59, v61

    add-int/lit8 v61, v29, -0x2

    aget-wide v61, p2, v61

    add-int/lit8 v63, v32, -0x2

    aget-wide v63, p2, v63

    sub-double v61, v61, v63

    add-int/lit8 v63, v29, -0x1

    aget-wide v63, p2, v63

    add-int/lit8 v65, v32, -0x1

    aget-wide v65, p2, v65

    sub-double v63, v63, v65

    add-double v65, v33, v49

    aput-wide v65, p2, v20

    add-int/lit8 v65, v20, 0x1

    add-double v66, v35, v51

    aput-wide v66, p2, v65

    add-int/lit8 v65, v20, -0x2

    add-double v66, v41, v57

    aput-wide v66, p2, v65

    add-int/lit8 v20, v20, -0x1

    add-double v65, v43, v59

    aput-wide v65, p2, v20

    sub-double v33, v33, v49

    aput-wide v33, p2, v29

    add-int/lit8 v20, v29, 0x1

    sub-double v33, v35, v51

    aput-wide v33, p2, v20

    add-int/lit8 v20, v29, -0x2

    sub-double v33, v41, v57

    aput-wide v33, p2, v20

    add-int/lit8 v20, v29, -0x1

    sub-double v33, v43, v59

    aput-wide v33, p2, v20

    sub-double v33, v37, v55

    add-double v35, v39, v53

    mul-double v41, v23, v33

    mul-double v43, v21, v35

    sub-double v41, v41, v43

    aput-wide v41, p2, v30

    add-int/lit8 v20, v30, 0x1

    mul-double v23, v23, v35

    mul-double v21, v21, v33

    add-double v21, v21, v23

    aput-wide v21, p2, v20

    sub-double v20, v45, v63

    add-double v22, v47, v61

    add-int/lit8 v24, v30, -0x2

    mul-double v33, v7, v20

    mul-double v35, v9, v22

    sub-double v33, v33, v35

    aput-wide v33, p2, v24

    add-int/lit8 v24, v30, -0x1

    mul-double v22, v22, v7

    mul-double v20, v20, v9

    add-double v20, v20, v22

    aput-wide v20, p2, v24

    add-double v20, v37, v55

    sub-double v22, v39, v53

    mul-double v29, v27, v20

    mul-double v33, v25, v22

    add-double v29, v29, v33

    aput-wide v29, p2, v32

    add-int/lit8 v24, v32, 0x1

    mul-double v22, v22, v27

    mul-double v20, v20, v25

    sub-double v20, v22, v20

    aput-wide v20, p2, v24

    add-double v20, v45, v63

    sub-double v22, v47, v61

    add-int v24, p3, v31

    add-int/lit8 v24, v24, -0x2

    mul-double v25, v3, v20

    mul-double v27, v5, v22

    add-double v25, v25, v27

    aput-wide v25, p2, v24

    add-int v24, p3, v31

    add-int/lit8 v24, v24, -0x1

    mul-double v22, v22, v3

    mul-double v20, v20, v5

    sub-double v20, v22, v20

    aput-wide v20, p2, v24

    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_89

    :cond_312
    add-double/2addr v9, v14

    mul-double v9, v9, v16

    add-double/2addr v7, v14

    mul-double v7, v7, v16

    sub-double/2addr v5, v14

    mul-double v5, v5, v18

    sub-double v2, v3, v14

    mul-double v2, v2, v18

    add-int v4, v12, v13

    add-int v11, v4, v13

    add-int/2addr v13, v11

    add-int v12, v12, p3

    add-int v4, v4, p3

    add-int v11, v11, p3

    add-int v13, v13, p3

    add-int/lit8 v16, v12, -0x2

    aget-wide v16, p2, v16

    add-int/lit8 v18, v11, -0x2

    aget-wide v18, p2, v18

    add-double v16, v16, v18

    add-int/lit8 v18, v12, -0x1

    aget-wide v18, p2, v18

    add-int/lit8 v20, v11, -0x1

    aget-wide v20, p2, v20

    add-double v18, v18, v20

    add-int/lit8 v20, v12, -0x2

    aget-wide v20, p2, v20

    add-int/lit8 v22, v11, -0x2

    aget-wide v22, p2, v22

    sub-double v20, v20, v22

    add-int/lit8 v22, v12, -0x1

    aget-wide v22, p2, v22

    add-int/lit8 v24, v11, -0x1

    aget-wide v24, p2, v24

    sub-double v22, v22, v24

    add-int/lit8 v24, v4, -0x2

    aget-wide v24, p2, v24

    add-int/lit8 v26, v13, -0x2

    aget-wide v26, p2, v26

    add-double v24, v24, v26

    add-int/lit8 v26, v4, -0x1

    aget-wide v26, p2, v26

    add-int/lit8 v28, v13, -0x1

    aget-wide v28, p2, v28

    add-double v26, v26, v28

    add-int/lit8 v28, v4, -0x2

    aget-wide v28, p2, v28

    add-int/lit8 v30, v13, -0x2

    aget-wide v30, p2, v30

    sub-double v28, v28, v30

    add-int/lit8 v30, v4, -0x1

    aget-wide v30, p2, v30

    add-int/lit8 v32, v13, -0x1

    aget-wide v32, p2, v32

    sub-double v30, v30, v32

    add-int/lit8 v32, v12, -0x2

    add-double v33, v16, v24

    aput-wide v33, p2, v32

    add-int/lit8 v32, v12, -0x1

    add-double v33, v18, v26

    aput-wide v33, p2, v32

    add-int/lit8 v32, v4, -0x2

    sub-double v16, v16, v24

    aput-wide v16, p2, v32

    add-int/lit8 v16, v4, -0x1

    sub-double v17, v18, v26

    aput-wide v17, p2, v16

    sub-double v16, v20, v30

    add-double v18, v22, v28

    add-int/lit8 v24, v11, -0x2

    mul-double v25, v9, v16

    mul-double v32, v7, v18

    sub-double v25, v25, v32

    aput-wide v25, p2, v24

    add-int/lit8 v24, v11, -0x1

    mul-double v18, v18, v9

    mul-double v16, v16, v7

    add-double v16, v16, v18

    aput-wide v16, p2, v24

    add-double v16, v20, v30

    sub-double v18, v22, v28

    add-int/lit8 v20, v13, -0x2

    mul-double v21, v5, v16

    mul-double v23, v2, v18

    add-double v21, v21, v23

    aput-wide v21, p2, v20

    add-int/lit8 v20, v13, -0x1

    mul-double v18, v18, v5

    mul-double v16, v16, v2

    sub-double v16, v18, v16

    aput-wide v16, p2, v20

    aget-wide v16, p2, v12

    aget-wide v18, p2, v11

    add-double v16, v16, v18

    add-int/lit8 v18, v12, 0x1

    aget-wide v18, p2, v18

    add-int/lit8 v20, v11, 0x1

    aget-wide v20, p2, v20

    add-double v18, v18, v20

    aget-wide v20, p2, v12

    aget-wide v22, p2, v11

    sub-double v20, v20, v22

    add-int/lit8 v22, v12, 0x1

    aget-wide v22, p2, v22

    add-int/lit8 v24, v11, 0x1

    aget-wide v24, p2, v24

    sub-double v22, v22, v24

    aget-wide v24, p2, v4

    aget-wide v26, p2, v13

    add-double v24, v24, v26

    add-int/lit8 v26, v4, 0x1

    aget-wide v26, p2, v26

    add-int/lit8 v28, v13, 0x1

    aget-wide v28, p2, v28

    add-double v26, v26, v28

    aget-wide v28, p2, v4

    aget-wide v30, p2, v13

    sub-double v28, v28, v30

    add-int/lit8 v30, v4, 0x1

    aget-wide v30, p2, v30

    add-int/lit8 v32, v13, 0x1

    aget-wide v32, p2, v32

    sub-double v30, v30, v32

    add-double v32, v16, v24

    aput-wide v32, p2, v12

    add-int/lit8 v32, v12, 0x1

    add-double v33, v18, v26

    aput-wide v33, p2, v32

    sub-double v16, v16, v24

    aput-wide v16, p2, v4

    add-int/lit8 v16, v4, 0x1

    sub-double v17, v18, v26

    aput-wide v17, p2, v16

    sub-double v16, v20, v30

    add-double v18, v22, v28

    sub-double v24, v16, v18

    mul-double v24, v24, v14

    aput-wide v24, p2, v11

    add-int/lit8 v24, v11, 0x1

    add-double v16, v16, v18

    mul-double v16, v16, v14

    aput-wide v16, p2, v24

    add-double v16, v20, v30

    sub-double v18, v22, v28

    neg-double v0, v14

    move-wide/from16 v20, v0

    add-double v22, v16, v18

    mul-double v20, v20, v22

    aput-wide v20, p2, v13

    add-int/lit8 v20, v13, 0x1

    neg-double v14, v14

    sub-double v16, v18, v16

    mul-double v14, v14, v16

    aput-wide v14, p2, v20

    add-int/lit8 v14, v12, 0x2

    aget-wide v14, p2, v14

    add-int/lit8 v16, v11, 0x2

    aget-wide v16, p2, v16

    add-double v14, v14, v16

    add-int/lit8 v16, v12, 0x3

    aget-wide v16, p2, v16

    add-int/lit8 v18, v11, 0x3

    aget-wide v18, p2, v18

    add-double v16, v16, v18

    add-int/lit8 v18, v12, 0x2

    aget-wide v18, p2, v18

    add-int/lit8 v20, v11, 0x2

    aget-wide v20, p2, v20

    sub-double v18, v18, v20

    add-int/lit8 v20, v12, 0x3

    aget-wide v20, p2, v20

    add-int/lit8 v22, v11, 0x3

    aget-wide v22, p2, v22

    sub-double v20, v20, v22

    add-int/lit8 v22, v4, 0x2

    aget-wide v22, p2, v22

    add-int/lit8 v24, v13, 0x2

    aget-wide v24, p2, v24

    add-double v22, v22, v24

    add-int/lit8 v24, v4, 0x3

    aget-wide v24, p2, v24

    add-int/lit8 v26, v13, 0x3

    aget-wide v26, p2, v26

    add-double v24, v24, v26

    add-int/lit8 v26, v4, 0x2

    aget-wide v26, p2, v26

    add-int/lit8 v28, v13, 0x2

    aget-wide v28, p2, v28

    sub-double v26, v26, v28

    add-int/lit8 v28, v4, 0x3

    aget-wide v28, p2, v28

    add-int/lit8 v30, v13, 0x3

    aget-wide v30, p2, v30

    sub-double v28, v28, v30

    add-int/lit8 v30, v12, 0x2

    add-double v31, v14, v22

    aput-wide v31, p2, v30

    add-int/lit8 v12, v12, 0x3

    add-double v30, v16, v24

    aput-wide v30, p2, v12

    add-int/lit8 v12, v4, 0x2

    sub-double v14, v14, v22

    aput-wide v14, p2, v12

    add-int/lit8 v4, v4, 0x3

    sub-double v14, v16, v24

    aput-wide v14, p2, v4

    sub-double v14, v18, v28

    add-double v16, v20, v26

    add-int/lit8 v4, v11, 0x2

    mul-double v22, v7, v14

    mul-double v24, v9, v16

    sub-double v22, v22, v24

    aput-wide v22, p2, v4

    add-int/lit8 v4, v11, 0x3

    mul-double v7, v7, v16

    mul-double/2addr v9, v14

    add-double/2addr v7, v9

    aput-wide v7, p2, v4

    add-double v7, v18, v28

    sub-double v9, v20, v26

    add-int/lit8 v4, v13, 0x2

    mul-double v11, v2, v7

    mul-double v14, v5, v9

    add-double/2addr v11, v14

    aput-wide v11, p2, v4

    add-int/lit8 v4, v13, 0x3

    mul-double/2addr v2, v9

    mul-double/2addr v5, v7

    sub-double/2addr v2, v5

    aput-wide v2, p2, v4

    return-void
.end method

.method private cftfsub(I[DI[II[D)V
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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf1st(I[DI[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftrec4_th(I[DII[D)V

    :goto_2a
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->bitrv2(I[I[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftrec4(I[DII[D)V

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

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftleaf(II[DII[D)V

    goto :goto_2a

    :cond_4b
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftfx41(I[DII[D)V

    goto :goto_2a

    :cond_55
    if-ne p1, v1, :cond_60

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->bitrv216([DI)V

    goto :goto_2d

    :cond_60
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->bitrv208([DI)V

    goto :goto_2d

    :cond_68
    if-ne p1, v0, :cond_6e

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf040([DI)V

    goto :goto_2d

    :cond_6e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftx020([DI)V

    goto :goto_2d
.end method

.method private cftfx41(I[DII[D)V
    .registers 8

    const/16 v0, 0x80

    if-ne p1, v0, :cond_1f

    add-int/lit8 v0, p4, -0x8

    invoke-direct {p0, p2, p3, p5, v0}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    add-int/lit8 v0, p3, 0x20

    add-int/lit8 v1, p4, -0x20

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf162([DI[DI)V

    add-int/lit8 v0, p3, 0x40

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    add-int/lit8 v0, p3, 0x60

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    :goto_1e
    return-void

    :cond_1f
    add-int/lit8 v0, p4, -0x8

    invoke-direct {p0, p2, p3, p5, v0}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p3, 0x10

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf082([DI[DI)V

    add-int/lit8 v0, p3, 0x20

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p3, 0x30

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    goto :goto_1e
.end method

.method private cftleaf(II[DII[D)V
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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p3, p4, p6, v0}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    add-int/lit8 v0, p4, 0x20

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf162([DI[DI)V

    add-int/lit8 v0, p4, 0x40

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    add-int/lit8 v0, p4, 0x60

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    add-int/lit16 v3, p4, 0x80

    add-int/lit8 v5, p5, -0x80

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl2(I[DI[DI)V

    add-int/lit16 v0, p4, 0x80

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, p4, 0xa0

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf162([DI[DI)V

    add-int/lit16 v0, p4, 0xc0

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, p4, 0xe0

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf162([DI[DI)V

    add-int/lit16 v3, p4, 0x100

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit16 v0, p4, 0x100

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, p4, 0x120

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf162([DI[DI)V

    add-int/lit16 v0, p4, 0x140

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, p4, 0x160

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    if-eqz p2, :cond_a0

    add-int/lit16 v3, p4, 0x180

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit16 v0, p4, 0x1e0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    :goto_8a
    add-int/lit16 v0, p4, 0x180

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, p4, 0x1a0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf162([DI[DI)V

    add-int/lit16 v0, p4, 0x1c0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf161([DI[DI)V

    :goto_9f
    return-void

    :cond_a0
    add-int/lit16 v3, p4, 0x180

    add-int/lit8 v5, p5, -0x80

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl2(I[DI[DI)V

    add-int/lit16 v0, p4, 0x1e0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf162([DI[DI)V

    goto :goto_8a

    :cond_b2
    add-int/lit8 v5, p5, -0x20

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p3, p4, p6, v0}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p4, 0x10

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf082([DI[DI)V

    add-int/lit8 v0, p4, 0x20

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p4, 0x30

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    add-int/lit8 v3, p4, 0x40

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl2(I[DI[DI)V

    add-int/lit8 v0, p4, 0x40

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p4, 0x50

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf082([DI[DI)V

    add-int/lit8 v0, p4, 0x60

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p4, 0x70

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf082([DI[DI)V

    add-int/lit16 v3, p4, 0x80

    add-int/lit8 v5, p5, -0x20

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit16 v0, p4, 0x80

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    add-int/lit16 v0, p4, 0x90

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf082([DI[DI)V

    add-int/lit16 v0, p4, 0xa0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    add-int/lit16 v0, p4, 0xb0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    if-eqz p2, :cond_14f

    add-int/lit16 v3, p4, 0xc0

    add-int/lit8 v5, p5, -0x20

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit16 v0, p4, 0xf0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    :goto_138
    add-int/lit16 v0, p4, 0xc0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    add-int/lit16 v0, p4, 0xd0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf082([DI[DI)V

    add-int/lit16 v0, p4, 0xe0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf081([DI[DI)V

    goto/16 :goto_9f

    :cond_14f
    add-int/lit16 v3, p4, 0xc0

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl2(I[DI[DI)V

    add-int/lit16 v0, p4, 0xf0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftf082([DI[DI)V

    goto :goto_138
.end method

.method private cftmdl1(I[DI[DI)V
    .registers 42

    shr-int/lit8 v2, p1, 0x3

    mul-int/lit8 v3, v2, 0x2

    add-int v0, v3, v3

    add-int v1, v0, v3

    add-int v4, p3, v3

    add-int v0, v0, p3

    add-int v1, v1, p3

    aget-wide v5, p2, p3

    aget-wide v7, p2, v0

    add-double/2addr v5, v7

    add-int/lit8 v7, p3, 0x1

    aget-wide v7, p2, v7

    add-int/lit8 v9, v0, 0x1

    aget-wide v9, p2, v9

    add-double/2addr v7, v9

    aget-wide v9, p2, p3

    aget-wide v11, p2, v0

    sub-double/2addr v9, v11

    add-int/lit8 v11, p3, 0x1

    aget-wide v11, p2, v11

    add-int/lit8 v13, v0, 0x1

    aget-wide v13, p2, v13

    sub-double/2addr v11, v13

    aget-wide v13, p2, v4

    aget-wide v15, p2, v1

    add-double/2addr v13, v15

    add-int/lit8 v15, v4, 0x1

    aget-wide v15, p2, v15

    add-int/lit8 v17, v1, 0x1

    aget-wide v17, p2, v17

    add-double v15, v15, v17

    aget-wide v17, p2, v4

    aget-wide v19, p2, v1

    sub-double v17, v17, v19

    add-int/lit8 v19, v4, 0x1

    aget-wide v19, p2, v19

    add-int/lit8 v21, v1, 0x1

    aget-wide v21, p2, v21

    sub-double v19, v19, v21

    add-double v21, v5, v13

    aput-wide v21, p2, p3

    add-int/lit8 v21, p3, 0x1

    add-double v22, v7, v15

    aput-wide v22, p2, v21

    sub-double/2addr v5, v13

    aput-wide v5, p2, v4

    add-int/lit8 v4, v4, 0x1

    sub-double v5, v7, v15

    aput-wide v5, p2, v4

    sub-double v4, v9, v19

    aput-wide v4, p2, v0

    add-int/lit8 v0, v0, 0x1

    add-double v4, v11, v17

    aput-wide v4, p2, v0

    add-double v4, v9, v19

    aput-wide v4, p2, v1

    add-int/lit8 v0, v1, 0x1

    sub-double v4, v11, v17

    aput-wide v4, p2, v0

    add-int/lit8 v0, p5, 0x1

    aget-wide v4, p4, v0

    const/4 v1, 0x0

    const/4 v0, 0x2

    :goto_76
    if-ge v0, v2, :cond_1a9

    add-int/lit8 v1, v1, 0x4

    add-int v6, p5, v1

    aget-wide v7, p4, v6

    add-int/lit8 v9, v6, 0x1

    aget-wide v9, p4, v9

    add-int/lit8 v11, v6, 0x2

    aget-wide v11, p4, v11

    add-int/lit8 v6, v6, 0x3

    aget-wide v13, p4, v6

    add-int v6, v0, v3

    add-int v15, v6, v3

    add-int v16, v15, v3

    add-int v6, v6, p3

    add-int v15, v15, p3

    add-int v16, v16, p3

    add-int v17, p3, v0

    aget-wide v18, p2, v17

    aget-wide v20, p2, v15

    add-double v18, v18, v20

    add-int/lit8 v20, v17, 0x1

    aget-wide v20, p2, v20

    add-int/lit8 v22, v15, 0x1

    aget-wide v22, p2, v22

    add-double v20, v20, v22

    aget-wide v22, p2, v17

    aget-wide v24, p2, v15

    sub-double v22, v22, v24

    add-int/lit8 v24, v17, 0x1

    aget-wide v24, p2, v24

    add-int/lit8 v26, v15, 0x1

    aget-wide v26, p2, v26

    sub-double v24, v24, v26

    aget-wide v26, p2, v6

    aget-wide v28, p2, v16

    add-double v26, v26, v28

    add-int/lit8 v28, v6, 0x1

    aget-wide v28, p2, v28

    add-int/lit8 v30, v16, 0x1

    aget-wide v30, p2, v30

    add-double v28, v28, v30

    aget-wide v30, p2, v6

    aget-wide v32, p2, v16

    sub-double v30, v30, v32

    add-int/lit8 v32, v6, 0x1

    aget-wide v32, p2, v32

    add-int/lit8 v34, v16, 0x1

    aget-wide v34, p2, v34

    sub-double v32, v32, v34

    add-double v34, v18, v26

    aput-wide v34, p2, v17

    add-int/lit8 v17, v17, 0x1

    add-double v34, v20, v28

    aput-wide v34, p2, v17

    sub-double v17, v18, v26

    aput-wide v17, p2, v6

    add-int/lit8 v6, v6, 0x1

    sub-double v17, v20, v28

    aput-wide v17, p2, v6

    sub-double v17, v22, v32

    add-double v19, v24, v30

    mul-double v26, v7, v17

    mul-double v28, v9, v19

    sub-double v26, v26, v28

    aput-wide v26, p2, v15

    add-int/lit8 v6, v15, 0x1

    mul-double v19, v19, v7

    mul-double v17, v17, v9

    add-double v17, v17, v19

    aput-wide v17, p2, v6

    add-double v17, v22, v32

    sub-double v19, v24, v30

    mul-double v21, v11, v17

    mul-double v23, v13, v19

    add-double v21, v21, v23

    aput-wide v21, p2, v16

    add-int/lit8 v6, v16, 0x1

    mul-double v15, v11, v19

    mul-double v17, v17, v13

    sub-double v15, v15, v17

    aput-wide v15, p2, v6

    sub-int v6, v3, v0

    add-int v15, v6, v3

    add-int v16, v15, v3

    add-int v17, v16, v3

    add-int v6, v6, p3

    add-int v15, v15, p3

    add-int v16, v16, p3

    add-int v17, v17, p3

    aget-wide v18, p2, v6

    aget-wide v20, p2, v16

    add-double v18, v18, v20

    add-int/lit8 v20, v6, 0x1

    aget-wide v20, p2, v20

    add-int/lit8 v22, v16, 0x1

    aget-wide v22, p2, v22

    add-double v20, v20, v22

    aget-wide v22, p2, v6

    aget-wide v24, p2, v16

    sub-double v22, v22, v24

    add-int/lit8 v24, v6, 0x1

    aget-wide v24, p2, v24

    add-int/lit8 v26, v16, 0x1

    aget-wide v26, p2, v26

    sub-double v24, v24, v26

    aget-wide v26, p2, v15

    aget-wide v28, p2, v17

    add-double v26, v26, v28

    add-int/lit8 v28, v15, 0x1

    aget-wide v28, p2, v28

    add-int/lit8 v30, v17, 0x1

    aget-wide v30, p2, v30

    add-double v28, v28, v30

    aget-wide v30, p2, v15

    aget-wide v32, p2, v17

    sub-double v30, v30, v32

    add-int/lit8 v32, v15, 0x1

    aget-wide v32, p2, v32

    add-int/lit8 v34, v17, 0x1

    aget-wide v34, p2, v34

    sub-double v32, v32, v34

    add-double v34, v18, v26

    aput-wide v34, p2, v6

    add-int/lit8 v6, v6, 0x1

    add-double v34, v20, v28

    aput-wide v34, p2, v6

    sub-double v18, v18, v26

    aput-wide v18, p2, v15

    add-int/lit8 v6, v15, 0x1

    sub-double v18, v20, v28

    aput-wide v18, p2, v6

    sub-double v18, v22, v32

    add-double v20, v24, v30

    mul-double v26, v9, v18

    mul-double v28, v7, v20

    sub-double v26, v26, v28

    aput-wide v26, p2, v16

    add-int/lit8 v6, v16, 0x1

    mul-double v9, v9, v20

    mul-double v7, v7, v18

    add-double/2addr v7, v9

    aput-wide v7, p2, v6

    add-double v6, v22, v32

    sub-double v8, v24, v30

    mul-double v15, v13, v6

    mul-double v18, v11, v8

    add-double v15, v15, v18

    aput-wide v15, p2, v17

    add-int/lit8 v10, v17, 0x1

    mul-double/2addr v8, v13

    mul-double/2addr v6, v11

    sub-double v6, v8, v6

    aput-wide v6, p2, v10

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_76

    :cond_1a9
    add-int v0, v2, v3

    add-int v1, v0, v3

    add-int/2addr v3, v1

    add-int v2, v2, p3

    add-int v0, v0, p3

    add-int v1, v1, p3

    add-int v3, v3, p3

    aget-wide v6, p2, v2

    aget-wide v8, p2, v1

    add-double/2addr v6, v8

    add-int/lit8 v8, v2, 0x1

    aget-wide v8, p2, v8

    add-int/lit8 v10, v1, 0x1

    aget-wide v10, p2, v10

    add-double/2addr v8, v10

    aget-wide v10, p2, v2

    aget-wide v12, p2, v1

    sub-double/2addr v10, v12

    add-int/lit8 v12, v2, 0x1

    aget-wide v12, p2, v12

    add-int/lit8 v14, v1, 0x1

    aget-wide v14, p2, v14

    sub-double/2addr v12, v14

    aget-wide v14, p2, v0

    aget-wide v16, p2, v3

    add-double v14, v14, v16

    add-int/lit8 v16, v0, 0x1

    aget-wide v16, p2, v16

    add-int/lit8 v18, v3, 0x1

    aget-wide v18, p2, v18

    add-double v16, v16, v18

    aget-wide v18, p2, v0

    aget-wide v20, p2, v3

    sub-double v18, v18, v20

    add-int/lit8 v20, v0, 0x1

    aget-wide v20, p2, v20

    add-int/lit8 v22, v3, 0x1

    aget-wide v22, p2, v22

    sub-double v20, v20, v22

    add-double v22, v6, v14

    aput-wide v22, p2, v2

    add-int/lit8 v2, v2, 0x1

    add-double v22, v8, v16

    aput-wide v22, p2, v2

    sub-double/2addr v6, v14

    aput-wide v6, p2, v0

    add-int/lit8 v0, v0, 0x1

    sub-double v6, v8, v16

    aput-wide v6, p2, v0

    sub-double v6, v10, v20

    add-double v8, v12, v18

    sub-double v14, v6, v8

    mul-double/2addr v14, v4

    aput-wide v14, p2, v1

    add-int/lit8 v0, v1, 0x1

    add-double v1, v8, v6

    mul-double/2addr v1, v4

    aput-wide v1, p2, v0

    add-double v0, v10, v20

    sub-double v6, v12, v18

    neg-double v8, v4

    add-double v10, v0, v6

    mul-double/2addr v8, v10

    aput-wide v8, p2, v3

    add-int/lit8 v2, v3, 0x1

    neg-double v3, v4

    sub-double v0, v6, v0

    mul-double/2addr v0, v3

    aput-wide v0, p2, v2

    return-void
.end method

.method private cftmdl2(I[DI[DI)V
    .registers 51

    shr-int/lit8 v3, p1, 0x3

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v0, p5, 0x1

    aget-wide v0, p4, v0

    add-int v2, v4, v4

    add-int v5, v2, v4

    add-int v6, p3, v4

    add-int v2, v2, p3

    add-int v5, v5, p3

    aget-wide v7, p2, p3

    add-int/lit8 v9, v2, 0x1

    aget-wide v9, p2, v9

    sub-double/2addr v7, v9

    add-int/lit8 v9, p3, 0x1

    aget-wide v9, p2, v9

    aget-wide v11, p2, v2

    add-double/2addr v9, v11

    aget-wide v11, p2, p3

    add-int/lit8 v13, v2, 0x1

    aget-wide v13, p2, v13

    add-double/2addr v11, v13

    add-int/lit8 v13, p3, 0x1

    aget-wide v13, p2, v13

    aget-wide v15, p2, v2

    sub-double/2addr v13, v15

    aget-wide v15, p2, v6

    add-int/lit8 v17, v5, 0x1

    aget-wide v17, p2, v17

    sub-double v15, v15, v17

    add-int/lit8 v17, v6, 0x1

    aget-wide v17, p2, v17

    aget-wide v19, p2, v5

    add-double v17, v17, v19

    aget-wide v19, p2, v6

    add-int/lit8 v21, v5, 0x1

    aget-wide v21, p2, v21

    add-double v19, v19, v21

    add-int/lit8 v21, v6, 0x1

    aget-wide v21, p2, v21

    aget-wide v23, p2, v5

    sub-double v21, v21, v23

    sub-double v23, v15, v17

    mul-double v23, v23, v0

    add-double v15, v15, v17

    mul-double/2addr v15, v0

    add-double v17, v7, v23

    aput-wide v17, p2, p3

    add-int/lit8 v17, p3, 0x1

    add-double v25, v9, v15

    aput-wide v25, p2, v17

    sub-double v7, v7, v23

    aput-wide v7, p2, v6

    add-int/lit8 v6, v6, 0x1

    sub-double v7, v9, v15

    aput-wide v7, p2, v6

    sub-double v6, v19, v21

    mul-double/2addr v6, v0

    add-double v8, v21, v19

    mul-double/2addr v0, v8

    sub-double v8, v11, v0

    aput-wide v8, p2, v2

    add-int/lit8 v2, v2, 0x1

    add-double v8, v13, v6

    aput-wide v8, p2, v2

    add-double/2addr v0, v11

    aput-wide v0, p2, v5

    add-int/lit8 v0, v5, 0x1

    sub-double v1, v13, v6

    aput-wide v1, p2, v0

    const/4 v2, 0x0

    mul-int/lit8 v1, v4, 0x2

    const/4 v0, 0x2

    :goto_86
    if-ge v0, v3, :cond_1fa

    add-int/lit8 v2, v2, 0x4

    add-int v5, p5, v2

    aget-wide v6, p4, v5

    add-int/lit8 v8, v5, 0x1

    aget-wide v8, p4, v8

    add-int/lit8 v10, v5, 0x2

    aget-wide v10, p4, v10

    add-int/lit8 v5, v5, 0x3

    aget-wide v12, p4, v5

    add-int/lit8 v1, v1, -0x4

    add-int v5, p5, v1

    aget-wide v14, p4, v5

    add-int/lit8 v16, v5, 0x1

    aget-wide v16, p4, v16

    add-int/lit8 v18, v5, 0x2

    aget-wide v18, p4, v18

    add-int/lit8 v5, v5, 0x3

    aget-wide v20, p4, v5

    add-int v5, v0, v4

    add-int v22, v5, v4

    add-int v23, v22, v4

    add-int v5, v5, p3

    add-int v22, v22, p3

    add-int v23, v23, p3

    add-int v24, p3, v0

    aget-wide v25, p2, v24

    add-int/lit8 v27, v22, 0x1

    aget-wide v27, p2, v27

    sub-double v25, v25, v27

    add-int/lit8 v27, v24, 0x1

    aget-wide v27, p2, v27

    aget-wide v29, p2, v22

    add-double v27, v27, v29

    aget-wide v29, p2, v24

    add-int/lit8 v31, v22, 0x1

    aget-wide v31, p2, v31

    add-double v29, v29, v31

    add-int/lit8 v31, v24, 0x1

    aget-wide v31, p2, v31

    aget-wide v33, p2, v22

    sub-double v31, v31, v33

    aget-wide v33, p2, v5

    add-int/lit8 v35, v23, 0x1

    aget-wide v35, p2, v35

    sub-double v33, v33, v35

    add-int/lit8 v35, v5, 0x1

    aget-wide v35, p2, v35

    aget-wide v37, p2, v23

    add-double v35, v35, v37

    aget-wide v37, p2, v5

    add-int/lit8 v39, v23, 0x1

    aget-wide v39, p2, v39

    add-double v37, v37, v39

    add-int/lit8 v39, v5, 0x1

    aget-wide v39, p2, v39

    aget-wide v41, p2, v23

    sub-double v39, v39, v41

    mul-double v41, v6, v25

    mul-double v43, v8, v27

    sub-double v41, v41, v43

    mul-double v27, v27, v6

    mul-double v25, v25, v8

    add-double v25, v25, v27

    mul-double v27, v16, v33

    mul-double v43, v14, v35

    sub-double v27, v27, v43

    mul-double v35, v35, v16

    mul-double v33, v33, v14

    add-double v33, v33, v35

    add-double v35, v41, v27

    aput-wide v35, p2, v24

    add-int/lit8 v24, v24, 0x1

    add-double v35, v25, v33

    aput-wide v35, p2, v24

    sub-double v27, v41, v27

    aput-wide v27, p2, v5

    add-int/lit8 v5, v5, 0x1

    sub-double v24, v25, v33

    aput-wide v24, p2, v5

    mul-double v24, v10, v29

    mul-double v26, v12, v31

    add-double v24, v24, v26

    mul-double v26, v10, v31

    mul-double v28, v12, v29

    sub-double v26, v26, v28

    mul-double v28, v20, v37

    mul-double v30, v18, v39

    add-double v28, v28, v30

    mul-double v30, v20, v39

    mul-double v32, v18, v37

    sub-double v30, v30, v32

    add-double v32, v24, v28

    aput-wide v32, p2, v22

    add-int/lit8 v5, v22, 0x1

    add-double v32, v26, v30

    aput-wide v32, p2, v5

    sub-double v24, v24, v28

    aput-wide v24, p2, v23

    add-int/lit8 v5, v23, 0x1

    sub-double v22, v26, v30

    aput-wide v22, p2, v5

    sub-int v5, v4, v0

    add-int v22, v5, v4

    add-int v23, v22, v4

    add-int v24, v23, v4

    add-int v5, v5, p3

    add-int v22, v22, p3

    add-int v23, v23, p3

    add-int v24, v24, p3

    aget-wide v25, p2, v5

    add-int/lit8 v27, v23, 0x1

    aget-wide v27, p2, v27

    sub-double v25, v25, v27

    add-int/lit8 v27, v5, 0x1

    aget-wide v27, p2, v27

    aget-wide v29, p2, v23

    add-double v27, v27, v29

    aget-wide v29, p2, v5

    add-int/lit8 v31, v23, 0x1

    aget-wide v31, p2, v31

    add-double v29, v29, v31

    add-int/lit8 v31, v5, 0x1

    aget-wide v31, p2, v31

    aget-wide v33, p2, v23

    sub-double v31, v31, v33

    aget-wide v33, p2, v22

    add-int/lit8 v35, v24, 0x1

    aget-wide v35, p2, v35

    sub-double v33, v33, v35

    add-int/lit8 v35, v22, 0x1

    aget-wide v35, p2, v35

    aget-wide v37, p2, v24

    add-double v35, v35, v37

    aget-wide v37, p2, v22

    add-int/lit8 v39, v24, 0x1

    aget-wide v39, p2, v39

    add-double v37, v37, v39

    add-int/lit8 v39, v22, 0x1

    aget-wide v39, p2, v39

    aget-wide v41, p2, v24

    sub-double v39, v39, v41

    mul-double v41, v14, v25

    mul-double v43, v16, v27

    sub-double v41, v41, v43

    mul-double v14, v14, v27

    mul-double v16, v16, v25

    add-double v14, v14, v16

    mul-double v16, v8, v33

    mul-double v25, v6, v35

    sub-double v16, v16, v25

    mul-double v8, v8, v35

    mul-double v6, v6, v33

    add-double/2addr v6, v8

    add-double v8, v41, v16

    aput-wide v8, p2, v5

    add-int/lit8 v5, v5, 0x1

    add-double v8, v14, v6

    aput-wide v8, p2, v5

    sub-double v8, v41, v16

    aput-wide v8, p2, v22

    add-int/lit8 v5, v22, 0x1

    sub-double v6, v14, v6

    aput-wide v6, p2, v5

    mul-double v5, v18, v29

    mul-double v7, v20, v31

    add-double/2addr v5, v7

    mul-double v7, v18, v31

    mul-double v14, v20, v29

    sub-double/2addr v7, v14

    mul-double v14, v12, v37

    mul-double v16, v10, v39

    add-double v14, v14, v16

    mul-double v12, v12, v39

    mul-double v9, v10, v37

    sub-double v9, v12, v9

    add-double v11, v5, v14

    aput-wide v11, p2, v23

    add-int/lit8 v11, v23, 0x1

    add-double v12, v7, v9

    aput-wide v12, p2, v11

    sub-double/2addr v5, v14

    aput-wide v5, p2, v24

    add-int/lit8 v5, v24, 0x1

    sub-double v6, v7, v9

    aput-wide v6, p2, v5

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_86

    :cond_1fa
    add-int v0, p5, v4

    aget-wide v0, p4, v0

    add-int v2, p5, v4

    add-int/lit8 v2, v2, 0x1

    aget-wide v5, p4, v2

    add-int v2, v3, v4

    add-int v7, v2, v4

    add-int/2addr v4, v7

    add-int v3, v3, p3

    add-int v2, v2, p3

    add-int v7, v7, p3

    add-int v4, v4, p3

    aget-wide v8, p2, v3

    add-int/lit8 v10, v7, 0x1

    aget-wide v10, p2, v10

    sub-double/2addr v8, v10

    add-int/lit8 v10, v3, 0x1

    aget-wide v10, p2, v10

    aget-wide v12, p2, v7

    add-double/2addr v10, v12

    aget-wide v12, p2, v3

    add-int/lit8 v14, v7, 0x1

    aget-wide v14, p2, v14

    add-double/2addr v12, v14

    add-int/lit8 v14, v3, 0x1

    aget-wide v14, p2, v14

    aget-wide v16, p2, v7

    sub-double v14, v14, v16

    aget-wide v16, p2, v2

    add-int/lit8 v18, v4, 0x1

    aget-wide v18, p2, v18

    sub-double v16, v16, v18

    add-int/lit8 v18, v2, 0x1

    aget-wide v18, p2, v18

    aget-wide v20, p2, v4

    add-double v18, v18, v20

    aget-wide v20, p2, v2

    add-int/lit8 v22, v4, 0x1

    aget-wide v22, p2, v22

    add-double v20, v20, v22

    add-int/lit8 v22, v2, 0x1

    aget-wide v22, p2, v22

    aget-wide v24, p2, v4

    sub-double v22, v22, v24

    mul-double v24, v0, v8

    mul-double v26, v5, v10

    sub-double v24, v24, v26

    mul-double/2addr v10, v0

    mul-double/2addr v8, v5

    add-double/2addr v8, v10

    mul-double v10, v5, v16

    mul-double v26, v0, v18

    sub-double v10, v10, v26

    mul-double v18, v18, v5

    mul-double v16, v16, v0

    add-double v16, v16, v18

    add-double v18, v24, v10

    aput-wide v18, p2, v3

    add-int/lit8 v3, v3, 0x1

    add-double v18, v8, v16

    aput-wide v18, p2, v3

    sub-double v10, v24, v10

    aput-wide v10, p2, v2

    add-int/lit8 v2, v2, 0x1

    sub-double v8, v8, v16

    aput-wide v8, p2, v2

    mul-double v2, v5, v12

    mul-double v8, v0, v14

    sub-double/2addr v2, v8

    mul-double v8, v5, v14

    mul-double v10, v0, v12

    add-double/2addr v8, v10

    mul-double v10, v0, v20

    mul-double v12, v5, v22

    sub-double/2addr v10, v12

    mul-double v0, v0, v22

    mul-double v5, v5, v20

    add-double/2addr v0, v5

    sub-double v5, v2, v10

    aput-wide v5, p2, v7

    add-int/lit8 v5, v7, 0x1

    sub-double v6, v8, v0

    aput-wide v6, p2, v5

    add-double/2addr v2, v10

    aput-wide v2, p2, v4

    add-int/lit8 v2, v4, 0x1

    add-double/2addr v0, v8

    aput-wide v0, p2, v2

    return-void
.end method

.method private cftrec4(I[DII[D)V
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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl1(I[DI[DI)V

    goto :goto_3

    :cond_17
    const/4 v2, 0x1

    sub-int v4, v6, v1

    move-object v0, p0

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftleaf(II[DII[D)V

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

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cfttree(III[DII[D)I

    move-result v6

    add-int v8, v11, v2

    move-object v4, p0

    move v5, v1

    move-object v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftleaf(II[DII[D)V

    sub-int/2addr v2, v1

    goto :goto_28

    :cond_45
    return-void
.end method

.method private cftrec4_th(I[DII[D)V
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

    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$3;

    move-object v1, p0

    move v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$3;-><init>(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;III[D[DI)V

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

    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;

    move-object v1, p0

    move v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$4;-><init>(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;III[D[DI)V

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

.method private cfttree(III[DII[D)I
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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl1(I[DI[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl2(I[DI[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl1(I[DI[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftmdl2(I[DI[DI)V

    shr-int/lit8 v1, v1, 0x2

    goto :goto_49

    :cond_5a
    move v0, v6

    goto :goto_18
.end method

.method private cftx020([DI)V
    .registers 12

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x2

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x3

    aget-wide v4, p1, v4

    sub-double/2addr v2, v4

    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x2

    aget-wide v6, p1, v6

    add-double/2addr v4, v6

    aput-wide v4, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget-wide v5, p1, v4

    add-int/lit8 v7, p2, 0x3

    aget-wide v7, p1, v7

    add-double/2addr v5, v7

    aput-wide v5, p1, v4

    add-int/lit8 v4, p2, 0x2

    aput-wide v0, p1, v4

    add-int/lit8 v0, p2, 0x3

    aput-wide v2, p1, v0

    return-void
.end method

.method private dctsub(I[DII[DI)V
    .registers 22

    shr-int/lit8 v2, p1, 0x1

    div-int v3, p4, p1

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_6
    if-ge v0, v2, :cond_36

    sub-int v4, p1, v0

    add-int/2addr v1, v3

    add-int v5, p6, v1

    add-int v6, p3, v0

    add-int v4, v4, p3

    aget-wide v7, p5, v5

    add-int v9, p6, p4

    sub-int/2addr v9, v1

    aget-wide v9, p5, v9

    sub-double/2addr v7, v9

    aget-wide v9, p5, v5

    add-int v5, p6, p4

    sub-int/2addr v5, v1

    aget-wide v11, p5, v5

    add-double/2addr v9, v11

    aget-wide v11, p2, v6

    mul-double/2addr v11, v9

    aget-wide v13, p2, v4

    mul-double/2addr v13, v7

    sub-double/2addr v11, v13

    aget-wide v13, p2, v6

    mul-double/2addr v7, v13

    aget-wide v13, p2, v4

    mul-double/2addr v9, v13

    add-double/2addr v7, v9

    aput-wide v7, p2, v6

    aput-wide v11, p2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_36
    add-int v0, p3, v2

    aget-wide v1, p2, v0

    aget-wide v3, p5, p6

    mul-double/2addr v1, v3

    aput-wide v1, p2, v0

    return-void
.end method

.method private makect(I[DI)V
    .registers 15

    const/4 v0, 0x1

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->ip:[I

    aput p1, v1, v0

    if-le p1, v0, :cond_3b

    shr-int/lit8 v1, p1, 0x1

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v4, v1

    div-double/2addr v2, v4

    int-to-double v4, v1

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    aput-wide v4, p2, p3

    add-int v4, p3, v1

    aget-wide v5, p2, p3

    mul-double/2addr v5, v9

    aput-wide v5, p2, v4

    :goto_21
    if-ge v0, v1, :cond_3b

    int-to-double v4, v0

    mul-double/2addr v4, v2

    add-int v6, p3, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v9

    aput-wide v7, p2, v6

    add-int v6, p3, p1

    sub-int/2addr v6, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v9

    aput-wide v4, p2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_3b
    return-void
.end method

.method private makect(I)[D
    .registers 11

    mul-int/lit8 v0, p1, 0x2

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    int-to-double v3, v0

    div-double/2addr v1, v3

    new-array v3, v0, [D

    const/4 v0, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v0

    const/4 v0, 0x1

    :goto_11
    if-ge v0, p1, :cond_29

    mul-int/lit8 v4, v0, 0x2

    int-to-double v5, v0

    mul-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    aput-wide v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    neg-double v5, v5

    aput-wide v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_29
    return-object v3
.end method

.method private makeipt(I)V
    .registers 9

    const/4 v1, 0x2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->ip:[I

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->ip:[I

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

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->ip:[I

    aget v4, v4, v0

    shl-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->ip:[I

    add-int v6, v1, v0

    aput v4, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->ip:[I

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
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->ip:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->ip:[I

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v1, 0x2

    move/from16 v0, p1

    if-le v0, v1, :cond_164

    shr-int/lit8 v2, p1, 0x1

    const-wide v3, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v5, v2

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v3

    int-to-double v7, v2

    mul-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    const/4 v9, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v1, v9

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    const/4 v9, 0x1

    aput-wide v7, v1, v9

    const/4 v1, 0x4

    if-ne v2, v1, :cond_92

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    const/4 v3, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    aput-wide v9, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    const/4 v3, 0x3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    aput-wide v4, v1, v3

    :cond_4f
    const/4 v1, 0x0

    move/from16 v17, v1

    move v1, v2

    move/from16 v2, v17

    :goto_55
    const/4 v3, 0x2

    if-le v1, v3, :cond_164

    add-int v3, v2, v1

    shr-int/lit8 v4, v1, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v5, v3, 0x1

    aput-wide v7, v1, v5

    const/4 v1, 0x4

    if-ne v4, v1, :cond_f2

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v5, v2, 0x4

    aget-wide v5, v1, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v2, v2, 0x5

    aget-wide v1, v1, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v10, v3, 0x2

    aput-wide v5, v9, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v6, v3, 0x3

    aput-wide v1, v5, v6

    :cond_8f
    move v2, v3

    move v1, v4

    goto :goto_55

    :cond_92
    const/4 v1, 0x4

    if-le v2, v1, :cond_4f

    invoke-direct/range {p0 .. p1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->makeipt(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    const/4 v9, 0x2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    div-double v5, v10, v5

    aput-wide v5, v1, v9

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    const/4 v5, 0x3

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v11, 0x4018000000000000L    # 6.0

    mul-double/2addr v11, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    aput-wide v9, v1, v5

    const/4 v1, 0x4

    :goto_b9
    if-ge v1, v2, :cond_4f

    int-to-double v5, v1

    mul-double/2addr v5, v3

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    mul-double/2addr v9, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    aput-wide v12, v11, v1

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v12, v1, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    aput-wide v5, v11, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v6, v1, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    aput-wide v11, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v6, v1, 0x3

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    neg-double v9, v9

    aput-wide v9, v5, v6

    add-int/lit8 v1, v1, 0x4

    goto :goto_b9

    :cond_f2
    const/4 v1, 0x4

    if-le v4, v1, :cond_8f

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v5, v2, 0x4

    aget-wide v5, v1, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v9, v2, 0x6

    aget-wide v9, v1, v9

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v11, v3, 0x2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    div-double v5, v12, v5

    aput-wide v5, v1, v11

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v5, v3, 0x3

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    div-double v9, v11, v9

    aput-wide v9, v1, v5

    const/4 v1, 0x4

    :goto_11e
    if-ge v1, v4, :cond_8f

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v2

    add-int v6, v3, v1

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    aget-wide v9, v9, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v12, v5, 0x1

    aget-wide v11, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v14, v5, 0x2

    aget-wide v13, v13, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v5, v5, 0x3

    aget-wide v15, v15, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    aput-wide v9, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v9, v6, 0x1

    aput-wide v11, v5, v9

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v9, v6, 0x2

    aput-wide v13, v5, v9

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v6, v6, 0x3

    aput-wide v15, v5, v6

    add-int/lit8 v1, v1, 0x4

    goto :goto_11e

    :cond_164
    return-void
.end method

.method private rftbsub(I[DII[DI)V
    .registers 25

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

    aget-wide v7, p5, v7

    sub-double/2addr v5, v7

    add-int v7, p6, v1

    aget-wide v7, p5, v7

    add-int v9, p3, v0

    add-int v4, v4, p3

    aget-wide v10, p2, v9

    aget-wide v12, p2, v4

    sub-double/2addr v10, v12

    add-int/lit8 v12, v9, 0x1

    aget-wide v12, p2, v12

    add-int/lit8 v14, v4, 0x1

    aget-wide v14, p2, v14

    add-double/2addr v12, v14

    mul-double v14, v5, v10

    mul-double v16, v7, v12

    add-double v14, v14, v16

    mul-double/2addr v5, v12

    mul-double/2addr v7, v10

    sub-double/2addr v5, v7

    aget-wide v7, p2, v9

    sub-double/2addr v7, v14

    aput-wide v7, p2, v9

    add-int/lit8 v7, v9, 0x1

    aget-wide v8, p2, v7

    sub-double/2addr v8, v5

    aput-wide v8, p2, v7

    aget-wide v7, p2, v4

    add-double/2addr v7, v14

    aput-wide v7, p2, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v7, p2, v4

    sub-double v5, v7, v5

    aput-wide v5, p2, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_8

    :cond_50
    return-void
.end method

.method private rftfsub(I[DII[DI)V
    .registers 25

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

    aget-wide v7, p5, v7

    sub-double/2addr v5, v7

    add-int v7, p6, v1

    aget-wide v7, p5, v7

    add-int v9, p3, v0

    add-int v4, v4, p3

    aget-wide v10, p2, v9

    aget-wide v12, p2, v4

    sub-double/2addr v10, v12

    add-int/lit8 v12, v9, 0x1

    aget-wide v12, p2, v12

    add-int/lit8 v14, v4, 0x1

    aget-wide v14, p2, v14

    add-double/2addr v12, v14

    mul-double v14, v5, v10

    mul-double v16, v7, v12

    sub-double v14, v14, v16

    mul-double/2addr v5, v12

    mul-double/2addr v7, v10

    add-double/2addr v5, v7

    aget-wide v7, p2, v9

    sub-double/2addr v7, v14

    aput-wide v7, p2, v9

    add-int/lit8 v7, v9, 0x1

    aget-wide v8, p2, v7

    sub-double/2addr v8, v5

    aput-wide v8, p2, v7

    aget-wide v7, p2, v4

    add-double/2addr v7, v14

    aput-wide v7, p2, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v7, p2, v4

    sub-double v5, v7, v5

    aput-wide v5, p2, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_8

    :cond_50
    return-void
.end method

.method private scale(D[DI)V
    .registers 16

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3e

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_3e

    const/4 v8, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    div-int v9, v0, v8

    new-array v10, v8, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v7, v0

    :goto_18
    if-ge v7, v8, :cond_3a

    mul-int v0, v7, v9

    add-int v2, p4, v0

    const/4 v0, 0x1

    if-ne v7, v0, :cond_37

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    add-int v3, p4, v0

    :goto_25
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$5;

    move-object v1, p0

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$5;-><init>(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;II[DD)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_18

    :cond_37
    add-int v3, v2, v9

    goto :goto_25

    :cond_3a
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_3d
    return-void

    :cond_3e
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    add-int/2addr v0, p4

    :goto_41
    if-ge p4, v0, :cond_3d

    aget-wide v1, p3, p4

    mul-double/2addr v1, p1

    aput-wide v1, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_41
.end method


# virtual methods
.method public forward([DIZ)V
    .registers 17

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->isPowerOfTwo:Z

    if-eqz v0, :cond_a5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-wide v1, p1, v0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    add-int/lit8 v0, v0, -0x2

    :goto_15
    const/4 v3, 0x2

    if-lt v0, v3, :cond_39

    add-int v3, p2, v0

    add-int/lit8 v3, v3, 0x1

    add-int v4, p2, v0

    aget-wide v4, p1, v4

    add-int v6, p2, v0

    add-int/lit8 v6, v6, -0x1

    aget-wide v6, p1, v6

    sub-double/2addr v4, v6

    aput-wide v4, p1, v3

    add-int v3, p2, v0

    aget-wide v4, p1, v3

    add-int v6, p2, v0

    add-int/lit8 v6, v6, -0x1

    aget-wide v6, p1, v6

    add-double/2addr v4, v6

    aput-wide v4, p1, v3

    add-int/lit8 v0, v0, -0x2

    goto :goto_15

    :cond_39
    add-int/lit8 v0, p2, 0x1

    aget-wide v3, p1, p2

    sub-double/2addr v3, v1

    aput-wide v3, p1, v0

    aget-wide v3, p1, p2

    add-double v0, v3, v1

    aput-wide v0, p1, p2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_91

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->rftbsub(I[DII[DI)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftbsub(I[DI[II[D)V

    :cond_67
    :goto_67
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->dctsub(I[DII[DI)V

    if-eqz p3, :cond_5

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->scale(D[DI)V

    aget-wide v0, p1, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    aput-wide v0, p1, p2

    goto/16 :goto_5

    :cond_91
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_67

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftbsub(I[DI[II[D)V

    goto :goto_67

    :cond_a5
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    mul-int/lit8 v8, v0, 0x2

    new-array v6, v8, [D

    const/4 v0, 0x0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    invoke-static {p1, p2, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    :goto_b7
    if-ge v0, v8, :cond_c4

    sub-int v2, v8, v0

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v6, v2

    aput-wide v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b7

    :cond_c4
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v0, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    const/4 v0, 0x1

    if-le v1, v0, :cond_118

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_118

    const/4 v9, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    div-int v10, v0, v9

    new-array v11, v9, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v7, v0

    :goto_dd
    if-ge v7, v9, :cond_fb

    mul-int v2, v7, v10

    const/4 v0, 0x1

    if-ne v7, v0, :cond_f8

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    :goto_e6
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$1;

    move-object v1, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$1;-><init>(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;III[D[D)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_dd

    :cond_f8
    add-int v3, v2, v10

    goto :goto_e6

    :cond_fb
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_fe
    if-eqz p3, :cond_5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-direct {p0, v0, v1, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->scale(D[DI)V

    aget-wide v0, p1, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    aput-wide v0, p1, p2

    goto/16 :goto_5

    :cond_118
    const/4 v0, 0x0

    :goto_119
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    if-ge v0, v1, :cond_fe

    mul-int/lit8 v1, v0, 0x2

    add-int v2, p2, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    aget-wide v3, v3, v1

    aget-wide v9, v6, v1

    mul-double/2addr v3, v9

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v7, v1, 0x1

    aget-wide v9, v5, v7

    add-int/lit8 v1, v1, 0x1

    aget-wide v11, v6, v1

    mul-double/2addr v9, v11

    sub-double/2addr v3, v9

    aput-wide v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_119
.end method

.method public forward([DZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->forward([DIZ)V

    return-void
.end method

.method public inverse([DIZ)V
    .registers 15

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-boolean v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->isPowerOfTwo:Z

    if-eqz v0, :cond_a7

    if-eqz p3, :cond_24

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->scale(D[DI)V

    aget-wide v0, p1, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    aput-wide v0, p1, p2

    :cond_24
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->dctsub(I[DII[DI)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_8a

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftfsub(I[DI[II[D)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->rftfsub(I[DII[DI)V

    :cond_53
    :goto_53
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    sub-double v1, v0, v2

    aget-wide v3, p1, p2

    add-int/lit8 v0, p2, 0x1

    aget-wide v5, p1, v0

    add-double/2addr v3, v5

    aput-wide v3, p1, p2

    const/4 v0, 0x2

    :goto_65
    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    if-ge v0, v3, :cond_9e

    add-int v3, p2, v0

    add-int/lit8 v3, v3, -0x1

    add-int v4, p2, v0

    aget-wide v4, p1, v4

    add-int v6, p2, v0

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, p1, v6

    sub-double/2addr v4, v6

    aput-wide v4, p1, v3

    add-int v3, p2, v0

    aget-wide v4, p1, v3

    add-int v6, p2, v0

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, p1, v6

    add-double/2addr v4, v6

    aput-wide v4, p1, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_65

    :cond_8a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_53

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->cftfsub(I[DI[II[D)V

    goto :goto_53

    :cond_9e
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    aput-wide v1, p1, v0

    goto/16 :goto_5

    :cond_a7
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    mul-int/lit8 v0, v0, 0x2

    if-eqz p3, :cond_c0

    int-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1, p2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->scale(D[DI)V

    aget-wide v1, p1, p2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    aput-wide v1, p1, p2

    :cond_c0
    new-array v6, v0, [D

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_109

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_109

    const/4 v8, 0x2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    div-int v9, v0, v8

    new-array v10, v8, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v7, v0

    :goto_da
    if-ge v7, v8, :cond_f8

    mul-int v2, v7, v9

    const/4 v0, 0x1

    if-ne v7, v0, :cond_f5

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    :goto_e3
    new-instance v0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;-><init>(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;II[DI[D)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_da

    :cond_f5
    add-int v3, v2, v9

    goto :goto_e3

    :cond_f8
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_fb
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->fft:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse([DZ)V

    const/4 v0, 0x0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    invoke-static {v6, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5

    :cond_109
    const/4 v0, 0x0

    :goto_10a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->n:I

    if-ge v0, v1, :cond_fb

    mul-int/lit8 v1, v0, 0x2

    add-int v2, p2, v0

    aget-wide v2, p1, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    aget-wide v4, v4, v1

    mul-double/2addr v4, v2

    aput-wide v4, v6, v1

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->w:[D

    add-int/lit8 v1, v1, 0x1

    aget-wide v7, v5, v1

    neg-double v7, v7

    mul-double v1, v7, v2

    aput-wide v1, v6, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_10a
.end method

.method public inverse([DZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V

    return-void
.end method
