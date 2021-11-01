.class public Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$18;,
        Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;
    }
.end annotation


# static fields
.field private static final PI:F = 3.1415927f

.field private static final TWO_PI:F = 6.2831855f

.field private static final factors:[I


# instance fields
.field private bk1:[F

.field private bk2:[F

.field private ip:[I

.field private n:I

.field private nBluestein:I

.field private nc:I

.field private nw:I

.field private plan:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;

.field private w:[F

.field private wtable:[F

.field private wtable_r:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->factors:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x4
        0x2
        0x3
        0x5
    .end array-data
.end method

.method public strictfp constructor <init>(I)V
    .registers 10

    const/4 v7, 0x0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v4, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    invoke-static {p1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_be

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->factors:[I

    invoke-static {p1, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->getReminder(I[I)I

    move-result v0

    const/16 v1, 0xd3

    if-lt v0, v1, :cond_a3

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;->BLUESTEIN:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->nextPow2(I)I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    int-to-double v0, v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

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

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    aget v1, v1, v7

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    shl-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_82

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    invoke-direct {p0, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->makewt(I)V

    :cond_82
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    aget v0, v0, v4

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nc:I

    shl-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_9f

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nc:I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    invoke-direct {p0, v0, v1, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->makect(I[FI)V

    :cond_9f
    invoke-direct {p0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bluesteini()V

    :cond_a2
    :goto_a2
    return-void

    :cond_a3
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;->MIXED_RADIX:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;

    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0xf

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0xf

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    invoke-virtual {p0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cffti()V

    invoke-virtual {p0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->rffti()V

    goto :goto_a2

    :cond_be
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;->SPLIT_RADIX:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;

    int-to-double v0, p1

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

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

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    new-array v0, p1, [F

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    aget v1, v1, v7

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    shl-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_fb

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    invoke-direct {p0, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->makewt(I)V

    :cond_fb
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    aget v0, v0, v4

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nc:I

    shl-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_a2

    shr-int/lit8 v0, p1, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nc:I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    invoke-direct {p0, v0, v1, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->makect(I[FI)V

    goto :goto_a2
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    return-object v0
.end method

.method static synthetic access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;)[F
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    return-object v0
.end method

.method static synthetic access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;I[FI[FI)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl1(I[FI[FI)V

    return-void
.end method

.method static synthetic access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;II[FII[F)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftleaf(II[FII[F)V

    return-void
.end method

.method static synthetic access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;III[FII[F)I
    .registers 9

    invoke-direct/range {p0 .. p7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cfttree(III[FII[F)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;I[FI[FI)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl2(I[FI[FI)V

    return-void
.end method

.method private strictfp bitrv2(I[I[FI)V
    .registers 19

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

    if-ne v1, v0, :cond_2f2

    const/4 v0, 0x0

    move v1, v0

    :goto_18
    if-ge v1, v2, :cond_443

    mul-int/lit8 v5, v1, 0x4

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v1, :cond_224

    mul-int/lit8 v6, v0, 0x4

    add-int v7, v2, v1

    aget v7, p2, v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int v7, v2, v0

    aget v7, p2, v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v5

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    sub-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v3

    add-int/lit8 v7, v7, 0x2

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    add-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v3

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    sub-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v3

    add-int/lit8 v7, v7, -0x2

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    add-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    add-int v6, v6, p4

    add-int v7, v7, p4

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

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1d

    :cond_224
    add-int v0, v2, v1

    aget v0, p2, v0

    mul-int/lit8 v0, v0, 0x2

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

    :cond_2f2
    const/4 v0, 0x0

    move v1, v0

    :goto_2f4
    if-ge v1, v2, :cond_443

    mul-int/lit8 v5, v1, 0x4

    const/4 v0, 0x0

    :goto_2f9
    if-ge v0, v1, :cond_3fc

    mul-int/lit8 v6, v0, 0x4

    add-int v7, v2, v1

    aget v7, p2, v7

    add-int/2addr v6, v7

    add-int v7, v2, v0

    aget v7, p2, v7

    add-int/2addr v7, v5

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    add-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v3

    add-int/lit8 v7, v7, 0x2

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    sub-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v3

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    add-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v3

    add-int/lit8 v7, v7, -0x2

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    sub-int/2addr v7, v4

    add-int v6, v6, p4

    add-int v7, v7, p4

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

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2f9

    :cond_3fc
    add-int v0, v2, v1

    aget v0, p2, v0

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

    goto/16 :goto_2f4

    :cond_443
    return-void
.end method

.method private strictfp bitrv208([FI)V
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

.method private strictfp bitrv208neg([FI)V
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

.method private strictfp bitrv216([FI)V
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

.method private strictfp bitrv216neg([FI)V
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

.method private strictfp bitrv2conj(I[I[FI)V
    .registers 19

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

    if-ne v1, v0, :cond_342

    const/4 v0, 0x0

    move v1, v0

    :goto_18
    if-ge v1, v2, :cond_4cb

    mul-int/lit8 v5, v1, 0x4

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v1, :cond_244

    mul-int/lit8 v6, v0, 0x4

    add-int v7, v2, v1

    aget v7, p2, v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int v7, v2, v0

    aget v7, p2, v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v5

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    sub-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v3

    add-int/lit8 v7, v7, 0x2

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    add-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v3

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    sub-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v3

    add-int/lit8 v7, v7, -0x2

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    add-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    add-int v6, v6, p4

    add-int v7, v7, p4

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

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1d

    :cond_244
    add-int v0, v2, v1

    aget v0, p2, v0

    mul-int/lit8 v0, v0, 0x2

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

    :cond_342
    const/4 v0, 0x0

    move v1, v0

    :goto_344
    if-ge v1, v2, :cond_4cb

    mul-int/lit8 v5, v1, 0x4

    const/4 v0, 0x0

    :goto_349
    if-ge v0, v1, :cond_45c

    mul-int/lit8 v6, v0, 0x4

    add-int v7, v2, v1

    aget v7, p2, v7

    add-int/2addr v6, v7

    add-int v7, v2, v0

    aget v7, p2, v7

    add-int/2addr v7, v5

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    add-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v3

    add-int/lit8 v7, v7, 0x2

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    sub-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v3

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    add-int/2addr v6, v4

    add-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v3

    add-int/lit8 v7, v7, -0x2

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget v10, p3, v8

    add-int/lit8 v11, v8, 0x1

    aget v11, p3, v11

    neg-float v11, v11

    aget v12, p3, v9

    add-int/lit8 v13, v9, 0x1

    aget v13, p3, v13

    neg-float v13, v13

    aput v12, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput v13, p3, v8

    aput v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput v11, p3, v8

    sub-int/2addr v6, v4

    sub-int/2addr v7, v4

    add-int v6, v6, p4

    add-int v7, v7, p4

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

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_349

    :cond_45c
    add-int v0, v2, v1

    aget v0, p2, v0

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

    goto/16 :goto_344

    :cond_4cb
    return-void
.end method

.method private strictfp bluestein_complex([FII)V
    .registers 22

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v1, 0x2

    new-array v7, v1, [F

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_e2

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v2

    if-le v1, v2, :cond_e2

    const/4 v1, 0x2

    move/from16 v16, v1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/util/concurrent/Future;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int v10, v1, v16

    const/4 v1, 0x0

    move v9, v1

    :goto_2a
    move/from16 v0, v16

    if-ge v9, v0, :cond_51

    mul-int v4, v9, v10

    const/4 v1, 0x1

    if-ne v9, v1, :cond_4e

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    :goto_37
    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v6, p2

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$3;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;IIII[F[F)V

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v9

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_2a

    :cond_4e
    add-int v5, v4, v10

    goto :goto_37

    :cond_51
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftbsub(I[FI[II[F)V

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    div-int v8, v1, v16

    const/4 v1, 0x0

    :goto_73
    move/from16 v0, v16

    if-ge v1, v0, :cond_95

    mul-int v5, v1, v8

    const/4 v2, 0x1

    if-ne v1, v2, :cond_92

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    :goto_80
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$4;

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$4;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;III[F)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v17, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    :cond_92
    add-int v6, v5, v8

    goto :goto_80

    :cond_95
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftfsub(I[FI[II[F)V

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int v2, v1, v16

    const/4 v1, 0x0

    :goto_b7
    move/from16 v0, v16

    if-ge v1, v0, :cond_de

    mul-int v11, v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_db

    move-object/from16 v0, p0

    iget v12, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    :goto_c4
    new-instance v8, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$5;

    move-object/from16 v9, p0

    move/from16 v10, p3

    move/from16 v13, p2

    move-object/from16 v14, p1

    move-object v15, v7

    invoke-direct/range {v8 .. v15}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$5;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;IIII[F[F)V

    invoke-static {v8}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v17, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    :cond_db
    add-int v12, v11, v2

    goto :goto_c4

    :cond_de
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_e1
    return-void

    :cond_e2
    if-lez p3, :cond_120

    const/4 v1, 0x0

    :goto_e5
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v1, v2, :cond_15d

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    add-int v5, p2, v3

    aget v6, p1, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v8, v8, v2

    mul-float/2addr v6, v8

    aget v8, p1, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v9, v9, v3

    mul-float/2addr v8, v9

    sub-float/2addr v6, v8

    aput v6, v7, v2

    aget v4, p1, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v6, v3

    mul-float/2addr v4, v6

    aget v5, p1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v2, v6, v2

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    aput v2, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e5

    :cond_120
    const/4 v1, 0x0

    :goto_121
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v1, v2, :cond_15d

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    add-int v5, p2, v3

    aget v6, p1, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v8, v8, v2

    mul-float/2addr v6, v8

    aget v8, p1, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v9, v9, v3

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    aput v6, v7, v2

    aget v4, p1, v4

    neg-float v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v6, v3

    mul-float/2addr v4, v6

    aget v5, p1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v2, v6, v2

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    aput v2, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_121

    :cond_15d
    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftbsub(I[FI[II[F)V

    if-lez p3, :cond_1b0

    const/4 v1, 0x0

    :goto_178
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    if-ge v1, v2, :cond_1e8

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    aget v4, v7, v2

    neg-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v5, v5, v3

    mul-float/2addr v4, v5

    aget v5, v7, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, v7, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v6, v2

    mul-float/2addr v5, v6

    aget v6, v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v8, v8, v3

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    aput v5, v7, v2

    aput v4, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_178

    :cond_1b0
    const/4 v1, 0x0

    :goto_1b1
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    if-ge v1, v2, :cond_1e8

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    aget v4, v7, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v5, v5, v3

    mul-float/2addr v4, v5

    aget v5, v7, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, v7, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v6, v2

    mul-float/2addr v5, v6

    aget v6, v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v8, v8, v3

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    aput v5, v7, v2

    aput v4, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b1

    :cond_1e8
    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftfsub(I[FI[II[F)V

    if-lez p3, :cond_23e

    const/4 v1, 0x0

    :goto_203
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v1, v2, :cond_e1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    add-int v5, p2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v6, v2

    aget v8, v7, v2

    mul-float/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v8, v8, v3

    aget v9, v7, v3

    mul-float/2addr v8, v9

    sub-float/2addr v6, v8

    aput v6, p1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v4, v3

    aget v6, v7, v2

    mul-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v2, v6, v2

    aget v3, v7, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    aput v2, p1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_203

    :cond_23e
    const/4 v1, 0x0

    :goto_23f
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v1, v2, :cond_e1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    add-int v5, p2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v6, v2

    aget v8, v7, v2

    mul-float/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v8, v8, v3

    aget v9, v7, v3

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    aput v6, p1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v4, v3

    neg-float v4, v4

    aget v6, v7, v2

    mul-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v2, v6, v2

    aget v3, v7, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    aput v2, p1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_23f
.end method

.method private strictfp bluestein_real_forward([FI)V
    .registers 15

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [F

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_f1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_f1

    const/4 v0, 0x2

    move v10, v0

    new-array v11, v10, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int v8, v0, v10

    const/4 v0, 0x0

    move v7, v0

    :goto_1f
    if-ge v7, v10, :cond_3d

    mul-int v2, v7, v8

    const/4 v0, 0x1

    if-ne v7, v0, :cond_3a

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    :goto_28
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;

    move-object v1, p0

    move v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$9;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;III[F[F)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1f

    :cond_3a
    add-int v3, v2, v8

    goto :goto_28

    :cond_3d
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v4, v0, 0x2

    const/4 v6, 0x0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftbsub(I[FI[II[F)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    div-int v2, v0, v10

    const/4 v0, 0x0

    move v1, v0

    :goto_55
    if-ge v1, v10, :cond_70

    mul-int v3, v1, v2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_6d

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    :goto_5e
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$10;

    invoke-direct {v4, p0, v3, v0, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$10;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;II[F)V

    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_55

    :cond_6d
    add-int v0, v3, v2

    goto :goto_5e

    :cond_70
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_73
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v4, v0, 0x2

    const/4 v6, 0x0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftfsub(I[FI[II[F)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_14f

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    aget v1, v5, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x1

    aget v2, v5, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    aget v1, v1, v2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    aget v2, v5, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    :goto_bd
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1dd

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v4, v1

    aget v6, v5, v1

    mul-float/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v6, v2

    aget v7, v5, v2

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    aput v4, p1, v3

    add-int v3, p2, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v4, v2

    neg-float v4, v4

    aget v6, v5, v1

    mul-float/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v1, v6, v1

    aget v2, v5, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    aput v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    :cond_f1
    const/4 v0, 0x0

    :goto_f2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v1, :cond_112

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    aget v4, p1, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v6, v1

    mul-float/2addr v4, v6

    aput v4, v5, v1

    aget v1, p1, v3

    neg-float v1, v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v3, v3, v2

    mul-float/2addr v1, v3

    aput v1, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_f2

    :cond_112
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v4, v0, 0x2

    const/4 v6, 0x0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftbsub(I[FI[II[F)V

    const/4 v0, 0x0

    :goto_122
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_73

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget v3, v5, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v4, v4, v2

    mul-float/2addr v3, v4

    aget v4, v5, v2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v6, v1

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    aget v4, v5, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v6, v1

    mul-float/2addr v4, v6

    aget v6, v5, v2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v7, v7, v2

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    aput v4, v5, v1

    aput v3, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_122

    :cond_14f
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    aget v1, v5, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x1

    aget v2, v5, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    aget v1, v1, v2

    neg-float v1, v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v2, v5, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    aget v3, v5, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    :goto_185
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1bb

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v4, v1

    aget v6, v5, v1

    mul-float/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v6, v2

    aget v7, v5, v2

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    aput v4, p1, v3

    add-int v3, p2, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v4, v2

    neg-float v4, v4

    aget v6, v5, v1

    mul-float/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v1, v6, v1

    aget v2, v5, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    aput v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_185

    :cond_1bb
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v2, v5, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    aget v2, v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    aget v3, v5, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    :cond_1dd
    return-void
.end method

.method private strictfp bluestein_real_full([FII)V
    .registers 22

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v1, 0x2

    new-array v7, v1, [F

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_e2

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v2

    if-le v1, v2, :cond_e2

    const/4 v1, 0x2

    move/from16 v16, v1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/util/concurrent/Future;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int v10, v1, v16

    const/4 v1, 0x0

    move v9, v1

    :goto_2a
    move/from16 v0, v16

    if-ge v9, v0, :cond_51

    mul-int v4, v9, v10

    const/4 v1, 0x1

    if-ne v9, v1, :cond_4e

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    :goto_37
    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$6;

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v6, p2

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$6;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;IIII[F[F)V

    invoke-static {v1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v17, v9

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_2a

    :cond_4e
    add-int v5, v4, v10

    goto :goto_37

    :cond_51
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftbsub(I[FI[II[F)V

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    div-int v8, v1, v16

    const/4 v1, 0x0

    :goto_73
    move/from16 v0, v16

    if-ge v1, v0, :cond_95

    mul-int v5, v1, v8

    const/4 v2, 0x1

    if-ne v1, v2, :cond_92

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    :goto_80
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$7;

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$7;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;III[F)V

    invoke-static {v2}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    aput-object v2, v17, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    :cond_92
    add-int v6, v5, v8

    goto :goto_80

    :cond_95
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftfsub(I[FI[II[F)V

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int v2, v1, v16

    const/4 v1, 0x0

    :goto_b7
    move/from16 v0, v16

    if-ge v1, v0, :cond_de

    mul-int v11, v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_db

    move-object/from16 v0, p0

    iget v12, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    :goto_c4
    new-instance v8, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$8;

    move-object/from16 v9, p0

    move/from16 v10, p3

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object v15, v7

    invoke-direct/range {v8 .. v15}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$8;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;III[FI[F)V

    invoke-static {v8}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v17, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    :cond_db
    add-int v12, v11, v2

    goto :goto_c4

    :cond_de
    invoke-static/range {v17 .. v17}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_e1
    return-void

    :cond_e2
    if-lez p3, :cond_10a

    const/4 v1, 0x0

    :goto_e5
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v1, v2, :cond_131

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v1

    aget v5, p1, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v6, v2

    mul-float/2addr v5, v6

    aput v5, v7, v2

    aget v2, p1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v4, v3

    mul-float/2addr v2, v4

    aput v2, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e5

    :cond_10a
    const/4 v1, 0x0

    :goto_10b
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v1, v2, :cond_131

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v1

    aget v5, p1, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v6, v2

    mul-float/2addr v5, v6

    aput v5, v7, v2

    aget v2, p1, v4

    neg-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v4, v3

    mul-float/2addr v2, v4

    aput v2, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_10b

    :cond_131
    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftbsub(I[FI[II[F)V

    if-lez p3, :cond_184

    const/4 v1, 0x0

    :goto_14c
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    if-ge v1, v2, :cond_1bc

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    aget v4, v7, v2

    neg-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v5, v5, v3

    mul-float/2addr v4, v5

    aget v5, v7, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, v7, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v6, v2

    mul-float/2addr v5, v6

    aget v6, v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v8, v8, v3

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    aput v5, v7, v2

    aput v4, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_14c

    :cond_184
    const/4 v1, 0x0

    :goto_185
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    if-ge v1, v2, :cond_1bc

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    aget v4, v7, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v5, v5, v3

    mul-float/2addr v4, v5

    aget v5, v7, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, v7, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v6, v2

    mul-float/2addr v5, v6

    aget v6, v7, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v8, v8, v3

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    aput v5, v7, v2

    aput v4, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_185

    :cond_1bc
    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftfsub(I[FI[II[F)V

    if-lez p3, :cond_212

    const/4 v1, 0x0

    :goto_1d7
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v1, v2, :cond_e1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v5, v5, v2

    aget v6, v7, v2

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v6, v3

    aget v8, v7, v3

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    aput v5, p1, v4

    add-int v4, p2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v5, v5, v3

    aget v6, v7, v2

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v2, v6, v2

    aget v3, v7, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    aput v2, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d7

    :cond_212
    const/4 v1, 0x0

    :goto_213
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v1, v2, :cond_e1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v5, v5, v2

    aget v6, v7, v2

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v6, v3

    aget v8, v7, v3

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    aput v5, p1, v4

    add-int v4, p2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v5, v5, v3

    neg-float v5, v5

    aget v6, v7, v2

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v2, v6, v2

    aget v3, v7, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    aput v2, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_213
.end method

.method private strictfp bluestein_real_inverse([FI)V
    .registers 16

    const/4 v10, 0x1

    const/4 v3, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_b2

    aget v0, p1, p2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v1, v1, v3

    mul-float/2addr v0, v1

    aput v0, v2, v3

    aget v0, p1, p2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v1, v1, v10

    mul-float/2addr v0, v1

    aput v0, v2, v10

    move v0, v10

    :goto_21
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_54

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v4, v1, 0x1

    add-int v5, p2, v1

    add-int v6, p2, v4

    aget v7, p1, v5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v8, v8, v1

    mul-float/2addr v7, v8

    aget v8, p1, v6

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v9, v9, v4

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    aput v7, v2, v1

    aget v5, p1, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v7, v7, v4

    mul-float/2addr v5, v7

    aget v6, p1, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v1, v7, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    aput v1, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_54
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    aget v4, v4, v5

    mul-float/2addr v1, v4

    aput v1, v2, v0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v1, v4

    aput v1, v2, v0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_7c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v1, :cond_1c2

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    sub-int/2addr v5, v1

    add-int/lit8 v6, v5, 0x1

    aget v7, p1, v5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v8, v8, v1

    mul-float/2addr v7, v8

    aget v8, p1, v6

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v9, v9, v4

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v2, v1

    aget v5, p1, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v7, v7, v4

    mul-float/2addr v5, v7

    aget v6, p1, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v1, v7, v1

    mul-float/2addr v1, v6

    sub-float v1, v5, v1

    aput v1, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    :cond_b2
    aget v0, p1, p2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v1, v1, v3

    mul-float/2addr v0, v1

    aput v0, v2, v3

    aget v0, p1, p2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v1, v1, v10

    mul-float/2addr v0, v1

    aput v0, v2, v10

    move v0, v10

    :goto_c5
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_fa

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v4, v1, 0x1

    add-int v5, p2, v1

    add-int v6, p2, v4

    aget v7, p1, v5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v8, v8, v1

    mul-float/2addr v7, v8

    aget v8, p1, v6

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v9, v9, v4

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    aput v7, v2, v1

    aget v5, p1, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v7, v7, v4

    mul-float/2addr v5, v7

    aget v6, p1, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v1, v7, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    aput v1, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_c5

    :cond_fa
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget v1, p1, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    mul-float/2addr v1, v4

    add-int/lit8 v4, p2, 0x1

    aget v4, p1, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    aput v1, v2, v0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget v1, p1, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    aget v4, v4, v5

    mul-float/2addr v1, v4

    add-int/lit8 v4, p2, 0x1

    aget v4, p1, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    aput v1, v2, v0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget v1, p1, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v1, v4

    add-int/lit8 v4, p2, 0x1

    aget v4, p1, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    aput v1, v2, v0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget v1, p1, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    mul-float/2addr v1, v4

    add-int/lit8 v4, p2, 0x1

    aget v4, p1, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    aput v1, v2, v0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    :goto_18c
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v1, :cond_1c2

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    sub-int/2addr v5, v1

    add-int/lit8 v6, v5, 0x1

    aget v7, p1, v5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v8, v8, v1

    mul-float/2addr v7, v8

    aget v8, p1, v6

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v9, v9, v4

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v2, v1

    aget v5, p1, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v7, v7, v4

    mul-float/2addr v5, v7

    aget v6, p1, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v1, v7, v1

    mul-float/2addr v1, v6

    sub-float v1, v5, v1

    aput v1, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_18c

    :cond_1c2
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftbsub(I[FI[II[F)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    if-le v0, v10, :cond_239

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_239

    const/4 v0, 0x2

    move v11, v0

    new-array v12, v11, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    div-int v4, v0, v11

    move v1, v3

    :goto_1e7
    if-ge v1, v11, :cond_201

    mul-int v5, v1, v4

    if-ne v1, v10, :cond_1fe

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    :goto_1ef
    new-instance v6, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$11;

    invoke-direct {v6, p0, v5, v0, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$11;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;II[F)V

    invoke-static {v6}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v12, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e7

    :cond_1fe
    add-int v0, v5, v4

    goto :goto_1ef

    :cond_201
    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftfsub(I[FI[II[F)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int v1, v0, v11

    move v0, v3

    :goto_217
    if-ge v0, v11, :cond_235

    mul-int v5, v0, v1

    if-ne v0, v10, :cond_232

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    :goto_21f
    new-instance v3, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$12;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;II[FI[F)V

    invoke-static {v3}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v12, v0

    add-int/lit8 v3, v0, 0x1

    move v0, v3

    goto :goto_217

    :cond_232
    add-int v6, v5, v1

    goto :goto_21f

    :cond_235
    invoke-static {v12}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_238
    return-void

    :cond_239
    move v0, v3

    :goto_23a
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_268

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v4, v1, 0x1

    aget v5, v2, v1

    neg-float v5, v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v6, v4

    mul-float/2addr v5, v6

    aget v6, v2, v4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v7, v7, v1

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aget v6, v2, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v7, v7, v1

    mul-float/2addr v6, v7

    aget v7, v2, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v8, v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v2, v1

    aput v5, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_23a

    :cond_268
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftfsub(I[FI[II[F)V

    :goto_276
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v3, v0, :cond_238

    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v1, v0, 0x1

    add-int v4, p2, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v5, v5, v0

    aget v0, v2, v0

    mul-float/2addr v0, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v5, v5, v1

    aget v1, v2, v1

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    aput v0, p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_276
.end method

.method private strictfp bluestein_real_inverse2([FI)V
    .registers 15

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [F

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_f0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_f0

    const/4 v0, 0x2

    move v10, v0

    new-array v11, v10, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int v8, v0, v10

    const/4 v0, 0x0

    move v7, v0

    :goto_1f
    if-ge v7, v10, :cond_3d

    mul-int v2, v7, v8

    const/4 v0, 0x1

    if-ne v7, v0, :cond_3a

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    :goto_28
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$13;

    move-object v1, p0

    move v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$13;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;III[F[F)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1f

    :cond_3a
    add-int v3, v2, v8

    goto :goto_28

    :cond_3d
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v4, v0, 0x2

    const/4 v6, 0x0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftbsub(I[FI[II[F)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    div-int v2, v0, v10

    const/4 v0, 0x0

    move v1, v0

    :goto_55
    if-ge v1, v10, :cond_70

    mul-int v3, v1, v2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_6d

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    :goto_5e
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;

    invoke-direct {v4, p0, v3, v0, v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$14;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;II[F)V

    invoke-static {v4}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_55

    :cond_6d
    add-int v0, v3, v2

    goto :goto_5e

    :cond_70
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_73
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v4, v0, 0x2

    const/4 v6, 0x0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftfsub(I[FI[II[F)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_14e

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    aget v1, v5, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x1

    aget v2, v5, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    aget v1, v1, v2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    aget v2, v5, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    :goto_bd
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1da

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v4, v1

    aget v6, v5, v1

    mul-float/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v6, v2

    aget v7, v5, v2

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    aput v4, p1, v3

    add-int v3, p2, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v4, v2

    aget v6, v5, v1

    mul-float/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v1, v6, v1

    aget v2, v5, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    aput v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    :cond_f0
    const/4 v0, 0x0

    :goto_f1
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v1, :cond_110

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    aget v4, p1, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v6, v1

    mul-float/2addr v4, v6

    aput v4, v5, v1

    aget v1, p1, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v3, v3, v2

    mul-float/2addr v1, v3

    aput v1, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_f1

    :cond_110
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v4, v0, 0x2

    const/4 v6, 0x0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftbsub(I[FI[II[F)V

    const/4 v0, 0x0

    :goto_120
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_73

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget v3, v5, v1

    neg-float v3, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v4, v4, v2

    mul-float/2addr v3, v4

    aget v4, v5, v2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v6, v1

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    aget v4, v5, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v6, v6, v1

    mul-float/2addr v4, v6

    aget v6, v5, v2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v7, v7, v2

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    aput v4, v5, v1

    aput v3, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_120

    :cond_14e
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    aget v1, v5, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v2, 0x1

    aget v2, v5, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    aget v1, v1, v2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v2, v5, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    aget v3, v5, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    :goto_183
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1b8

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v4, v1

    aget v6, v5, v1

    mul-float/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v6, v6, v2

    aget v7, v5, v2

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    aput v4, p1, v3

    add-int v3, p2, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v4, v2

    aget v6, v5, v1

    mul-float/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v1, v6, v1

    aget v2, v5, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    aput v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_183

    :cond_1b8
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v2, v2, -0x1

    aget v2, v5, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    aget v2, v2, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    aget v3, v5, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p1, v0

    :cond_1da
    return-void
.end method

.method private strictfp bluesteini()V
    .registers 11

    const/4 v1, 0x1

    const/4 v3, 0x0

    const v0, 0x40490fdb    # (float)Math.PI

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v2, v2

    div-float v4, v0, v2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v3

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    const/4 v2, 0x0

    aput v2, v0, v1

    move v0, v1

    move v2, v3

    :goto_17
    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v5, :cond_4a

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v2, v5

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v5, v5, 0x2

    if-lt v2, v5, :cond_2b

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    :cond_2b
    int-to-float v5, v2

    mul-float/2addr v5, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    mul-int/lit8 v7, v0, 0x2

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v6, v7

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    aput v5, v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_4a
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    double-to-float v2, v4

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v4, v3

    mul-float/2addr v4, v2

    aput v4, v0, v3

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v4, v1

    mul-float/2addr v4, v2

    aput v4, v0, v1

    const/4 v0, 0x2

    :goto_64
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_a1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    aget v4, v4, v0

    mul-float/2addr v4, v2

    aput v4, v1, v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk1:[F

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    mul-float/2addr v5, v2

    aput v5, v1, v4

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    aget v5, v5, v0

    aput v5, v1, v4

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    aput v5, v1, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_64

    :cond_a1
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bk2:[F

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftbsub(I[FI[II[F)V

    return-void
.end method

.method private strictfp cftb040([FI)V
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

.method private strictfp cftb1st(I[FI[FI)V
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

.method private strictfp cftbsub(I[FI[II[F)V
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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftb1st(I[FI[FI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftrec4_th(I[FII[F)V

    :goto_2a
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bitrv2conj(I[I[FI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftrec4(I[FII[F)V

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

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftleaf(II[FII[F)V

    goto :goto_2a

    :cond_4b
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftfx41(I[FII[F)V

    goto :goto_2a

    :cond_55
    if-ne p1, v1, :cond_60

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bitrv216neg([FI)V

    goto :goto_2d

    :cond_60
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bitrv208neg([FI)V

    goto :goto_2d

    :cond_68
    if-ne p1, v0, :cond_6e

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftb040([FI)V

    goto :goto_2d

    :cond_6e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftxb020([FI)V

    goto :goto_2d
.end method

.method private strictfp cftf040([FI)V
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

.method private strictfp cftf081([FI[FI)V
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

.method private strictfp cftf082([FI[FI)V
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

.method private strictfp cftf161([FI[FI)V
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

.method private strictfp cftf162([FI[FI)V
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

.method private strictfp cftf1st(I[FI[FI)V
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

.method private strictfp cftfsub(I[FI[II[F)V
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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf1st(I[FI[FI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftrec4_th(I[FII[F)V

    :goto_2a
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bitrv2(I[I[FI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftrec4(I[FII[F)V

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

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftleaf(II[FII[F)V

    goto :goto_2a

    :cond_4b
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftfx41(I[FII[F)V

    goto :goto_2a

    :cond_55
    if-ne p1, v1, :cond_60

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bitrv216([FI)V

    goto :goto_2d

    :cond_60
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bitrv208([FI)V

    goto :goto_2d

    :cond_68
    if-ne p1, v0, :cond_6e

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf040([FI)V

    goto :goto_2d

    :cond_6e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftxb020([FI)V

    goto :goto_2d
.end method

.method private strictfp cftfx41(I[FII[F)V
    .registers 8

    const/16 v0, 0x80

    if-ne p1, v0, :cond_1f

    add-int/lit8 v0, p4, -0x8

    invoke-direct {p0, p2, p3, p5, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    add-int/lit8 v0, p3, 0x20

    add-int/lit8 v1, p4, -0x20

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf162([FI[FI)V

    add-int/lit8 v0, p3, 0x40

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    add-int/lit8 v0, p3, 0x60

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    :goto_1e
    return-void

    :cond_1f
    add-int/lit8 v0, p4, -0x8

    invoke-direct {p0, p2, p3, p5, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    add-int/lit8 v0, p3, 0x10

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf082([FI[FI)V

    add-int/lit8 v0, p3, 0x20

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    add-int/lit8 v0, p3, 0x30

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    goto :goto_1e
.end method

.method private strictfp cftleaf(II[FII[F)V
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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl1(I[FI[FI)V

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p3, p4, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    add-int/lit8 v0, p4, 0x20

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf162([FI[FI)V

    add-int/lit8 v0, p4, 0x40

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    add-int/lit8 v0, p4, 0x60

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    add-int/lit16 v3, p4, 0x80

    add-int/lit8 v5, p5, -0x80

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl2(I[FI[FI)V

    add-int/lit16 v0, p4, 0x80

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    add-int/lit16 v0, p4, 0xa0

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf162([FI[FI)V

    add-int/lit16 v0, p4, 0xc0

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    add-int/lit16 v0, p4, 0xe0

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf162([FI[FI)V

    add-int/lit16 v3, p4, 0x100

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl1(I[FI[FI)V

    add-int/lit16 v0, p4, 0x100

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    add-int/lit16 v0, p4, 0x120

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf162([FI[FI)V

    add-int/lit16 v0, p4, 0x140

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    add-int/lit16 v0, p4, 0x160

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    if-eqz p2, :cond_a0

    add-int/lit16 v3, p4, 0x180

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl1(I[FI[FI)V

    add-int/lit16 v0, p4, 0x1e0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    :goto_8a
    add-int/lit16 v0, p4, 0x180

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    add-int/lit16 v0, p4, 0x1a0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf162([FI[FI)V

    add-int/lit16 v0, p4, 0x1c0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf161([FI[FI)V

    :goto_9f
    return-void

    :cond_a0
    add-int/lit16 v3, p4, 0x180

    add-int/lit8 v5, p5, -0x80

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl2(I[FI[FI)V

    add-int/lit16 v0, p4, 0x1e0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf162([FI[FI)V

    goto :goto_8a

    :cond_b2
    add-int/lit8 v5, p5, -0x20

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl1(I[FI[FI)V

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p3, p4, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    add-int/lit8 v0, p4, 0x10

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf082([FI[FI)V

    add-int/lit8 v0, p4, 0x20

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    add-int/lit8 v0, p4, 0x30

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    add-int/lit8 v3, p4, 0x40

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl2(I[FI[FI)V

    add-int/lit8 v0, p4, 0x40

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    add-int/lit8 v0, p4, 0x50

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf082([FI[FI)V

    add-int/lit8 v0, p4, 0x60

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    add-int/lit8 v0, p4, 0x70

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf082([FI[FI)V

    add-int/lit16 v3, p4, 0x80

    add-int/lit8 v5, p5, -0x20

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl1(I[FI[FI)V

    add-int/lit16 v0, p4, 0x80

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    add-int/lit16 v0, p4, 0x90

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf082([FI[FI)V

    add-int/lit16 v0, p4, 0xa0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    add-int/lit16 v0, p4, 0xb0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    if-eqz p2, :cond_14f

    add-int/lit16 v3, p4, 0xc0

    add-int/lit8 v5, p5, -0x20

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl1(I[FI[FI)V

    add-int/lit16 v0, p4, 0xf0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    :goto_138
    add-int/lit16 v0, p4, 0xc0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    add-int/lit16 v0, p4, 0xd0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf082([FI[FI)V

    add-int/lit16 v0, p4, 0xe0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf081([FI[FI)V

    goto/16 :goto_9f

    :cond_14f
    add-int/lit16 v3, p4, 0xc0

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl2(I[FI[FI)V

    add-int/lit16 v0, p4, 0xf0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftf082([FI[FI)V

    goto :goto_138
.end method

.method private strictfp cftmdl1(I[FI[FI)V
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

.method private strictfp cftmdl2(I[FI[FI)V
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

.method private strictfp cftrec4(I[FII[F)V
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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl1(I[FI[FI)V

    goto :goto_3

    :cond_17
    const/4 v2, 0x1

    sub-int v4, v6, v1

    move-object v0, p0

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftleaf(II[FII[F)V

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

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cfttree(III[FII[F)I

    move-result v6

    add-int v8, v11, v2

    move-object v4, p0

    move v5, v1

    move-object v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftleaf(II[FII[F)V

    sub-int/2addr v2, v1

    goto :goto_28

    :cond_45
    return-void
.end method

.method private strictfp cftrec4_th(I[FII[F)V
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

    move v11, v2

    move v12, v0

    :goto_16
    if-ge v12, v8, :cond_50

    mul-int v0, v12, v3

    add-int v2, p3, v0

    if-eq v12, v9, :cond_39

    add-int/lit8 v10, v11, 0x1

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$15;

    move-object v1, p0

    move v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$15;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;III[F[FI)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v11

    move v0, v10

    :goto_34
    add-int/lit8 v1, v12, 0x1

    move v11, v0

    move v12, v1

    goto :goto_16

    :cond_39
    add-int/lit8 v10, v11, 0x1

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$16;

    move-object v1, p0

    move v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$16;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;III[F[FI)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v13, v11

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

.method private strictfp cfttree(III[FII[F)I
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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl1(I[FI[FI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl2(I[FI[FI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl1(I[FI[FI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftmdl2(I[FI[FI)V

    shr-int/lit8 v1, v1, 0x2

    goto :goto_49

    :cond_5a
    move v0, v6

    goto :goto_18
.end method

.method private strictfp cftx020([FI)V
    .registers 8

    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    sub-float/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    neg-float v1, v1

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    add-float/2addr v1, v2

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

.method private strictfp cftxb020([FI)V
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

.method private strictfp cftxc020([FI)V
    .registers 8

    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    sub-float/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p2, 0x3

    aget v2, p1, v2

    add-float/2addr v1, v2

    aget v2, p1, p2

    add-int/lit8 v3, p2, 0x2

    aget v3, p1, v3

    add-float/2addr v2, v3

    aput v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget v3, p1, v2

    add-int/lit8 v4, p2, 0x3

    aget v4, p1, v4

    sub-float/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v2, p2, 0x2

    aput v0, p1, v2

    add-int/lit8 v0, p2, 0x3

    aput v1, p1, v0

    return-void
.end method

.method private static strictfp getReminder(I[I)I
    .registers 5

    if-gtz p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x0

    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_1c

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1c

    aget v1, p1, v0

    :goto_13
    rem-int v2, p0, v1

    if-nez v2, :cond_19

    div-int/2addr p0, v1

    goto :goto_13

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1c
    return p0
.end method

.method private strictfp makect(I[FI)V
    .registers 13

    const/4 v0, 0x1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    aput p1, v1, v0

    if-le p1, v0, :cond_44

    shr-int/lit8 v1, p1, 0x1

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v4, v1

    div-double/2addr v2, v4

    double-to-float v2, v2

    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, p2, p3

    add-int v3, p3, v1

    aget v4, p2, p3

    float-to-double v4, v4

    mul-double/2addr v4, v7

    double-to-float v4, v4

    aput v4, p2, v3

    :goto_26
    if-ge v0, v1, :cond_44

    int-to-float v3, v0

    mul-float/2addr v3, v2

    add-int v4, p3, v0

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, p2, v4

    add-int v4, p3, p1

    sub-int/2addr v4, v0

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    double-to-float v3, v5

    aput v3, p2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_44
    return-void
.end method

.method private strictfp makeipt(I)V
    .registers 9

    const/4 v1, 0x2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

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

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    aget v4, v4, v0

    shl-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    add-int v6, v1, v0

    aput v4, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

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

.method private strictfp makewt(I)V
    .registers 15

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x2

    if-le p1, v0, :cond_138

    shr-int/lit8 v1, p1, 0x1

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v4, v1

    div-double/2addr v2, v4

    double-to-float v2, v2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v4, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v3, v5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7d

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x2

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v2, v3

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x3

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, v2, v3

    :cond_48
    const/4 v0, 0x0

    move v12, v0

    move v0, v1

    move v1, v12

    :goto_4c
    const/4 v2, 0x2

    if-le v0, v2, :cond_138

    add-int v2, v1, v0

    shr-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v0, v2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v5, v2, 0x1

    aput v4, v0, v5

    const/4 v0, 0x4

    if-ne v3, v0, :cond_dc

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v5, v1, 0x4

    aget v0, v0, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v1, v1, 0x5

    aget v1, v5, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v6, v2, 0x2

    aput v0, v5, v6

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v5, v2, 0x3

    aput v1, v0, v5

    :cond_7a
    move v1, v2

    move v0, v3

    goto :goto_4c

    :cond_7d
    const/4 v3, 0x4

    if-le v1, v3, :cond_48

    invoke-direct {p0, p1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->makeipt(I)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v5, 0x2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-float v0, v6

    aput v0, v3, v5

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    const/4 v3, 0x3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/high16 v7, 0x40c00000    # 6.0f

    mul-float/2addr v7, v2

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-float v5, v5

    aput v5, v0, v3

    const/4 v0, 0x4

    :goto_a3
    if-ge v0, v1, :cond_48

    int-to-float v3, v0

    mul-float/2addr v3, v2

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v6, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v7, v0, 0x1

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v3, v8

    aput v3, v6, v7

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v6, v0, 0x2

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v3, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v6, v0, 0x3

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    neg-double v7, v7

    double-to-float v5, v7

    aput v5, v3, v6

    add-int/lit8 v0, v0, 0x4

    goto :goto_a3

    :cond_dc
    const/4 v0, 0x4

    if-le v3, v0, :cond_7a

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v5, v1, 0x4

    aget v0, v0, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v6, v1, 0x6

    aget v5, v5, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v7, v2, 0x2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    float-to-double v10, v0

    div-double/2addr v8, v10

    double-to-float v0, v8

    aput v0, v6, v7

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v6, v2, 0x3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    float-to-double v9, v5

    div-double/2addr v7, v9

    double-to-float v5, v7

    aput v5, v0, v6

    const/4 v0, 0x4

    :goto_102
    if-ge v0, v3, :cond_7a

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v1

    add-int v6, v2, v0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    aget v7, v7, v5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v9, v5, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v10, v5, 0x2

    aget v9, v9, v10

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v5, v5, 0x3

    aget v5, v10, v5

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    aput v7, v10, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v10, v6, 0x1

    aput v8, v7, v10

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v8, v6, 0x2

    aput v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    add-int/lit8 v6, v6, 0x3

    aput v5, v7, v6

    add-int/lit8 v0, v0, 0x4

    goto :goto_102

    :cond_138
    return-void
.end method

.method private strictfp rftbsub(I[FII[FI)V
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

.method private strictfp rftfsub(I[FII[FI)V
    .registers 19

    shr-int/lit8 v2, p1, 0x1

    mul-int/lit8 v0, p4, 0x2

    div-int v3, v0, v2

    const/4 v1, 0x0

    const/4 v0, 0x2

    :goto_8
    if-ge v0, v2, :cond_55

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

    add-int/lit8 v7, v7, 0x1

    aget v7, p2, v7

    sub-float v7, v5, v7

    aput v7, p2, v6

    aget v6, p2, v4

    add-float/2addr v6, v10

    aput v6, p2, v4

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v4, p2, v4

    sub-float v4, v5, v4

    aput v4, p2, v6

    add-int/lit8 v0, v0, 0x2

    goto :goto_8

    :cond_55
    add-int v0, p3, v2

    add-int/lit8 v0, v0, 0x1

    add-int v1, p3, v2

    add-int/lit8 v1, v1, 0x1

    aget v1, p2, v1

    neg-float v1, v1

    aput v1, p2, v0

    return-void
.end method

.method private strictfp scale(F[FIZ)V
    .registers 16

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    float-to-double v2, p1

    div-double/2addr v0, v2

    double-to-float v5, v0

    if-eqz p4, :cond_3c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v0, v0, 0x2

    move v6, v0

    :goto_c
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    const/4 v0, 0x1

    if-le v8, v0, :cond_47

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v0

    if-lt v6, v0, :cond_47

    div-int v9, v6, v8

    new-array v10, v8, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v7, v0

    :goto_1f
    if-ge v7, v8, :cond_43

    mul-int v0, v7, v9

    add-int v2, p3, v0

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_40

    add-int v3, p3, v6

    :goto_2b
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$17;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$17;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;II[FF)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v10, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1f

    :cond_3c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    move v6, v0

    goto :goto_c

    :cond_40
    add-int v3, v2, v9

    goto :goto_2b

    :cond_43
    invoke-static {v10}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_46
    return-void

    :cond_47
    move v0, p3

    :goto_48
    add-int v1, p3, v6

    if-ge v0, v1, :cond_46

    aget v1, p2, v0

    mul-float/2addr v1, v5

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_48
.end method


# virtual methods
.method strictfp cfftf([FII)V
    .registers 35

    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v25, v3, 0x2

    move/from16 v0, v25

    new-array v8, v0, [F

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v28, v3, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v27, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v4, v28, 0x1

    aget v3, v3, v4

    float-to-int v0, v3

    move/from16 v29, v0

    const/16 v23, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x2

    move/from16 v24, v3

    move/from16 v10, v25

    :goto_2c
    add-int/lit8 v3, v29, 0x1

    move/from16 v0, v24

    if-gt v0, v3, :cond_11f

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v4, v24, v28

    aget v3, v3, v4

    float-to-int v0, v3

    move/from16 v30, v0

    mul-int v26, v30, v5

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int v3, v3, v26

    add-int v4, v3, v3

    mul-int v16, v4, v5

    packed-switch v30, :pswitch_data_132

    if-nez v23, :cond_106

    const/16 v20, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, v27

    move v13, v4

    move/from16 v14, v30

    move v15, v5

    move-object/from16 v17, p1

    move/from16 v18, p2

    move-object/from16 v19, v8

    move/from16 v21, v10

    move/from16 v22, p3

    invoke-virtual/range {v11 .. v22}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->passfg([IIIII[FI[FIII)V

    :goto_65
    const/4 v3, 0x0

    aget v3, v27, v3

    if-eqz v3, :cond_12d

    rsub-int/lit8 v3, v23, 0x1

    :goto_6c
    add-int/lit8 v5, v30, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v10, v4

    add-int/lit8 v4, v24, 0x1

    move/from16 v24, v4

    move/from16 v23, v3

    move/from16 v5, v26

    goto :goto_2c

    :pswitch_79
    if-nez v23, :cond_8a

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v11, p3

    invoke-virtual/range {v3 .. v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->passf4(II[FI[FIII)V

    :goto_87
    rsub-int/lit8 v3, v23, 0x1

    goto :goto_6c

    :cond_8a
    const/4 v15, 0x0

    move-object/from16 v11, p0

    move v12, v4

    move v13, v5

    move-object v14, v8

    move-object/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, v10

    move/from16 v19, p3

    invoke-virtual/range {v11 .. v19}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->passf4(II[FI[FIII)V

    goto :goto_87

    :pswitch_9c
    if-nez v23, :cond_ad

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v11, p3

    invoke-virtual/range {v3 .. v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->passf2(II[FI[FIII)V

    :goto_aa
    rsub-int/lit8 v3, v23, 0x1

    goto :goto_6c

    :cond_ad
    const/4 v15, 0x0

    move-object/from16 v11, p0

    move v12, v4

    move v13, v5

    move-object v14, v8

    move-object/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, v10

    move/from16 v19, p3

    invoke-virtual/range {v11 .. v19}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->passf2(II[FI[FIII)V

    goto :goto_aa

    :pswitch_bf
    if-nez v23, :cond_d0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v11, p3

    invoke-virtual/range {v3 .. v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->passf3(II[FI[FIII)V

    :goto_cd
    rsub-int/lit8 v3, v23, 0x1

    goto :goto_6c

    :cond_d0
    const/4 v15, 0x0

    move-object/from16 v11, p0

    move v12, v4

    move v13, v5

    move-object v14, v8

    move-object/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, v10

    move/from16 v19, p3

    invoke-virtual/range {v11 .. v19}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->passf3(II[FI[FIII)V

    goto :goto_cd

    :pswitch_e2
    if-nez v23, :cond_f4

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v11, p3

    invoke-virtual/range {v3 .. v11}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->passf5(II[FI[FIII)V

    :goto_f0
    rsub-int/lit8 v3, v23, 0x1

    goto/16 :goto_6c

    :cond_f4
    const/4 v15, 0x0

    move-object/from16 v11, p0

    move v12, v4

    move v13, v5

    move-object v14, v8

    move-object/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, v10

    move/from16 v19, p3

    invoke-virtual/range {v11 .. v19}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->passf5(II[FI[FIII)V

    goto :goto_f0

    :cond_106
    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, v27

    move v13, v4

    move/from16 v14, v30

    move v15, v5

    move-object/from16 v17, v8

    move-object/from16 v19, p1

    move/from16 v20, p2

    move/from16 v21, v10

    move/from16 v22, p3

    invoke-virtual/range {v11 .. v22}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->passfg([IIIII[FI[FIII)V

    goto/16 :goto_65

    :cond_11f
    if-nez v23, :cond_122

    :goto_121
    return-void

    :cond_122
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v25

    invoke-static {v8, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_121

    :cond_12d
    move/from16 v3, v23

    goto/16 :goto_6c

    nop

    :pswitch_data_132
    .packed-switch 0x2
        :pswitch_9c
        :pswitch_bf
        :pswitch_79
        :pswitch_e2
    .end packed-switch
.end method

.method strictfp cffti()V
    .registers 26

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    :cond_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v12, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v13, v2, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1b
    add-int/lit8 v6, v4, 0x1

    const/4 v4, 0x4

    if-gt v6, v4, :cond_33

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->factors:[I

    add-int/lit8 v5, v6, -0x1

    aget v4, v4, v5

    move v5, v4

    move v4, v3

    :goto_28
    div-int v3, v2, v5

    mul-int v7, v5, v3

    sub-int v7, v2, v7

    if-eqz v7, :cond_38

    move v3, v4

    move v4, v6

    goto :goto_1b

    :cond_33
    add-int/lit8 v4, v5, 0x2

    move v5, v4

    move v4, v3

    goto :goto_28

    :cond_38
    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v7, v2, 0x1

    add-int/2addr v7, v13

    int-to-float v8, v5

    aput v8, v4, v7

    const/4 v4, 0x2

    if-ne v5, v4, :cond_6d

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6d

    const/4 v4, 0x2

    :goto_4b
    if-gt v4, v2, :cond_63

    sub-int v7, v2, v4

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v13

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v9, v7, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    aget v7, v10, v7

    aput v7, v8, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_63
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v7, v13, 0x2

    const/high16 v8, 0x40000000    # 2.0f

    aput v8, v4, v7

    :cond_6d
    const/4 v4, 0x1

    if-ne v3, v4, :cond_141

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v4, v4

    aput v4, v3, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v4, v13, 0x1

    int-to-float v5, v2

    aput v5, v3, v4

    const v3, 0x40c90fdb

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v4, v4

    div-float v14, v3, v4

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v9, v3

    move v11, v4

    :goto_93
    if-gt v11, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v4, v11, 0x1

    add-int/2addr v4, v13

    aget v3, v3, v4

    float-to-int v15, v3

    const/4 v3, 0x0

    mul-int v10, v9, v15

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/2addr v4, v10

    add-int/2addr v4, v4

    add-int/lit8 v16, v4, 0x2

    add-int/lit8 v17, v15, -0x1

    const/4 v4, 0x1

    move v8, v4

    :goto_ae
    move/from16 v0, v17

    if-gt v8, v0, :cond_13b

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v5, v6, -0x1

    add-int/2addr v5, v12

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v5, v6, v12

    const/4 v7, 0x0

    aput v7, v4, v5

    add-int v7, v3, v9

    const/4 v4, 0x0

    int-to-float v3, v7

    mul-float v18, v3, v14

    const/4 v3, 0x4

    move v5, v6

    :goto_ce
    move/from16 v0, v16

    if-gt v3, v0, :cond_10d

    add-int/lit8 v5, v5, 0x2

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v4, v4, v19

    mul-float v19, v4, v18

    add-int v20, v5, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v21, v0

    add-int/lit8 v22, v20, -0x1

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v21, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v19, v0

    aput v19, v21, v20

    add-int/lit8 v3, v3, 0x2

    goto :goto_ce

    :cond_10d
    const/4 v3, 0x5

    if-le v15, v3, :cond_134

    add-int v3, v6, v12

    add-int v4, v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v18, v3, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v19, v0

    add-int/lit8 v20, v4, -0x1

    aget v19, v19, v20

    aput v19, v6, v18

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v18, v0

    aget v4, v18, v4

    aput v4, v6, v3

    :cond_134
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v6, v5

    move v3, v7

    goto/16 :goto_ae

    :cond_13b
    add-int/lit8 v3, v11, 0x1

    move v9, v10

    move v11, v3

    goto/16 :goto_93

    :cond_141
    move v4, v2

    move v2, v3

    goto/16 :goto_28
.end method

.method strictfp cffti(II)V
    .registers 28

    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    :cond_5
    return-void

    :cond_6
    mul-int/lit8 v12, p1, 0x2

    mul-int/lit8 v13, p1, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v2

    move/from16 v2, p1

    :goto_10
    add-int/lit8 v6, v4, 0x1

    const/4 v4, 0x4

    if-gt v6, v4, :cond_28

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->factors:[I

    add-int/lit8 v5, v6, -0x1

    aget v4, v4, v5

    move v5, v4

    move v4, v3

    :goto_1d
    div-int v3, v2, v5

    mul-int v7, v5, v3

    sub-int v7, v2, v7

    if-eqz v7, :cond_2d

    move v3, v4

    move v4, v6

    goto :goto_10

    :cond_28
    add-int/lit8 v4, v5, 0x2

    move v5, v4

    move v4, v3

    goto :goto_1d

    :cond_2d
    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v7, p2, v2

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v13

    int-to-float v8, v5

    aput v8, v4, v7

    const/4 v4, 0x2

    if-ne v5, v4, :cond_69

    const/4 v4, 0x1

    if-eq v2, v4, :cond_69

    const/4 v4, 0x2

    :goto_42
    if-gt v4, v2, :cond_5e

    sub-int v7, v2, v4

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v13

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v9, p2, v7

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v7, v7, p2

    aget v7, v10, v7

    aput v7, v8, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_5e
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v7, p2, 0x2

    add-int/2addr v7, v13

    const/high16 v8, 0x40000000    # 2.0f

    aput v8, v4, v7

    :cond_69
    const/4 v4, 0x1

    if-ne v3, v4, :cond_14a

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v4, p2, v13

    move/from16 v0, p1

    int-to-float v5, v0

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v4, p2, 0x1

    add-int/2addr v4, v13

    int-to-float v5, v2

    aput v5, v3, v4

    const v3, 0x40c90fdb

    move/from16 v0, p1

    int-to-float v4, v0

    div-float v14, v3, v4

    const/4 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v9, v3

    move v11, v4

    :goto_8e
    if-gt v11, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v4, p2, v11

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v13

    aget v3, v3, v4

    float-to-int v15, v3

    const/4 v3, 0x0

    mul-int v10, v9, v15

    div-int v4, p1, v10

    add-int/2addr v4, v4

    add-int/lit8 v16, v4, 0x2

    add-int/lit8 v17, v15, -0x1

    const/4 v4, 0x1

    move v8, v4

    :goto_a8
    move/from16 v0, v17

    if-gt v8, v0, :cond_144

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v5, p2, v6

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v5, v12

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v5, p2, v6

    add-int/2addr v5, v12

    const/4 v7, 0x0

    aput v7, v4, v5

    add-int v7, v3, v9

    const/4 v4, 0x0

    int-to-float v3, v7

    mul-float v18, v3, v14

    const/4 v3, 0x4

    move v5, v6

    :goto_cb
    move/from16 v0, v16

    if-gt v3, v0, :cond_10e

    add-int/lit8 v5, v5, 0x2

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v4, v4, v19

    mul-float v19, v4, v18

    add-int v20, v5, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v21, v0

    add-int v22, p2, v20

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v21, v0

    add-int v20, v20, p2

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v19, v0

    aput v19, v21, v20

    add-int/lit8 v3, v3, 0x2

    goto :goto_cb

    :cond_10e
    const/4 v3, 0x5

    if-le v15, v3, :cond_13d

    add-int v3, v6, v12

    add-int v4, v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v18, p2, v3

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v19, v0

    add-int v20, p2, v4

    add-int/lit8 v20, v20, -0x1

    aget v19, v19, v20

    aput v19, v6, v18

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int v3, v3, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v18, v0

    add-int v4, v4, p2

    aget v4, v18, v4

    aput v4, v6, v3

    :cond_13d
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v6, v5

    move v3, v7

    goto/16 :goto_a8

    :cond_144
    add-int/lit8 v3, v11, 0x1

    move v9, v10

    move v11, v3

    goto/16 :goto_8e

    :cond_14a
    move v4, v2

    move v2, v3

    goto/16 :goto_1d
.end method

.method public strictfp complexForward([F)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    return-void
.end method

.method public strictfp complexForward([FI)V
    .registers 10

    const/4 v2, -0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    :goto_6
    return-void

    :cond_7
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    goto :goto_6

    :pswitch_15
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftbsub(I[FI[II[F)V

    goto :goto_6

    :pswitch_26
    invoke-virtual {p0, p1, p2, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cfftf([FII)V

    goto :goto_6

    :pswitch_2a
    invoke-direct {p0, p1, p2, v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bluestein_complex([FII)V

    goto :goto_6

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_26
        :pswitch_2a
    .end packed-switch
.end method

.method public strictfp complexInverse([FIZ)V
    .registers 12

    const/4 v7, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ne v0, v7, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    :goto_13
    if-eqz p3, :cond_5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1, p2, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->scale(F[FIZ)V

    goto :goto_5

    :pswitch_1c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftfsub(I[FI[II[F)V

    goto :goto_13

    :pswitch_2d
    invoke-virtual {p0, p1, p2, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cfftf([FII)V

    goto :goto_13

    :pswitch_31
    invoke-direct {p0, p1, p2, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bluestein_complex([FII)V

    goto :goto_13

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_2d
        :pswitch_31
    .end packed-switch
.end method

.method public strictfp complexInverse([FZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    return-void
.end method

.method strictfp passf2(II[FI[FIII)V
    .registers 23

    mul-int v3, p1, p2

    const/4 v1, 0x2

    if-gt p1, v1, :cond_38

    const/4 v1, 0x0

    :goto_6
    move/from16 v0, p2

    if-ge v1, v0, :cond_90

    mul-int v2, v1, p1

    mul-int/lit8 v4, v2, 0x2

    add-int v4, v4, p4

    add-int v5, v4, p1

    aget v6, p3, v4

    add-int/lit8 v4, v4, 0x1

    aget v4, p3, v4

    aget v7, p3, v5

    add-int/lit8 v5, v5, 0x1

    aget v5, p3, v5

    add-int v2, v2, p6

    add-int v8, v2, v3

    add-float v9, v6, v7

    aput v9, p5, v2

    add-int/lit8 v2, v2, 0x1

    add-float v9, v4, v5

    aput v9, p5, v2

    sub-float v2, v6, v7

    aput v2, p5, v8

    add-int/lit8 v2, v8, 0x1

    sub-float/2addr v4, v5

    aput v4, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_38
    const/4 v1, 0x0

    move v2, v1

    :goto_3a
    move/from16 v0, p2

    if-ge v2, v0, :cond_90

    const/4 v1, 0x0

    :goto_3f
    add-int/lit8 v4, p1, -0x1

    if-ge v1, v4, :cond_8c

    mul-int v4, v2, p1

    add-int v5, p4, v1

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    add-int v6, v5, p1

    aget v7, p3, v5

    add-int/lit8 v5, v5, 0x1

    aget v5, p3, v5

    aget v8, p3, v6

    add-int/lit8 v6, v6, 0x1

    aget v6, p3, v6

    add-int v9, v1, p7

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    aget v10, v10, v9

    move/from16 v0, p8

    int-to-float v11, v0

    iget-object v12, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v9, v9, 0x1

    aget v9, v12, v9

    mul-float/2addr v9, v11

    sub-float v11, v7, v8

    sub-float v12, v5, v6

    add-int v13, p6, v1

    add-int/2addr v4, v13

    add-int v13, v4, v3

    add-float/2addr v7, v8

    aput v7, p5, v4

    add-int/lit8 v4, v4, 0x1

    add-float/2addr v5, v6

    aput v5, p5, v4

    mul-float v4, v10, v11

    mul-float v5, v9, v12

    sub-float/2addr v4, v5

    aput v4, p5, v13

    add-int/lit8 v4, v13, 0x1

    mul-float v5, v10, v12

    mul-float v6, v9, v11

    add-float/2addr v5, v6

    aput v5, p5, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_3f

    :cond_8c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3a

    :cond_90
    return-void
.end method

.method strictfp passf3(II[FI[FIII)V
    .registers 31

    add-int v3, p7, p1

    mul-int v4, p2, p1

    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_75

    const/4 v1, 0x1

    :goto_a
    move/from16 v0, p2

    if-gt v1, v0, :cond_13e

    mul-int/lit8 v2, v1, 0x3

    add-int/lit8 v2, v2, -0x2

    mul-int v2, v2, p1

    add-int v2, v2, p4

    add-int v3, v2, p1

    sub-int v5, v2, p1

    aget v6, p3, v2

    add-int/lit8 v2, v2, 0x1

    aget v2, p3, v2

    aget v7, p3, v3

    add-int/lit8 v3, v3, 0x1

    aget v3, p3, v3

    aget v8, p3, v5

    add-int/lit8 v9, v5, 0x1

    aget v9, p3, v9

    add-float v10, v6, v7

    const/high16 v11, -0x41000000    # -0.5f

    mul-float/2addr v11, v10

    add-float/2addr v8, v11

    add-float v11, v2, v3

    const/high16 v12, -0x41000000    # -0.5f

    mul-float/2addr v12, v11

    add-float/2addr v12, v9

    move/from16 v0, p8

    int-to-float v13, v0

    const v14, 0x3f5db3d7

    mul-float/2addr v13, v14

    sub-float/2addr v6, v7

    mul-float/2addr v6, v13

    move/from16 v0, p8

    int-to-float v7, v0

    const v13, 0x3f5db3d7

    mul-float/2addr v7, v13

    sub-float/2addr v2, v3

    mul-float/2addr v2, v7

    add-int/lit8 v3, v1, -0x1

    mul-int v3, v3, p1

    add-int v3, v3, p6

    add-int v7, v3, v4

    add-int v13, v7, v4

    aget v5, p3, v5

    add-float/2addr v5, v10

    aput v5, p5, v3

    add-int/lit8 v3, v3, 0x1

    add-float v5, v9, v11

    aput v5, p5, v3

    sub-float v3, v8, v2

    aput v3, p5, v7

    add-int/lit8 v3, v7, 0x1

    add-float v5, v12, v6

    aput v5, p5, v3

    add-float/2addr v2, v8

    aput v2, p5, v13

    add-int/lit8 v2, v13, 0x1

    sub-float v3, v12, v6

    aput v3, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_75
    const/4 v1, 0x1

    move v2, v1

    :goto_77
    move/from16 v0, p2

    if-gt v2, v0, :cond_13e

    mul-int/lit8 v1, v2, 0x3

    add-int/lit8 v1, v1, -0x2

    mul-int v1, v1, p1

    add-int v5, p4, v1

    add-int/lit8 v1, v2, -0x1

    mul-int v1, v1, p1

    add-int v6, p6, v1

    const/4 v1, 0x0

    :goto_8a
    add-int/lit8 v7, p1, -0x1

    if-ge v1, v7, :cond_139

    add-int v7, v1, v5

    add-int v8, v7, p1

    sub-int v9, v7, p1

    aget v10, p3, v7

    add-int/lit8 v7, v7, 0x1

    aget v7, p3, v7

    aget v11, p3, v8

    add-int/lit8 v8, v8, 0x1

    aget v8, p3, v8

    aget v12, p3, v9

    add-int/lit8 v9, v9, 0x1

    aget v9, p3, v9

    add-float v13, v10, v11

    const/high16 v14, -0x41000000    # -0.5f

    mul-float/2addr v14, v13

    add-float/2addr v14, v12

    add-float v15, v7, v8

    const/high16 v16, -0x41000000    # -0.5f

    mul-float v16, v16, v15

    add-float v16, v16, v9

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3f5db3d7

    mul-float v17, v17, v18

    sub-float/2addr v10, v11

    mul-float v10, v10, v17

    move/from16 v0, p8

    int-to-float v11, v0

    const v17, 0x3f5db3d7

    mul-float v11, v11, v17

    sub-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float v8, v14, v7

    add-float/2addr v7, v14

    add-float v11, v16, v10

    sub-float v10, v16, v10

    add-int v14, v1, p7

    add-int v16, v1, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v17, v0

    aget v17, v17, v14

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v19, v0

    add-int/lit8 v14, v14, 0x1

    aget v14, v19, v14

    mul-float v14, v14, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v18, v0

    aget v18, v18, v16

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v20, v0

    add-int/lit8 v16, v16, 0x1

    aget v16, v20, v16

    mul-float v16, v16, v19

    add-int v19, v1, v6

    add-int v20, v19, v4

    add-int v21, v20, v4

    add-float/2addr v12, v13

    aput v12, p5, v19

    add-int/lit8 v12, v19, 0x1

    add-float/2addr v9, v15

    aput v9, p5, v12

    mul-float v9, v17, v8

    mul-float v12, v14, v11

    sub-float/2addr v9, v12

    aput v9, p5, v20

    add-int/lit8 v9, v20, 0x1

    mul-float v11, v11, v17

    mul-float/2addr v8, v14

    add-float/2addr v8, v11

    aput v8, p5, v9

    mul-float v8, v18, v7

    mul-float v9, v16, v10

    sub-float/2addr v8, v9

    aput v8, p5, v21

    add-int/lit8 v8, v21, 0x1

    mul-float v9, v18, v10

    mul-float v7, v7, v16

    add-float/2addr v7, v9

    aput v7, p5, v8

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_8a

    :cond_139
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_77

    :cond_13e
    return-void
.end method

.method strictfp passf4(II[FI[FIII)V
    .registers 37

    add-int v3, p7, p1

    add-int v4, v3, p1

    mul-int v5, p2, p1

    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_82

    const/4 v1, 0x0

    :goto_c
    move/from16 v0, p2

    if-ge v1, v0, :cond_182

    mul-int v2, v1, p1

    mul-int/lit8 v3, v2, 0x4

    add-int v3, v3, p4

    add-int/lit8 v3, v3, 0x1

    add-int v4, v3, p1

    add-int v6, v4, p1

    add-int v7, v6, p1

    add-int/lit8 v8, v3, -0x1

    aget v8, p3, v8

    aget v3, p3, v3

    add-int/lit8 v9, v4, -0x1

    aget v9, p3, v9

    aget v4, p3, v4

    add-int/lit8 v10, v6, -0x1

    aget v10, p3, v10

    aget v6, p3, v6

    add-int/lit8 v11, v7, -0x1

    aget v11, p3, v11

    aget v7, p3, v7

    sub-float v12, v3, v6

    add-float/2addr v3, v6

    sub-float v6, v7, v4

    add-float/2addr v4, v7

    sub-float v7, v8, v10

    add-float/2addr v8, v10

    sub-float v10, v9, v11

    add-float/2addr v9, v11

    add-int v2, v2, p6

    add-int v11, v2, v5

    add-int v13, v11, v5

    add-int v14, v13, v5

    add-float v15, v8, v9

    aput v15, p5, v2

    add-int/lit8 v2, v2, 0x1

    add-float v15, v3, v4

    aput v15, p5, v2

    move/from16 v0, p8

    int-to-float v2, v0

    mul-float/2addr v2, v6

    add-float/2addr v2, v7

    aput v2, p5, v11

    add-int/lit8 v2, v11, 0x1

    move/from16 v0, p8

    int-to-float v11, v0

    mul-float/2addr v11, v10

    add-float/2addr v11, v12

    aput v11, p5, v2

    sub-float v2, v8, v9

    aput v2, p5, v13

    add-int/lit8 v2, v13, 0x1

    sub-float/2addr v3, v4

    aput v3, p5, v2

    move/from16 v0, p8

    int-to-float v2, v0

    mul-float/2addr v2, v6

    sub-float v2, v7, v2

    aput v2, p5, v14

    add-int/lit8 v2, v14, 0x1

    move/from16 v0, p8

    int-to-float v3, v0

    mul-float/2addr v3, v10

    sub-float v3, v12, v3

    aput v3, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_82
    const/4 v1, 0x0

    move v2, v1

    :goto_84
    move/from16 v0, p2

    if-ge v2, v0, :cond_182

    mul-int v6, v2, p1

    add-int/lit8 v1, p4, 0x1

    mul-int/lit8 v7, v6, 0x4

    add-int/2addr v7, v1

    const/4 v1, 0x0

    :goto_90
    add-int/lit8 v8, p1, -0x1

    if-ge v1, v8, :cond_17d

    add-int v8, v1, v7

    add-int v9, v8, p1

    add-int v10, v9, p1

    add-int v11, v10, p1

    add-int/lit8 v12, v8, -0x1

    aget v12, p3, v12

    aget v8, p3, v8

    add-int/lit8 v13, v9, -0x1

    aget v13, p3, v13

    aget v9, p3, v9

    add-int/lit8 v14, v10, -0x1

    aget v14, p3, v14

    aget v10, p3, v10

    add-int/lit8 v15, v11, -0x1

    aget v15, p3, v15

    aget v11, p3, v11

    sub-float v16, v8, v10

    add-float/2addr v8, v10

    add-float v10, v9, v11

    sub-float v9, v11, v9

    sub-float v11, v12, v14

    add-float/2addr v12, v14

    sub-float v14, v13, v15

    add-float/2addr v13, v15

    sub-float v15, v12, v13

    sub-float v17, v8, v10

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    add-float v18, v18, v11

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v9, v9, v19

    sub-float v9, v11, v9

    move/from16 v0, p8

    int-to-float v11, v0

    mul-float/2addr v11, v14

    add-float v11, v11, v16

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v14, v14, v19

    sub-float v14, v16, v14

    add-int v16, v1, p7

    add-int v19, v1, v3

    add-int v20, v1, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v21, v0

    aget v21, v21, v16

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v23, v0

    add-int/lit8 v16, v16, 0x1

    aget v16, v23, v16

    mul-float v16, v16, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v22, v0

    aget v22, v22, v19

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v24, v0

    add-int/lit8 v19, v19, 0x1

    aget v19, v24, v19

    mul-float v19, v19, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v23, v0

    aget v23, v23, v20

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v25, v0

    add-int/lit8 v20, v20, 0x1

    aget v20, v25, v20

    mul-float v20, v20, v24

    add-int v24, p6, v1

    add-int v24, v24, v6

    add-int v25, v24, v5

    add-int v26, v25, v5

    add-int v27, v26, v5

    add-float/2addr v12, v13

    aput v12, p5, v24

    add-int/lit8 v12, v24, 0x1

    add-float/2addr v8, v10

    aput v8, p5, v12

    mul-float v8, v21, v18

    mul-float v10, v16, v11

    sub-float/2addr v8, v10

    aput v8, p5, v25

    add-int/lit8 v8, v25, 0x1

    mul-float v10, v21, v11

    mul-float v11, v16, v18

    add-float/2addr v10, v11

    aput v10, p5, v8

    mul-float v8, v22, v15

    mul-float v10, v19, v17

    sub-float/2addr v8, v10

    aput v8, p5, v26

    add-int/lit8 v8, v26, 0x1

    mul-float v10, v22, v17

    mul-float v11, v19, v15

    add-float/2addr v10, v11

    aput v10, p5, v8

    mul-float v8, v23, v9

    mul-float v10, v20, v14

    sub-float/2addr v8, v10

    aput v8, p5, v27

    add-int/lit8 v8, v27, 0x1

    mul-float v10, v23, v14

    mul-float v9, v9, v20

    add-float/2addr v9, v10

    aput v9, p5, v8

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_90

    :cond_17d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_84

    :cond_182
    return-void
.end method

.method strictfp passf5(II[FI[FIII)V
    .registers 45

    add-int v3, p7, p1

    add-int v4, v3, p1

    add-int v5, v4, p1

    mul-int v6, p2, p1

    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_108

    const/4 v1, 0x1

    :goto_e
    move/from16 v0, p2

    if-gt v1, v0, :cond_2b6

    mul-int/lit8 v2, v1, 0x5

    add-int/lit8 v2, v2, -0x4

    mul-int v2, v2, p1

    add-int v2, v2, p4

    add-int/lit8 v2, v2, 0x1

    add-int v3, v2, p1

    sub-int v4, v2, p1

    add-int v5, v3, p1

    add-int v7, v5, p1

    add-int/lit8 v8, v2, -0x1

    aget v8, p3, v8

    aget v2, p3, v2

    add-int/lit8 v9, v3, -0x1

    aget v9, p3, v9

    aget v3, p3, v3

    add-int/lit8 v10, v4, -0x1

    aget v10, p3, v10

    aget v4, p3, v4

    add-int/lit8 v11, v5, -0x1

    aget v11, p3, v11

    aget v5, p3, v5

    add-int/lit8 v12, v7, -0x1

    aget v12, p3, v12

    aget v7, p3, v7

    sub-float v13, v2, v7

    add-float/2addr v2, v7

    sub-float v7, v3, v5

    add-float/2addr v3, v5

    sub-float v5, v8, v12

    add-float/2addr v8, v12

    sub-float v12, v9, v11

    add-float/2addr v9, v11

    const v11, 0x3e9e377a

    mul-float/2addr v11, v8

    add-float/2addr v11, v10

    const v14, -0x40b0e443

    mul-float/2addr v14, v9

    add-float/2addr v11, v14

    const v14, 0x3e9e377a

    mul-float/2addr v14, v2

    add-float/2addr v14, v4

    const v15, -0x40b0e443

    mul-float/2addr v15, v3

    add-float/2addr v14, v15

    const v15, -0x40b0e443

    mul-float/2addr v15, v8

    add-float/2addr v15, v10

    const v16, 0x3e9e377a

    mul-float v16, v16, v9

    add-float v15, v15, v16

    const v16, -0x40b0e443

    mul-float v16, v16, v2

    add-float v16, v16, v4

    const v17, 0x3e9e377a

    mul-float v17, v17, v3

    add-float v16, v16, v17

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3f737871

    mul-float v18, v18, v5

    const v19, 0x3f167918

    mul-float v19, v19, v12

    add-float v18, v18, v19

    mul-float v17, v17, v18

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3f737871

    mul-float v19, v19, v13

    const v20, 0x3f167918

    mul-float v20, v20, v7

    add-float v19, v19, v20

    mul-float v18, v18, v19

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f167918

    mul-float v5, v5, v20

    const v20, 0x3f737871

    mul-float v12, v12, v20

    sub-float/2addr v5, v12

    mul-float v5, v5, v19

    move/from16 v0, p8

    int-to-float v12, v0

    const v19, 0x3f167918

    mul-float v13, v13, v19

    const v19, 0x3f737871

    mul-float v7, v7, v19

    sub-float v7, v13, v7

    mul-float/2addr v7, v12

    add-int/lit8 v12, v1, -0x1

    mul-int v12, v12, p1

    add-int v12, v12, p6

    add-int v13, v12, v6

    add-int v19, v13, v6

    add-int v20, v19, v6

    add-int v21, v20, v6

    add-float/2addr v8, v10

    add-float/2addr v8, v9

    aput v8, p5, v12

    add-int/lit8 v8, v12, 0x1

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    aput v2, p5, v8

    sub-float v2, v11, v18

    aput v2, p5, v13

    add-int/lit8 v2, v13, 0x1

    add-float v3, v14, v17

    aput v3, p5, v2

    sub-float v2, v15, v7

    aput v2, p5, v19

    add-int/lit8 v2, v19, 0x1

    add-float v3, v16, v5

    aput v3, p5, v2

    add-float v2, v15, v7

    aput v2, p5, v20

    add-int/lit8 v2, v20, 0x1

    sub-float v3, v16, v5

    aput v3, p5, v2

    add-float v2, v11, v18

    aput v2, p5, v21

    add-int/lit8 v2, v21, 0x1

    sub-float v3, v14, v17

    aput v3, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    :cond_108
    const/4 v1, 0x1

    move v2, v1

    :goto_10a
    move/from16 v0, p2

    if-gt v2, v0, :cond_2b6

    add-int/lit8 v1, p4, 0x1

    mul-int/lit8 v7, v2, 0x5

    add-int/lit8 v7, v7, -0x4

    mul-int v7, v7, p1

    add-int/2addr v7, v1

    add-int/lit8 v1, v2, -0x1

    mul-int v1, v1, p1

    add-int v8, p6, v1

    const/4 v1, 0x0

    :goto_11e
    add-int/lit8 v9, p1, -0x1

    if-ge v1, v9, :cond_2b1

    add-int v9, v1, v7

    add-int v10, v9, p1

    sub-int v11, v9, p1

    add-int v12, v10, p1

    add-int v13, v12, p1

    add-int/lit8 v14, v9, -0x1

    aget v14, p3, v14

    aget v9, p3, v9

    add-int/lit8 v15, v10, -0x1

    aget v15, p3, v15

    aget v10, p3, v10

    add-int/lit8 v16, v11, -0x1

    aget v16, p3, v16

    aget v11, p3, v11

    add-int/lit8 v17, v12, -0x1

    aget v17, p3, v17

    aget v12, p3, v12

    add-int/lit8 v18, v13, -0x1

    aget v18, p3, v18

    aget v13, p3, v13

    sub-float v19, v9, v13

    add-float/2addr v9, v13

    sub-float v13, v10, v12

    add-float/2addr v10, v12

    sub-float v12, v14, v18

    add-float v14, v14, v18

    sub-float v18, v15, v17

    add-float v15, v15, v17

    const v17, 0x3e9e377a

    mul-float v17, v17, v14

    add-float v17, v17, v16

    const v20, -0x40b0e443

    mul-float v20, v20, v15

    add-float v17, v17, v20

    const v20, 0x3e9e377a

    mul-float v20, v20, v9

    add-float v20, v20, v11

    const v21, -0x40b0e443

    mul-float v21, v21, v10

    add-float v20, v20, v21

    const v21, -0x40b0e443

    mul-float v21, v21, v14

    add-float v21, v21, v16

    const v22, 0x3e9e377a

    mul-float v22, v22, v15

    add-float v21, v21, v22

    const v22, -0x40b0e443

    mul-float v22, v22, v9

    add-float v22, v22, v11

    const v23, 0x3e9e377a

    mul-float v23, v23, v10

    add-float v22, v22, v23

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v23, v0

    const v24, 0x3f737871

    mul-float v24, v24, v12

    const v25, 0x3f167918

    mul-float v25, v25, v18

    add-float v24, v24, v25

    mul-float v23, v23, v24

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3f737871

    mul-float v25, v25, v19

    const v26, 0x3f167918

    mul-float v26, v26, v13

    add-float v25, v25, v26

    mul-float v24, v24, v25

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v25, v0

    const v26, 0x3f167918

    mul-float v12, v12, v26

    const v26, 0x3f737871

    mul-float v18, v18, v26

    sub-float v12, v12, v18

    mul-float v12, v12, v25

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v18, v0

    const v25, 0x3f167918

    mul-float v19, v19, v25

    const v25, 0x3f737871

    mul-float v13, v13, v25

    sub-float v13, v19, v13

    mul-float v13, v13, v18

    sub-float v18, v21, v13

    add-float v13, v13, v21

    add-float v19, v22, v12

    sub-float v12, v22, v12

    add-float v21, v17, v24

    sub-float v17, v17, v24

    sub-float v22, v20, v23

    add-float v20, v20, v23

    add-int v23, v1, p7

    add-int v24, v1, v3

    add-int v25, v1, v4

    add-int v26, v1, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v27, v0

    aget v27, v27, v23

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v29, v0

    add-int/lit8 v23, v23, 0x1

    aget v23, v29, v23

    mul-float v23, v23, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v28, v0

    aget v28, v28, v24

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v30, v0

    add-int/lit8 v24, v24, 0x1

    aget v24, v30, v24

    mul-float v24, v24, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v29, v0

    aget v29, v29, v25

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v31, v0

    add-int/lit8 v25, v25, 0x1

    aget v25, v31, v25

    mul-float v25, v25, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v30, v0

    aget v30, v30, v26

    move/from16 v0, p8

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v32, v0

    add-int/lit8 v26, v26, 0x1

    aget v26, v32, v26

    mul-float v26, v26, v31

    add-int v31, v1, v8

    add-int v32, v31, v6

    add-int v33, v32, v6

    add-int v34, v33, v6

    add-int v35, v34, v6

    add-float v14, v14, v16

    add-float/2addr v14, v15

    aput v14, p5, v31

    add-int/lit8 v14, v31, 0x1

    add-float/2addr v9, v11

    add-float/2addr v9, v10

    aput v9, p5, v14

    mul-float v9, v27, v17

    mul-float v10, v23, v20

    sub-float/2addr v9, v10

    aput v9, p5, v32

    add-int/lit8 v9, v32, 0x1

    mul-float v10, v27, v20

    mul-float v11, v23, v17

    add-float/2addr v10, v11

    aput v10, p5, v9

    mul-float v9, v28, v18

    mul-float v10, v24, v19

    sub-float/2addr v9, v10

    aput v9, p5, v33

    add-int/lit8 v9, v33, 0x1

    mul-float v10, v28, v19

    mul-float v11, v24, v18

    add-float/2addr v10, v11

    aput v10, p5, v9

    mul-float v9, v29, v13

    mul-float v10, v25, v12

    sub-float/2addr v9, v10

    aput v9, p5, v34

    add-int/lit8 v9, v34, 0x1

    mul-float v10, v29, v12

    mul-float v11, v25, v13

    add-float/2addr v10, v11

    aput v10, p5, v9

    mul-float v9, v30, v21

    mul-float v10, v26, v22

    sub-float/2addr v9, v10

    aput v9, p5, v35

    add-int/lit8 v9, v35, 0x1

    mul-float v10, v30, v22

    mul-float v11, v26, v21

    add-float/2addr v10, v11

    aput v10, p5, v9

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_11e

    :cond_2b1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_10a

    :cond_2b6
    return-void
.end method

.method strictfp passfg([IIIII[FI[FIII)V
    .registers 39

    div-int/lit8 v11, p2, 0x2

    add-int/lit8 v5, p3, 0x1

    div-int/lit8 v12, v5, 0x2

    mul-int v13, p3, p2

    move/from16 v0, p2

    move/from16 v1, p4

    if-lt v0, v1, :cond_76

    const/4 v5, 0x1

    move v7, v5

    :goto_10
    if-ge v7, v12, :cond_56

    sub-int v5, p3, v7

    mul-int v8, v7, p2

    mul-int v9, v5, p2

    const/4 v5, 0x0

    move v6, v5

    :goto_1a
    move/from16 v0, p4

    if-ge v6, v0, :cond_52

    mul-int v5, v6, p2

    mul-int v10, v8, p4

    add-int/2addr v10, v5

    mul-int v14, v9, p4

    add-int/2addr v14, v5

    mul-int v15, v5, p3

    const/4 v5, 0x0

    :goto_29
    move/from16 v0, p2

    if-ge v5, v0, :cond_4e

    add-int v16, p9, v5

    add-int v17, p7, v5

    add-int v17, v17, v8

    add-int v17, v17, v15

    aget v17, p6, v17

    add-int v18, p7, v5

    add-int v18, v18, v9

    add-int v18, v18, v15

    aget v18, p6, v18

    add-int v19, v16, v10

    add-float v20, v17, v18

    aput v20, p8, v19

    add-int v16, v16, v14

    sub-float v17, v17, v18

    aput v17, p8, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_4e
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1a

    :cond_52
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_10

    :cond_56
    const/4 v5, 0x0

    move v6, v5

    :goto_58
    move/from16 v0, p4

    if-ge v6, v0, :cond_e1

    mul-int v7, v6, p2

    mul-int v8, v7, p3

    const/4 v5, 0x0

    :goto_61
    move/from16 v0, p2

    if-ge v5, v0, :cond_72

    add-int v9, p9, v5

    add-int/2addr v9, v7

    add-int v10, p7, v5

    add-int/2addr v10, v8

    aget v10, p6, v10

    aput v10, p8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    :cond_72
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_58

    :cond_76
    const/4 v5, 0x1

    move v7, v5

    :goto_78
    if-ge v7, v12, :cond_c1

    sub-int v5, p3, v7

    mul-int v6, v7, p4

    mul-int v8, v6, p2

    mul-int v6, v5, p4

    mul-int v9, v6, p2

    mul-int v10, v7, p2

    mul-int v14, v5, p2

    const/4 v5, 0x0

    move v6, v5

    :goto_8a
    move/from16 v0, p2

    if-ge v6, v0, :cond_bd

    const/4 v5, 0x0

    :goto_8f
    move/from16 v0, p4

    if-ge v5, v0, :cond_b9

    mul-int v15, v5, p2

    mul-int v16, v15, p3

    add-int v17, p9, v6

    add-int v18, p7, v6

    add-int v19, v18, v10

    add-int v19, v19, v16

    aget v19, p6, v19

    add-int v18, v18, v14

    add-int v16, v16, v18

    aget v16, p6, v16

    add-int v18, v17, v15

    add-int v18, v18, v8

    add-float v20, v19, v16

    aput v20, p8, v18

    add-int v15, v15, v17

    add-int/2addr v15, v9

    sub-float v16, v19, v16

    aput v16, p8, v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    :cond_b9
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_8a

    :cond_bd
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_78

    :cond_c1
    const/4 v5, 0x0

    move v6, v5

    :goto_c3
    move/from16 v0, p2

    if-ge v6, v0, :cond_e1

    const/4 v5, 0x0

    :goto_c8
    move/from16 v0, p4

    if-ge v5, v0, :cond_dd

    mul-int v7, v5, p2

    add-int v8, p9, v6

    add-int/2addr v8, v7

    add-int v9, p7, v6

    mul-int v7, v7, p3

    add-int/2addr v7, v9

    aget v7, p6, v7

    aput v7, p8, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_c8

    :cond_dd
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_c3

    :cond_e1
    rsub-int/lit8 v8, p2, 0x2

    const/4 v5, 0x0

    add-int/lit8 v6, p3, -0x1

    mul-int v14, v6, p5

    const/4 v6, 0x1

    move v10, v6

    move v6, v5

    :goto_eb
    if-ge v10, v12, :cond_191

    sub-int v5, p3, v10

    add-int v8, v8, p2

    mul-int v15, v10, p5

    mul-int v16, v5, p5

    add-int v5, v8, p10

    move-object/from16 v0, p0

    iget-object v7, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v9, v5, -0x2

    aget v7, v7, v9

    move/from16 v0, p11

    int-to-float v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v17, v0

    add-int/lit8 v5, v5, -0x1

    aget v5, v17, v5

    mul-float/2addr v9, v5

    const/4 v5, 0x0

    :goto_10e
    move/from16 v0, p5

    if-ge v5, v0, :cond_131

    add-int v17, p7, v5

    add-int v18, p9, v5

    add-int v19, v17, v15

    aget v20, p8, v18

    add-int v21, v18, p5

    aget v21, p8, v21

    mul-float v21, v21, v7

    add-float v20, v20, v21

    aput v20, p6, v19

    add-int v17, v17, v16

    add-int v18, v18, v14

    aget v18, p8, v18

    mul-float v18, v18, v9

    aput v18, p6, v17

    add-int/lit8 v5, v5, 0x1

    goto :goto_10e

    :cond_131
    add-int v9, v6, p2

    const/4 v5, 0x2

    move v7, v5

    move v5, v8

    :goto_136
    if-ge v7, v12, :cond_18b

    sub-int v6, p3, v7

    add-int/2addr v5, v9

    if-le v5, v13, :cond_13e

    sub-int/2addr v5, v13

    :cond_13e
    add-int v17, v5, p10

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v18, v0

    add-int/lit8 v19, v17, -0x2

    aget v18, v18, v19

    move/from16 v0, p11

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    move-object/from16 v20, v0

    add-int/lit8 v17, v17, -0x1

    aget v17, v20, v17

    mul-float v17, v17, v19

    mul-int v19, v7, p5

    mul-int v20, v6, p5

    const/4 v6, 0x0

    :goto_160
    move/from16 v0, p5

    if-ge v6, v0, :cond_187

    add-int v21, p7, v6

    add-int v22, p9, v6

    add-int v23, v21, v15

    aget v24, p6, v23

    add-int v25, v22, v19

    aget v25, p8, v25

    mul-float v25, v25, v18

    add-float v24, v24, v25

    aput v24, p6, v23

    add-int v21, v21, v16

    aget v23, p6, v21

    add-int v22, v22, v20

    aget v22, p8, v22

    mul-float v22, v22, v17

    add-float v22, v22, v23

    aput v22, p6, v21

    add-int/lit8 v6, v6, 0x1

    goto :goto_160

    :cond_187
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_136

    :cond_18b
    add-int/lit8 v5, v10, 0x1

    move v6, v9

    move v10, v5

    goto/16 :goto_eb

    :cond_191
    const/4 v5, 0x1

    move v6, v5

    :goto_193
    if-ge v6, v12, :cond_1ae

    mul-int v7, v6, p5

    const/4 v5, 0x0

    :goto_198
    move/from16 v0, p5

    if-ge v5, v0, :cond_1aa

    add-int v8, p9, v5

    aget v9, p8, v8

    add-int v10, v8, v7

    aget v10, p8, v10

    add-float/2addr v9, v10

    aput v9, p8, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_198

    :cond_1aa
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_193

    :cond_1ae
    const/4 v5, 0x1

    move v6, v5

    :goto_1b0
    if-ge v6, v12, :cond_1ed

    sub-int v5, p3, v6

    mul-int v7, v6, p5

    mul-int v8, v5, p5

    const/4 v5, 0x1

    :goto_1b9
    move/from16 v0, p5

    if-ge v5, v0, :cond_1e9

    add-int v9, p9, v5

    add-int v10, p7, v5

    add-int v13, v10, v7

    add-int/2addr v10, v8

    add-int/lit8 v14, v13, -0x1

    aget v14, p6, v14

    aget v13, p6, v13

    add-int/lit8 v15, v10, -0x1

    aget v15, p6, v15

    aget v10, p6, v10

    add-int v16, v9, v7

    add-int/2addr v9, v8

    add-int/lit8 v17, v16, -0x1

    sub-float v18, v14, v10

    aput v18, p8, v17

    add-int/lit8 v17, v9, -0x1

    add-float/2addr v10, v14

    aput v10, p8, v17

    add-float v10, v13, v15

    aput v10, p8, v16

    sub-float v10, v13, v15

    aput v10, p8, v9

    add-int/lit8 v5, v5, 0x2

    goto :goto_1b9

    :cond_1e9
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1b0

    :cond_1ed
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, p1, v5

    const/4 v5, 0x2

    move/from16 v0, p2

    if-ne v0, v5, :cond_1f7

    :cond_1f6
    return-void

    :cond_1f7
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, p1, v5

    move-object/from16 v0, p8

    move/from16 v1, p9

    move-object/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v7, p4, p2

    const/4 v5, 0x1

    move v6, v5

    :goto_20c
    move/from16 v0, p3

    if-ge v6, v0, :cond_232

    mul-int v8, v6, v7

    const/4 v5, 0x0

    :goto_213
    move/from16 v0, p4

    if-ge v5, v0, :cond_22e

    mul-int v9, v5, p2

    add-int v10, p9, v9

    add-int/2addr v10, v8

    add-int v9, v9, p7

    add-int/2addr v9, v8

    aget v12, p8, v10

    aput v12, p6, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    aget v10, p8, v10

    aput v10, p6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_213

    :cond_22e
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_20c

    :cond_232
    move/from16 v0, p4

    if-gt v11, v0, :cond_298

    const/4 v6, 0x0

    const/4 v5, 0x1

    move v8, v5

    move v5, v6

    :goto_23a
    move/from16 v0, p3

    if-ge v8, v0, :cond_1f6

    add-int/lit8 v6, v5, 0x2

    mul-int v5, v8, p4

    mul-int v9, v5, p2

    const/4 v5, 0x3

    move/from16 v26, v5

    move v5, v6

    move/from16 v6, v26

    :goto_24a
    move/from16 v0, p2

    if-ge v6, v0, :cond_294

    add-int/lit8 v7, v5, 0x2

    add-int v5, v7, p10

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v11, v5, -0x1

    aget v10, v10, v11

    move/from16 v0, p11

    int-to-float v11, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    aget v5, v12, v5

    mul-float/2addr v11, v5

    add-int v12, p7, v6

    add-int v13, p9, v6

    const/4 v5, 0x0

    :goto_26b
    move/from16 v0, p4

    if-ge v5, v0, :cond_28f

    mul-int v14, v5, p2

    add-int/2addr v14, v9

    add-int v15, v12, v14

    add-int/2addr v14, v13

    add-int/lit8 v16, v14, -0x1

    aget v16, p8, v16

    aget v14, p8, v14

    add-int/lit8 v17, v15, -0x1

    mul-float v18, v10, v16

    mul-float v19, v11, v14

    sub-float v18, v18, v19

    aput v18, p6, v17

    mul-float/2addr v14, v10

    mul-float v16, v16, v11

    add-float v14, v14, v16

    aput v14, p6, v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_26b

    :cond_28f
    add-int/lit8 v5, v6, 0x2

    move v6, v5

    move v5, v7

    goto :goto_24a

    :cond_294
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_23a

    :cond_298
    rsub-int/lit8 v7, p2, 0x2

    const/4 v5, 0x1

    move v9, v5

    :goto_29c
    move/from16 v0, p3

    if-ge v9, v0, :cond_1f6

    add-int v7, v7, p2

    mul-int v5, v9, p4

    mul-int v10, v5, p2

    const/4 v5, 0x0

    move v8, v5

    :goto_2a8
    move/from16 v0, p4

    if-ge v8, v0, :cond_2f1

    mul-int v5, v8, p2

    add-int v11, v5, v10

    const/4 v5, 0x3

    move v6, v7

    :goto_2b2
    move/from16 v0, p2

    if-ge v5, v0, :cond_2ed

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v12, v6, -0x1

    add-int v12, v12, p10

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    add-int/lit8 v14, v12, -0x1

    aget v13, v13, v14

    move/from16 v0, p11

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable:[F

    aget v12, v15, v12

    mul-float/2addr v12, v14

    add-int v14, p7, v5

    add-int/2addr v14, v11

    add-int v15, p9, v5

    add-int/2addr v15, v11

    add-int/lit8 v16, v15, -0x1

    aget v16, p8, v16

    aget v15, p8, v15

    add-int/lit8 v17, v14, -0x1

    mul-float v18, v13, v16

    mul-float v19, v12, v15

    sub-float v18, v18, v19

    aput v18, p6, v17

    mul-float/2addr v13, v15

    mul-float v12, v12, v16

    add-float/2addr v12, v13

    aput v12, p6, v14

    add-int/lit8 v5, v5, 0x2

    goto :goto_2b2

    :cond_2ed
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_2a8

    :cond_2f1
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_29c
.end method

.method strictfp radb2(II[FI[FII)V
    .registers 27

    mul-int v3, p2, p1

    const/4 v1, 0x0

    :goto_3
    move/from16 v0, p2

    if-ge v1, v0, :cond_25

    mul-int v2, v1, p1

    mul-int/lit8 v4, v2, 0x2

    add-int v5, v4, p1

    add-int v2, v2, p6

    add-int v4, v4, p4

    add-int v6, p4, p1

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    aget v4, p3, v4

    aget v5, p3, v5

    add-float v6, v4, v5

    aput v6, p5, v2

    add-int/2addr v2, v3

    sub-float/2addr v4, v5

    aput v4, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_25
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ge v0, v1, :cond_2b

    :cond_2a
    return-void

    :cond_2b
    const/4 v1, 0x2

    move/from16 v0, p1

    if-eq v0, v1, :cond_a1

    const/4 v1, 0x0

    move v2, v1

    :goto_32
    move/from16 v0, p2

    if-ge v2, v0, :cond_9c

    mul-int v4, v2, p1

    mul-int/lit8 v5, v4, 0x2

    add-int v6, v5, p1

    add-int v7, v4, v3

    const/4 v1, 0x2

    :goto_3f
    move/from16 v0, p1

    if-ge v1, v0, :cond_98

    sub-int v8, p1, v1

    add-int/lit8 v9, v1, -0x1

    add-int v9, v9, p7

    add-int v10, p6, v1

    add-int v11, p4, v1

    add-int v8, v8, p4

    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v13, v9, -0x1

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    aget v9, v13, v9

    add-int/2addr v11, v5

    add-int/2addr v8, v6

    add-int v13, v10, v4

    add-int/2addr v10, v7

    add-int/lit8 v14, v11, -0x1

    aget v14, p3, v14

    add-int/lit8 v15, v8, -0x1

    aget v15, p3, v15

    sub-float/2addr v14, v15

    aget v15, p3, v11

    aget v16, p3, v8

    add-float v15, v15, v16

    aget v16, p3, v11

    add-int/lit8 v11, v11, -0x1

    aget v11, p3, v11

    aget v17, p3, v8

    add-int/lit8 v8, v8, -0x1

    aget v8, p3, v8

    add-int/lit8 v18, v13, -0x1

    add-float/2addr v8, v11

    aput v8, p5, v18

    sub-float v8, v16, v17

    aput v8, p5, v13

    add-int/lit8 v8, v10, -0x1

    mul-float v11, v12, v14

    mul-float v13, v9, v15

    sub-float/2addr v11, v13

    aput v11, p5, v8

    mul-float v8, v12, v15

    mul-float/2addr v9, v14

    add-float/2addr v8, v9

    aput v8, p5, v10

    add-int/lit8 v1, v1, 0x2

    goto :goto_3f

    :cond_98
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_32

    :cond_9c
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    :cond_a1
    const/4 v1, 0x0

    :goto_a2
    move/from16 v0, p2

    if-ge v1, v0, :cond_2a

    mul-int v2, v1, p1

    mul-int/lit8 v4, v2, 0x2

    add-int v5, p6, p1

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v2, v5

    add-int v4, v4, p4

    add-int v4, v4, p1

    const/high16 v5, 0x40000000    # 2.0f

    add-int/lit8 v6, v4, -0x1

    aget v6, p3, v6

    mul-float/2addr v5, v6

    aput v5, p5, v2

    add-int/2addr v2, v3

    const/high16 v5, -0x40000000    # -2.0f

    aget v4, p3, v4

    mul-float/2addr v4, v5

    aput v4, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_a2
.end method

.method strictfp radb3(II[FI[FII)V
    .registers 35

    add-int v3, p7, p1

    const/4 v1, 0x0

    :goto_3
    move/from16 v0, p2

    if-ge v1, v0, :cond_40

    mul-int v2, v1, p1

    mul-int/lit8 v4, v2, 0x3

    add-int v4, v4, p4

    mul-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v4

    aget v4, p3, v4

    const/high16 v6, 0x40000000    # 2.0f

    add-int/lit8 v7, v5, -0x1

    aget v7, p3, v7

    mul-float/2addr v6, v7

    const/high16 v7, -0x41000000    # -0.5f

    mul-float/2addr v7, v6

    add-float/2addr v7, v4

    const v8, 0x3fddb3d7

    aget v5, p3, v5

    mul-float/2addr v5, v8

    add-int v2, v2, p6

    add-float/2addr v4, v6

    aput v4, p5, v2

    add-int v2, v1, p2

    mul-int v2, v2, p1

    add-int v2, v2, p6

    sub-float v4, v7, v5

    aput v4, p5, v2

    mul-int/lit8 v2, p2, 0x2

    add-int/2addr v2, v1

    mul-int v2, v2, p1

    add-int v2, v2, p6

    add-float v4, v7, v5

    aput v4, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_40
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_46

    :cond_45
    return-void

    :cond_46
    mul-int v4, p2, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_4a
    move/from16 v0, p2

    if-ge v2, v0, :cond_45

    mul-int v5, v2, p1

    mul-int/lit8 v6, v5, 0x3

    add-int v7, v6, p1

    add-int v8, v7, p1

    add-int v9, v5, v4

    add-int v10, v9, v4

    const/4 v1, 0x2

    :goto_5b
    move/from16 v0, p1

    if-ge v1, v0, :cond_102

    sub-int v11, p1, v1

    add-int v12, p4, v1

    add-int v11, v11, p4

    add-int v13, p6, v1

    add-int v14, v12, v6

    add-int/2addr v12, v8

    add-int/2addr v11, v7

    add-int/lit8 v15, v14, -0x1

    aget v15, p3, v15

    aget v14, p3, v14

    add-int/lit8 v16, v12, -0x1

    aget v16, p3, v16

    aget v12, p3, v12

    add-int/lit8 v17, v11, -0x1

    aget v17, p3, v17

    aget v11, p3, v11

    add-float v18, v16, v17

    const/high16 v19, -0x41000000    # -0.5f

    mul-float v19, v19, v18

    add-float v19, v19, v15

    sub-float v20, v12, v11

    const/high16 v21, -0x41000000    # -0.5f

    mul-float v21, v21, v20

    add-float v21, v21, v14

    const v22, 0x3f5db3d7

    sub-float v16, v16, v17

    mul-float v16, v16, v22

    const v17, 0x3f5db3d7

    add-float/2addr v11, v12

    mul-float v11, v11, v17

    sub-float v12, v19, v11

    add-float v11, v11, v19

    add-float v17, v21, v16

    sub-float v16, v21, v16

    add-int/lit8 v19, v1, -0x1

    add-int v19, v19, p7

    add-int/lit8 v21, v1, -0x1

    add-int v21, v21, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v22, v0

    add-int/lit8 v23, v19, -0x1

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v23, v0

    aget v19, v23, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v23, v0

    add-int/lit8 v24, v21, -0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v24, v0

    aget v21, v24, v21

    add-int v24, v13, v5

    add-int v25, v13, v9

    add-int/2addr v13, v10

    add-int/lit8 v26, v24, -0x1

    add-float v15, v15, v18

    aput v15, p5, v26

    add-float v14, v14, v20

    aput v14, p5, v24

    add-int/lit8 v14, v25, -0x1

    mul-float v15, v22, v12

    mul-float v18, v19, v17

    sub-float v15, v15, v18

    aput v15, p5, v14

    mul-float v14, v22, v17

    mul-float v12, v12, v19

    add-float/2addr v12, v14

    aput v12, p5, v25

    add-int/lit8 v12, v13, -0x1

    mul-float v14, v23, v11

    mul-float v15, v21, v16

    sub-float/2addr v14, v15

    aput v14, p5, v12

    mul-float v12, v23, v16

    mul-float v11, v11, v21

    add-float/2addr v11, v12

    aput v11, p5, v13

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_5b

    :cond_102
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_4a
.end method

.method strictfp radb4(II[FI[FII)V
    .registers 43

    add-int v3, p7, p1

    add-int v4, v3, p1

    mul-int v5, p2, p1

    const/4 v1, 0x0

    :goto_7
    move/from16 v0, p2

    if-ge v1, v0, :cond_50

    mul-int v2, v1, p1

    mul-int/lit8 v6, v2, 0x4

    add-int v7, v2, v5

    add-int v8, v7, v5

    add-int v9, v8, v5

    add-int v10, v6, p1

    add-int v11, v10, p1

    add-int v12, v11, p1

    add-int v6, v6, p4

    aget v6, p3, v6

    add-int v11, v11, p4

    aget v11, p3, v11

    add-int v13, p4, p1

    add-int/lit8 v13, v13, -0x1

    add-int/2addr v12, v13

    aget v12, p3, v12

    add-int v13, p4, p1

    add-int/lit8 v13, v13, -0x1

    add-int/2addr v10, v13

    aget v10, p3, v10

    sub-float v13, v6, v12

    add-float/2addr v6, v12

    add-float/2addr v10, v10

    add-float/2addr v11, v11

    add-int v2, v2, p6

    add-float v12, v6, v10

    aput v12, p5, v2

    add-int v2, p6, v7

    sub-float v7, v13, v11

    aput v7, p5, v2

    add-int v2, p6, v8

    sub-float/2addr v6, v10

    aput v6, p5, v2

    add-int v2, p6, v9

    add-float v6, v13, v11

    aput v6, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_50
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ge v0, v1, :cond_56

    :cond_55
    return-void

    :cond_56
    const/4 v1, 0x2

    move/from16 v0, p1

    if-eq v0, v1, :cond_14e

    const/4 v1, 0x0

    move v2, v1

    :goto_5d
    move/from16 v0, p2

    if-ge v2, v0, :cond_149

    mul-int v6, v2, p1

    add-int v7, v6, v5

    add-int v8, v7, v5

    add-int v9, v8, v5

    mul-int/lit8 v10, v6, 0x4

    add-int v11, v10, p1

    add-int v12, v11, p1

    add-int v13, v12, p1

    const/4 v1, 0x2

    :goto_72
    move/from16 v0, p1

    if-ge v1, v0, :cond_144

    sub-int v14, p1, v1

    add-int/lit8 v15, v1, -0x1

    add-int v15, v15, p7

    add-int/lit8 v16, v1, -0x1

    add-int v16, v16, v3

    add-int/lit8 v17, v1, -0x1

    add-int v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, -0x1

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v19, v0

    aget v15, v19, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v19, v0

    add-int/lit8 v20, v16, -0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v20, v0

    aget v16, v20, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v20, v0

    add-int/lit8 v21, v17, -0x1

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v21, v0

    aget v17, v21, v17

    add-int v21, p4, v1

    add-int v14, v14, p4

    add-int v22, p6, v1

    add-int v23, v21, v10

    add-int v24, v14, v11

    add-int v21, v21, v12

    add-int/2addr v14, v13

    add-int/lit8 v25, v23, -0x1

    aget v25, p3, v25

    aget v23, p3, v23

    add-int/lit8 v26, v24, -0x1

    aget v26, p3, v26

    aget v24, p3, v24

    add-int/lit8 v27, v21, -0x1

    aget v27, p3, v27

    aget v21, p3, v21

    add-int/lit8 v28, v14, -0x1

    aget v28, p3, v28

    aget v14, p3, v14

    add-float v29, v23, v14

    sub-float v14, v23, v14

    sub-float v23, v21, v24

    add-float v21, v21, v24

    sub-float v24, v25, v28

    add-float v25, v25, v28

    sub-float v28, v27, v26

    add-float v26, v26, v27

    sub-float v27, v25, v26

    sub-float v30, v14, v23

    sub-float v31, v24, v21

    add-float v21, v21, v24

    add-float v24, v29, v28

    sub-float v28, v29, v28

    add-int v29, v22, v6

    add-int v32, v22, v7

    add-int v33, v22, v8

    add-int v22, v22, v9

    add-int/lit8 v34, v29, -0x1

    add-float v25, v25, v26

    aput v25, p5, v34

    add-float v14, v14, v23

    aput v14, p5, v29

    add-int/lit8 v14, v32, -0x1

    mul-float v23, v18, v31

    mul-float v25, v15, v24

    sub-float v23, v23, v25

    aput v23, p5, v14

    mul-float v14, v18, v24

    mul-float v15, v15, v31

    add-float/2addr v14, v15

    aput v14, p5, v32

    add-int/lit8 v14, v33, -0x1

    mul-float v15, v19, v27

    mul-float v18, v16, v30

    sub-float v15, v15, v18

    aput v15, p5, v14

    mul-float v14, v19, v30

    mul-float v15, v16, v27

    add-float/2addr v14, v15

    aput v14, p5, v33

    add-int/lit8 v14, v22, -0x1

    mul-float v15, v20, v21

    mul-float v16, v17, v28

    sub-float v15, v15, v16

    aput v15, p5, v14

    mul-float v14, v20, v28

    mul-float v15, v17, v21

    add-float/2addr v14, v15

    aput v14, p5, v22

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_72

    :cond_144
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_5d

    :cond_149
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_55

    :cond_14e
    const/4 v1, 0x0

    :goto_14f
    move/from16 v0, p2

    if-ge v1, v0, :cond_55

    mul-int v2, v1, p1

    mul-int/lit8 v3, v2, 0x4

    add-int v4, v2, v5

    add-int v6, v4, v5

    add-int v7, v6, v5

    add-int v8, v3, p1

    add-int v9, v8, p1

    add-int v10, v9, p1

    add-int v11, p4, p1

    add-int v12, p6, p1

    add-int/lit8 v13, v11, -0x1

    add-int/2addr v3, v13

    aget v3, p3, v3

    add-int/lit8 v11, v11, -0x1

    add-int/2addr v9, v11

    aget v9, p3, v9

    add-int v8, v8, p4

    aget v8, p3, v8

    add-int v10, v10, p4

    aget v10, p3, v10

    add-float v11, v8, v10

    sub-float v8, v10, v8

    sub-float v10, v3, v9

    add-float/2addr v3, v9

    add-int/lit8 v9, v12, -0x1

    add-int/2addr v2, v9

    add-float/2addr v3, v3

    aput v3, p5, v2

    add-int/lit8 v2, v12, -0x1

    add-int/2addr v2, v4

    const v3, 0x3fb504f3

    sub-float v4, v10, v11

    mul-float/2addr v3, v4

    aput v3, p5, v2

    add-int/lit8 v2, v12, -0x1

    add-int/2addr v2, v6

    add-float v3, v8, v8

    aput v3, p5, v2

    add-int/lit8 v2, v12, -0x1

    add-int/2addr v2, v7

    const v3, -0x404afb0d

    add-float v4, v10, v11

    mul-float/2addr v3, v4

    aput v3, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_14f
.end method

.method strictfp radb5(II[FI[FII)V
    .registers 53

    add-int v3, p7, p1

    add-int v4, v3, p1

    add-int v5, v4, p1

    mul-int v6, p2, p1

    const/4 v1, 0x0

    :goto_9
    move/from16 v0, p2

    if-ge v1, v0, :cond_9e

    mul-int v2, v1, p1

    mul-int/lit8 v7, v2, 0x5

    add-int v8, v7, p1

    add-int v9, v8, p1

    add-int v10, v9, p1

    add-int v11, v10, p1

    add-int v12, v2, v6

    add-int v13, v12, v6

    add-int v14, v13, v6

    add-int v15, v14, v6

    add-int v16, p4, p1

    add-int/lit8 v16, v16, -0x1

    add-int v7, v7, p4

    aget v7, p3, v7

    const/high16 v17, 0x40000000    # 2.0f

    add-int v9, v9, p4

    aget v9, p3, v9

    mul-float v9, v9, v17

    const/high16 v17, 0x40000000    # 2.0f

    add-int v11, v11, p4

    aget v11, p3, v11

    mul-float v11, v11, v17

    const/high16 v17, 0x40000000    # 2.0f

    add-int v8, v8, v16

    aget v8, p3, v8

    mul-float v8, v8, v17

    const/high16 v17, 0x40000000    # 2.0f

    add-int v10, v10, v16

    aget v10, p3, v10

    mul-float v10, v10, v17

    const v16, 0x3e9e377a

    mul-float v16, v16, v8

    add-float v16, v16, v7

    const v17, -0x40b0e443

    mul-float v17, v17, v10

    add-float v16, v16, v17

    const v17, -0x40b0e443

    mul-float v17, v17, v8

    add-float v17, v17, v7

    const v18, 0x3e9e377a

    mul-float v18, v18, v10

    add-float v17, v17, v18

    const v18, 0x3f737871

    mul-float v18, v18, v9

    const v19, 0x3f167918

    mul-float v19, v19, v11

    add-float v18, v18, v19

    const v19, 0x3f167918

    mul-float v9, v9, v19

    const v19, 0x3f737871

    mul-float v11, v11, v19

    sub-float/2addr v9, v11

    add-int v2, v2, p6

    add-float/2addr v7, v8

    add-float/2addr v7, v10

    aput v7, p5, v2

    add-int v2, p6, v12

    sub-float v7, v16, v18

    aput v7, p5, v2

    add-int v2, p6, v13

    sub-float v7, v17, v9

    aput v7, p5, v2

    add-int v2, p6, v14

    add-float v7, v17, v9

    aput v7, p5, v2

    add-int v2, p6, v15

    add-float v7, v16, v18

    aput v7, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    :cond_9e
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_a4

    :cond_a3
    return-void

    :cond_a4
    const/4 v1, 0x0

    move v2, v1

    :goto_a6
    move/from16 v0, p2

    if-ge v2, v0, :cond_a3

    mul-int v7, v2, p1

    mul-int/lit8 v8, v7, 0x5

    add-int v9, v8, p1

    add-int v10, v9, p1

    add-int v11, v10, p1

    add-int v12, v11, p1

    add-int v13, v7, v6

    add-int v14, v13, v6

    add-int v15, v14, v6

    add-int v16, v15, v6

    const/4 v1, 0x2

    :goto_bf
    move/from16 v0, p1

    if-ge v1, v0, :cond_237

    sub-int v17, p1, v1

    add-int/lit8 v18, v1, -0x1

    add-int v18, v18, p7

    add-int/lit8 v19, v1, -0x1

    add-int v19, v19, v3

    add-int/lit8 v20, v1, -0x1

    add-int v20, v20, v4

    add-int/lit8 v21, v1, -0x1

    add-int v21, v21, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v22, v0

    add-int/lit8 v23, v18, -0x1

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v23, v0

    aget v18, v23, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v23, v0

    add-int/lit8 v24, v19, -0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v24, v0

    aget v19, v24, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v24, v0

    add-int/lit8 v25, v20, -0x1

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v25, v0

    aget v20, v25, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v25, v0

    add-int/lit8 v26, v21, -0x1

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v26, v0

    aget v21, v26, v21

    add-int v26, p4, v1

    add-int v17, v17, p4

    add-int v27, p6, v1

    add-int v28, v26, v8

    add-int v29, v17, v9

    add-int v30, v26, v10

    add-int v17, v17, v11

    add-int v26, v26, v12

    add-int/lit8 v31, v28, -0x1

    aget v31, p3, v31

    aget v28, p3, v28

    add-int/lit8 v32, v29, -0x1

    aget v32, p3, v32

    aget v29, p3, v29

    add-int/lit8 v33, v30, -0x1

    aget v33, p3, v33

    aget v30, p3, v30

    add-int/lit8 v34, v17, -0x1

    aget v34, p3, v34

    aget v17, p3, v17

    add-int/lit8 v35, v26, -0x1

    aget v35, p3, v35

    aget v26, p3, v26

    add-float v36, v30, v29

    sub-float v29, v30, v29

    add-float v30, v26, v17

    sub-float v17, v26, v17

    sub-float v26, v33, v32

    add-float v32, v32, v33

    sub-float v33, v35, v34

    add-float v34, v34, v35

    const v35, 0x3e9e377a

    mul-float v35, v35, v32

    add-float v35, v35, v31

    const v37, -0x40b0e443

    mul-float v37, v37, v34

    add-float v35, v35, v37

    const v37, 0x3e9e377a

    mul-float v37, v37, v29

    add-float v37, v37, v28

    const v38, -0x40b0e443

    mul-float v38, v38, v17

    add-float v37, v37, v38

    const v38, -0x40b0e443

    mul-float v38, v38, v32

    add-float v38, v38, v31

    const v39, 0x3e9e377a

    mul-float v39, v39, v34

    add-float v38, v38, v39

    const v39, -0x40b0e443

    mul-float v39, v39, v29

    add-float v39, v39, v28

    const v40, 0x3e9e377a

    mul-float v40, v40, v17

    add-float v39, v39, v40

    const v40, 0x3f737871

    mul-float v40, v40, v26

    const v41, 0x3f167918

    mul-float v41, v41, v33

    add-float v40, v40, v41

    const v41, 0x3f737871

    mul-float v41, v41, v36

    const v42, 0x3f167918

    mul-float v42, v42, v30

    add-float v41, v41, v42

    const v42, 0x3f167918

    mul-float v26, v26, v42

    const v42, 0x3f737871

    mul-float v33, v33, v42

    sub-float v26, v26, v33

    const v33, 0x3f167918

    mul-float v33, v33, v36

    const v36, 0x3f737871

    mul-float v30, v30, v36

    sub-float v30, v33, v30

    sub-float v33, v38, v30

    add-float v30, v30, v38

    add-float v36, v39, v26

    sub-float v26, v39, v26

    add-float v38, v35, v41

    sub-float v35, v35, v41

    sub-float v39, v37, v40

    add-float v37, v37, v40

    add-int v40, v27, v7

    add-int v41, v27, v13

    add-int v42, v27, v14

    add-int v43, v27, v15

    add-int v27, v27, v16

    add-int/lit8 v44, v40, -0x1

    add-float v31, v31, v32

    add-float v31, v31, v34

    aput v31, p5, v44

    add-float v28, v28, v29

    add-float v17, v17, v28

    aput v17, p5, v40

    add-int/lit8 v17, v41, -0x1

    mul-float v28, v22, v35

    mul-float v29, v18, v37

    sub-float v28, v28, v29

    aput v28, p5, v17

    mul-float v17, v22, v37

    mul-float v18, v18, v35

    add-float v17, v17, v18

    aput v17, p5, v41

    add-int/lit8 v17, v42, -0x1

    mul-float v18, v23, v33

    mul-float v22, v19, v36

    sub-float v18, v18, v22

    aput v18, p5, v17

    mul-float v17, v23, v36

    mul-float v18, v19, v33

    add-float v17, v17, v18

    aput v17, p5, v42

    add-int/lit8 v17, v43, -0x1

    mul-float v18, v24, v30

    mul-float v19, v20, v26

    sub-float v18, v18, v19

    aput v18, p5, v17

    mul-float v17, v24, v26

    mul-float v18, v20, v30

    add-float v17, v17, v18

    aput v17, p5, v43

    add-int/lit8 v17, v27, -0x1

    mul-float v18, v25, v38

    mul-float v19, v21, v39

    sub-float v18, v18, v19

    aput v18, p5, v17

    mul-float v17, v25, v39

    mul-float v18, v21, v38

    add-float v17, v17, v18

    aput v17, p5, v27

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_bf

    :cond_237
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_a6
.end method

.method strictfp radbg(IIII[FI[FII)V
    .registers 37

    const v5, 0x40c90fdb

    move/from16 v0, p2

    int-to-float v6, v0

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v12, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v13, v5

    add-int/lit8 v5, p1, -0x1

    div-int/lit8 v14, v5, 0x2

    add-int/lit8 v5, p2, 0x1

    div-int/lit8 v15, v5, 0x2

    mul-int v7, p2, p1

    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_43

    const/4 v5, 0x0

    move v6, v5

    :goto_25
    move/from16 v0, p3

    if-ge v6, v0, :cond_63

    mul-int v8, v6, p1

    mul-int v9, v6, v7

    const/4 v5, 0x0

    :goto_2e
    move/from16 v0, p1

    if-ge v5, v0, :cond_3f

    add-int v10, p8, v5

    add-int/2addr v10, v8

    add-int v11, p6, v5

    add-int/2addr v11, v9

    aget v11, p5, v11

    aput v11, p7, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    :cond_3f
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_25

    :cond_43
    const/4 v5, 0x0

    move v6, v5

    :goto_45
    move/from16 v0, p1

    if-ge v6, v0, :cond_63

    add-int v8, p8, v6

    add-int v9, p6, v6

    const/4 v5, 0x0

    :goto_4e
    move/from16 v0, p3

    if-ge v5, v0, :cond_5f

    mul-int v10, v5, p1

    add-int/2addr v10, v8

    mul-int v11, v5, v7

    add-int/2addr v11, v9

    aget v11, p5, v11

    aput v11, p7, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    :cond_5f
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_45

    :cond_63
    add-int v5, p6, p1

    add-int/lit8 v7, v5, -0x1

    const/4 v5, 0x1

    move v6, v5

    :goto_69
    if-ge v6, v15, :cond_a6

    sub-int v5, p2, v6

    mul-int/lit8 v8, v6, 0x2

    mul-int v9, v6, p3

    mul-int v9, v9, p1

    mul-int v5, v5, p3

    mul-int v10, v5, p1

    mul-int v8, v8, p1

    const/4 v5, 0x0

    :goto_7a
    move/from16 v0, p3

    if-ge v5, v0, :cond_a2

    mul-int v11, v5, p1

    mul-int v16, v11, p2

    add-int v17, v7, v8

    add-int v17, v17, v16

    sub-int v17, v17, p1

    add-int v18, p6, v8

    add-int v16, v16, v18

    aget v17, p5, v17

    aget v16, p5, v16

    add-int v18, p8, v11

    add-int v18, v18, v9

    add-float v17, v17, v17

    aput v17, p7, v18

    add-int v11, v11, p8

    add-int/2addr v11, v10

    add-float v16, v16, v16

    aput v16, p7, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_7a

    :cond_a2
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_69

    :cond_a6
    const/4 v5, 0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_17f

    move/from16 v0, p3

    if-lt v14, v0, :cond_117

    const/4 v5, 0x1

    move v7, v5

    :goto_b1
    if-ge v7, v15, :cond_17f

    sub-int v5, p2, v7

    mul-int v6, v7, p3

    mul-int v8, v6, p1

    mul-int v5, v5, p3

    mul-int v9, v5, p1

    mul-int/lit8 v5, v7, 0x2

    mul-int v10, v5, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_c3
    move/from16 v0, p3

    if-ge v6, v0, :cond_113

    mul-int v5, v6, p1

    add-int v11, v5, v8

    mul-int v5, v6, p1

    add-int v16, v5, v9

    mul-int v5, v6, p2

    mul-int v5, v5, p1

    add-int v17, v5, v10

    const/4 v5, 0x2

    :goto_d6
    move/from16 v0, p1

    if-ge v5, v0, :cond_10f

    sub-int v18, p1, v5

    add-int v19, p8, v5

    add-int v18, v18, p6

    add-int v20, p6, v5

    add-int v21, v19, v11

    add-int v19, v19, v16

    add-int v20, v20, v17

    add-int v18, v18, v17

    sub-int v18, v18, p1

    add-int/lit8 v22, v20, -0x1

    aget v22, p5, v22

    aget v20, p5, v20

    add-int/lit8 v23, v18, -0x1

    aget v23, p5, v23

    aget v18, p5, v18

    add-int/lit8 v24, v21, -0x1

    add-float v25, v22, v23

    aput v25, p7, v24

    add-int/lit8 v24, v19, -0x1

    sub-float v22, v22, v23

    aput v22, p7, v24

    sub-float v22, v20, v18

    aput v22, p7, v21

    add-float v18, v18, v20

    aput v18, p7, v19

    add-int/lit8 v5, v5, 0x2

    goto :goto_d6

    :cond_10f
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_c3

    :cond_113
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_b1

    :cond_117
    const/4 v5, 0x1

    move v7, v5

    :goto_119
    if-ge v7, v15, :cond_17f

    sub-int v5, p2, v7

    mul-int v6, v7, p3

    mul-int v8, v6, p1

    mul-int v5, v5, p3

    mul-int v9, v5, p1

    mul-int/lit8 v5, v7, 0x2

    mul-int v10, v5, p1

    const/4 v5, 0x2

    move v6, v5

    :goto_12b
    move/from16 v0, p1

    if-ge v6, v0, :cond_17b

    sub-int v5, p1, v6

    add-int v11, p8, v6

    add-int v16, p6, v5

    add-int v17, p6, v6

    const/4 v5, 0x0

    :goto_138
    move/from16 v0, p3

    if-ge v5, v0, :cond_177

    mul-int v18, v5, p1

    add-int v18, v18, v8

    mul-int v19, v5, p1

    add-int v19, v19, v9

    mul-int v20, v5, p2

    mul-int v20, v20, p1

    add-int v20, v20, v10

    add-int v18, v18, v11

    add-int v19, v19, v11

    add-int v21, v17, v20

    add-int v20, v20, v16

    sub-int v20, v20, p1

    add-int/lit8 v22, v21, -0x1

    aget v22, p5, v22

    aget v21, p5, v21

    add-int/lit8 v23, v20, -0x1

    aget v23, p5, v23

    aget v20, p5, v20

    add-int/lit8 v24, v18, -0x1

    add-float v25, v22, v23

    aput v25, p7, v24

    add-int/lit8 v24, v19, -0x1

    sub-float v22, v22, v23

    aput v22, p7, v24

    sub-float v22, v21, v20

    aput v22, p7, v18

    add-float v18, v21, v20

    aput v18, p7, v19

    add-int/lit8 v5, v5, 0x1

    goto :goto_138

    :cond_177
    add-int/lit8 v5, v6, 0x2

    move v6, v5

    goto :goto_12b

    :cond_17b
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_119

    :cond_17f
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    add-int/lit8 v5, p2, -0x1

    mul-int v16, v5, p4

    const/4 v5, 0x1

    move v11, v5

    move v5, v7

    :goto_189
    if-ge v11, v15, :cond_205

    sub-int v6, p2, v11

    mul-float v7, v12, v5

    mul-float v8, v13, v10

    sub-float/2addr v7, v8

    mul-float v8, v12, v10

    mul-float/2addr v5, v13

    add-float v10, v8, v5

    mul-int v17, v11, p4

    mul-int v18, v6, p4

    const/4 v5, 0x0

    :goto_19c
    move/from16 v0, p4

    if-ge v5, v0, :cond_1be

    add-int v6, p6, v5

    add-int v8, p8, v5

    add-int v9, v6, v17

    aget v19, p7, v8

    add-int v20, v8, p4

    aget v20, p7, v20

    mul-float v20, v20, v7

    add-float v19, v19, v20

    aput v19, p5, v9

    add-int v6, v6, v18

    add-int v8, v8, v16

    aget v8, p7, v8

    mul-float/2addr v8, v10

    aput v8, p5, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_19c

    :cond_1be
    const/4 v5, 0x2

    move v6, v5

    move v9, v10

    move v5, v7

    :goto_1c2
    if-ge v6, v15, :cond_200

    sub-int v19, p2, v6

    mul-float v8, v7, v5

    mul-float v20, v10, v9

    sub-float v8, v8, v20

    mul-float/2addr v9, v7

    mul-float/2addr v5, v10

    add-float/2addr v9, v5

    mul-int v20, v6, p4

    mul-int v19, v19, p4

    const/4 v5, 0x0

    :goto_1d4
    move/from16 v0, p4

    if-ge v5, v0, :cond_1fb

    add-int v21, p6, v5

    add-int v22, p8, v5

    add-int v23, v21, v17

    aget v24, p5, v23

    add-int v25, v22, v20

    aget v25, p7, v25

    mul-float v25, v25, v8

    add-float v24, v24, v25

    aput v24, p5, v23

    add-int v21, v21, v18

    aget v23, p5, v21

    add-int v22, v22, v19

    aget v22, p7, v22

    mul-float v22, v22, v9

    add-float v22, v22, v23

    aput v22, p5, v21

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d4

    :cond_1fb
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v8

    goto :goto_1c2

    :cond_200
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move v5, v7

    goto :goto_189

    :cond_205
    const/4 v5, 0x1

    move v6, v5

    :goto_207
    if-ge v6, v15, :cond_222

    mul-int v7, v6, p4

    const/4 v5, 0x0

    :goto_20c
    move/from16 v0, p4

    if-ge v5, v0, :cond_21e

    add-int v8, p8, v5

    aget v9, p7, v8

    add-int v10, v8, v7

    aget v10, p7, v10

    add-float/2addr v9, v10

    aput v9, p7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_20c

    :cond_21e
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_207

    :cond_222
    const/4 v5, 0x1

    move v6, v5

    :goto_224
    if-ge v6, v15, :cond_254

    sub-int v5, p2, v6

    mul-int v7, v6, p3

    mul-int v7, v7, p1

    mul-int v5, v5, p3

    mul-int v8, v5, p1

    const/4 v5, 0x0

    :goto_231
    move/from16 v0, p3

    if-ge v5, v0, :cond_250

    mul-int v9, v5, p1

    add-int v10, p8, v9

    add-int v11, p6, v9

    add-int/2addr v11, v7

    add-int v9, v9, p6

    add-int/2addr v9, v8

    aget v11, p5, v11

    aget v9, p5, v9

    add-int v12, v10, v7

    sub-float v13, v11, v9

    aput v13, p7, v12

    add-int/2addr v10, v8

    add-float/2addr v9, v11

    aput v9, p7, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_231

    :cond_250
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_224

    :cond_254
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_25a

    :cond_259
    return-void

    :cond_25a
    move/from16 v0, p3

    if-lt v14, v0, :cond_2b3

    const/4 v5, 0x1

    move v7, v5

    :goto_260
    if-ge v7, v15, :cond_30a

    sub-int v5, p2, v7

    mul-int v6, v7, p3

    mul-int v8, v6, p1

    mul-int v5, v5, p3

    mul-int v9, v5, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_26e
    move/from16 v0, p3

    if-ge v6, v0, :cond_2af

    mul-int v10, v6, p1

    const/4 v5, 0x2

    :goto_275
    move/from16 v0, p1

    if-ge v5, v0, :cond_2ab

    add-int v11, p8, v5

    add-int v12, p6, v5

    add-int v13, v11, v10

    add-int/2addr v13, v8

    add-int/2addr v11, v10

    add-int/2addr v11, v9

    add-int v16, v12, v10

    add-int v16, v16, v8

    add-int/2addr v12, v10

    add-int/2addr v12, v9

    add-int/lit8 v17, v16, -0x1

    aget v17, p5, v17

    aget v16, p5, v16

    add-int/lit8 v18, v12, -0x1

    aget v18, p5, v18

    aget v12, p5, v12

    add-int/lit8 v19, v13, -0x1

    sub-float v20, v17, v12

    aput v20, p7, v19

    add-int/lit8 v19, v11, -0x1

    add-float v12, v12, v17

    aput v12, p7, v19

    add-float v12, v16, v18

    aput v12, p7, v13

    sub-float v12, v16, v18

    aput v12, p7, v11

    add-int/lit8 v5, v5, 0x2

    goto :goto_275

    :cond_2ab
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_26e

    :cond_2af
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_260

    :cond_2b3
    const/4 v5, 0x1

    move v7, v5

    :goto_2b5
    if-ge v7, v15, :cond_30a

    sub-int v5, p2, v7

    mul-int v6, v7, p3

    mul-int v8, v6, p1

    mul-int v5, v5, p3

    mul-int v9, v5, p1

    const/4 v5, 0x2

    move v6, v5

    :goto_2c3
    move/from16 v0, p1

    if-ge v6, v0, :cond_306

    add-int v10, p8, v6

    add-int v11, p6, v6

    const/4 v5, 0x0

    :goto_2cc
    move/from16 v0, p3

    if-ge v5, v0, :cond_302

    mul-int v12, v5, p1

    add-int v13, v10, v12

    add-int/2addr v13, v8

    add-int v16, v10, v12

    add-int v16, v16, v9

    add-int v17, v11, v12

    add-int v17, v17, v8

    add-int/2addr v12, v11

    add-int/2addr v12, v9

    add-int/lit8 v18, v17, -0x1

    aget v18, p5, v18

    aget v17, p5, v17

    add-int/lit8 v19, v12, -0x1

    aget v19, p5, v19

    aget v12, p5, v12

    add-int/lit8 v20, v13, -0x1

    sub-float v21, v18, v12

    aput v21, p7, v20

    add-int/lit8 v20, v16, -0x1

    add-float v12, v12, v18

    aput v12, p7, v20

    add-float v12, v17, v19

    aput v12, p7, v13

    sub-float v12, v17, v19

    aput v12, p7, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_2cc

    :cond_302
    add-int/lit8 v5, v6, 0x2

    move v6, v5

    goto :goto_2c3

    :cond_306
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_2b5

    :cond_30a
    move-object/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x1

    move v6, v5

    :goto_319
    move/from16 v0, p2

    if-ge v6, v0, :cond_338

    mul-int v5, v6, p3

    mul-int v7, v5, p1

    const/4 v5, 0x0

    :goto_322
    move/from16 v0, p3

    if-ge v5, v0, :cond_334

    mul-int v8, v5, p1

    add-int/2addr v8, v7

    add-int v9, p6, v8

    add-int v8, v8, p8

    aget v8, p7, v8

    aput v8, p5, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_322

    :cond_334
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_319

    :cond_338
    move/from16 v0, p3

    if-gt v14, v0, :cond_39d

    move/from16 v0, p1

    neg-int v6, v0

    const/4 v5, 0x1

    move v8, v5

    move v5, v6

    :goto_342
    move/from16 v0, p2

    if-ge v8, v0, :cond_259

    add-int v9, v5, p1

    add-int/lit8 v6, v9, -0x1

    mul-int v5, v8, p3

    mul-int v10, v5, p1

    const/4 v5, 0x2

    move/from16 v26, v5

    move v5, v6

    move/from16 v6, v26

    :goto_354
    move/from16 v0, p1

    if-ge v6, v0, :cond_398

    add-int/lit8 v7, v5, 0x2

    add-int v5, v7, p9

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v12, v5, -0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    aget v12, v12, v5

    add-int v13, p6, v6

    add-int v14, p8, v6

    const/4 v5, 0x0

    :goto_36f
    move/from16 v0, p3

    if-ge v5, v0, :cond_393

    mul-int v15, v5, p1

    add-int/2addr v15, v10

    add-int v16, v13, v15

    add-int/2addr v15, v14

    add-int/lit8 v17, v15, -0x1

    aget v17, p7, v17

    aget v15, p7, v15

    add-int/lit8 v18, v16, -0x1

    mul-float v19, v11, v17

    mul-float v20, v12, v15

    sub-float v19, v19, v20

    aput v19, p5, v18

    mul-float/2addr v15, v11

    mul-float v17, v17, v12

    add-float v15, v15, v17

    aput v15, p5, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_36f

    :cond_393
    add-int/lit8 v5, v6, 0x2

    move v6, v5

    move v5, v7

    goto :goto_354

    :cond_398
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v9

    goto :goto_342

    :cond_39d
    move/from16 v0, p1

    neg-int v6, v0

    const/4 v5, 0x1

    move v8, v5

    move v5, v6

    :goto_3a3
    move/from16 v0, p2

    if-ge v8, v0, :cond_259

    add-int v9, v5, p1

    mul-int v5, v8, p3

    mul-int v10, v5, p1

    const/4 v5, 0x0

    move v7, v5

    :goto_3af
    move/from16 v0, p3

    if-ge v7, v0, :cond_3f3

    add-int/lit8 v6, v9, -0x1

    mul-int v5, v7, p1

    add-int v11, v5, v10

    const/4 v5, 0x2

    :goto_3ba
    move/from16 v0, p1

    if-ge v5, v0, :cond_3ef

    add-int/lit8 v6, v6, 0x2

    add-int v12, v6, p9

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v14, v12, -0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    aget v12, v14, v12

    add-int v14, p6, v5

    add-int v15, p8, v5

    add-int/2addr v14, v11

    add-int/2addr v15, v11

    add-int/lit8 v16, v15, -0x1

    aget v16, p7, v16

    aget v15, p7, v15

    add-int/lit8 v17, v14, -0x1

    mul-float v18, v13, v16

    mul-float v19, v12, v15

    sub-float v18, v18, v19

    aput v18, p5, v17

    mul-float/2addr v13, v15

    mul-float v12, v12, v16

    add-float/2addr v12, v13

    aput v12, p5, v14

    add-int/lit8 v5, v5, 0x2

    goto :goto_3ba

    :cond_3ef
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_3af

    :cond_3f3
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v9

    goto :goto_3a3
.end method

.method strictfp radf2(II[FI[FII)V
    .registers 26

    mul-int v4, p2, p1

    mul-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    :goto_5
    move/from16 v0, p2

    if-ge v2, v0, :cond_26

    mul-int v3, v2, v1

    add-int v3, v3, p6

    add-int v5, v3, v1

    add-int/lit8 v5, v5, -0x1

    mul-int v6, v2, p1

    add-int v6, v6, p4

    add-int v7, v6, v4

    aget v6, p3, v6

    aget v7, p3, v7

    add-float v8, v6, v7

    aput v8, p5, v3

    sub-float v3, v6, v7

    aput v3, p5, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_26
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ge v0, v2, :cond_2c

    :cond_2b
    return-void

    :cond_2c
    const/4 v2, 0x2

    move/from16 v0, p1

    if-eq v0, v2, :cond_9b

    const/4 v2, 0x0

    :goto_32
    move/from16 v0, p2

    if-ge v2, v0, :cond_96

    mul-int v3, v2, p1

    mul-int/lit8 v5, v3, 0x2

    add-int v6, v5, p1

    add-int v7, v3, v4

    const/4 v1, 0x2

    :goto_3f
    move/from16 v0, p1

    if-ge v1, v0, :cond_91

    sub-int v8, p1, v1

    add-int/lit8 v9, v1, -0x1

    add-int v9, v9, p7

    add-int v10, p6, v1

    add-int/2addr v10, v5

    add-int v8, v8, p6

    add-int/2addr v8, v6

    add-int v11, p4, v1

    add-int/2addr v11, v3

    add-int v12, p4, v1

    add-int/2addr v12, v7

    add-int/lit8 v13, v11, -0x1

    aget v13, p3, v13

    aget v11, p3, v11

    add-int/lit8 v14, v12, -0x1

    aget v14, p3, v14

    aget v12, p3, v12

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v16, v9, -0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v16, v0

    aget v9, v16, v9

    mul-float v16, v15, v14

    mul-float v17, v9, v12

    add-float v16, v16, v17

    mul-float/2addr v12, v15

    mul-float/2addr v9, v14

    sub-float v9, v12, v9

    add-float v12, v11, v9

    aput v12, p5, v10

    add-int/lit8 v10, v10, -0x1

    add-float v12, v13, v16

    aput v12, p5, v10

    sub-float/2addr v9, v11

    aput v9, p5, v8

    add-int/lit8 v8, v8, -0x1

    sub-float v9, v13, v16

    aput v9, p5, v8

    add-int/lit8 v1, v1, 0x2

    goto :goto_3f

    :cond_91
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_32

    :cond_96
    rem-int/lit8 v2, p1, 0x2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2b

    :cond_9b
    mul-int/lit8 v2, v1, 0x2

    const/4 v1, 0x0

    :goto_9e
    move/from16 v0, p2

    if-ge v1, v0, :cond_2b

    mul-int v3, v1, p1

    add-int v5, p6, v2

    add-int v5, v5, p1

    add-int v6, p4, p1

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v3, v6

    add-int v6, v3, v4

    aget v6, p3, v6

    neg-float v6, v6

    aput v6, p5, v5

    add-int/lit8 v5, v5, -0x1

    aget v3, p3, v3

    aput v3, p5, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_9e
.end method

.method strictfp radf3(II[FI[FII)V
    .registers 33

    add-int v3, p7, p1

    mul-int v4, p2, p1

    const/4 v1, 0x0

    :goto_5
    move/from16 v0, p2

    if-ge v1, v0, :cond_41

    mul-int v2, v1, p1

    mul-int/lit8 v5, v4, 0x2

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x1

    mul-int v6, v6, p1

    add-int v7, p4, v2

    add-int v8, v7, v4

    add-int/2addr v5, v7

    aget v7, p3, v7

    aget v8, p3, v8

    aget v5, p3, v5

    add-float v9, v8, v5

    mul-int/lit8 v2, v2, 0x3

    add-int v2, v2, p6

    add-float v10, v7, v9

    aput v10, p5, v2

    add-int v2, p6, v6

    add-int v2, v2, p1

    const v10, 0x3f5db3d7

    sub-float/2addr v5, v8

    mul-float/2addr v5, v10

    aput v5, p5, v2

    add-int v2, p6, p1

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v6

    const/high16 v5, -0x41000000    # -0.5f

    mul-float/2addr v5, v9

    add-float/2addr v5, v7

    aput v5, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_41
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_47

    :cond_46
    return-void

    :cond_47
    const/4 v1, 0x0

    move v2, v1

    :goto_49
    move/from16 v0, p2

    if-ge v2, v0, :cond_46

    mul-int v5, v2, p1

    mul-int/lit8 v6, v5, 0x3

    add-int v7, v5, v4

    add-int v8, v7, v4

    add-int v9, v6, p1

    add-int v10, v9, p1

    const/4 v1, 0x2

    :goto_5a
    move/from16 v0, p1

    if-ge v1, v0, :cond_fe

    sub-int v11, p1, v1

    add-int/lit8 v12, v1, -0x1

    add-int v12, v12, p7

    add-int/lit8 v13, v1, -0x1

    add-int/2addr v13, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v15, v12, -0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    aget v12, v15, v12

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v16, v13, -0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v16, v0

    aget v13, v16, v13

    add-int v16, p4, v1

    add-int v17, p6, v1

    add-int v11, v11, p6

    add-int v18, v16, v5

    add-int v19, v16, v7

    add-int v16, v16, v8

    add-int/lit8 v20, v18, -0x1

    aget v20, p3, v20

    aget v18, p3, v18

    add-int/lit8 v21, v19, -0x1

    aget v21, p3, v21

    aget v19, p3, v19

    add-int/lit8 v22, v16, -0x1

    aget v22, p3, v22

    aget v16, p3, v16

    mul-float v23, v14, v21

    mul-float v24, v12, v19

    add-float v23, v23, v24

    mul-float v14, v14, v19

    mul-float v12, v12, v21

    sub-float v12, v14, v12

    mul-float v14, v15, v22

    mul-float v19, v13, v16

    add-float v14, v14, v19

    mul-float v15, v15, v16

    mul-float v13, v13, v22

    sub-float v13, v15, v13

    add-float v15, v23, v14

    add-float v16, v12, v13

    const/high16 v19, -0x41000000    # -0.5f

    mul-float v19, v19, v15

    add-float v19, v19, v20

    const/high16 v21, -0x41000000    # -0.5f

    mul-float v21, v21, v16

    add-float v21, v21, v18

    const v22, 0x3f5db3d7

    sub-float/2addr v12, v13

    mul-float v12, v12, v22

    const v13, 0x3f5db3d7

    sub-float v14, v14, v23

    mul-float/2addr v13, v14

    add-int v14, v17, v6

    add-int/2addr v11, v9

    add-int v17, v17, v10

    add-int/lit8 v22, v14, -0x1

    add-float v15, v15, v20

    aput v15, p5, v22

    add-float v15, v18, v16

    aput v15, p5, v14

    add-int/lit8 v14, v11, -0x1

    sub-float v15, v19, v12

    aput v15, p5, v14

    sub-float v14, v13, v21

    aput v14, p5, v11

    add-int/lit8 v11, v17, -0x1

    add-float v12, v12, v19

    aput v12, p5, v11

    add-float v11, v21, v13

    aput v11, p5, v17

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_5a

    :cond_fe
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_49
.end method

.method strictfp radf4(II[FI[FII)V
    .registers 40

    add-int v3, p7, p1

    add-int v4, v3, p1

    mul-int v5, p2, p1

    const/4 v1, 0x0

    :goto_7
    move/from16 v0, p2

    if-ge v1, v0, :cond_4b

    mul-int v2, v1, p1

    mul-int/lit8 v6, v2, 0x4

    add-int v7, v2, v5

    add-int v8, v7, v5

    add-int v9, v8, v5

    add-int v10, v6, p1

    add-int v2, v2, p4

    aget v2, p3, v2

    add-int v7, v7, p4

    aget v7, p3, v7

    add-int v8, v8, p4

    aget v8, p3, v8

    add-int v9, v9, p4

    aget v9, p3, v9

    add-float v11, v7, v9

    add-float v12, v2, v8

    add-int v6, v6, p6

    add-int v10, v10, p6

    add-int v10, v10, p1

    add-float v13, v11, v12

    aput v13, p5, v6

    add-int/lit8 v6, v10, -0x1

    add-int v6, v6, p1

    add-int v6, v6, p1

    sub-float v11, v12, v11

    aput v11, p5, v6

    add-int/lit8 v6, v10, -0x1

    sub-float/2addr v2, v8

    aput v2, p5, v6

    sub-float v2, v9, v7

    aput v2, p5, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4b
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ge v0, v1, :cond_51

    :cond_50
    return-void

    :cond_51
    const/4 v1, 0x2

    move/from16 v0, p1

    if-eq v0, v1, :cond_14c

    const/4 v1, 0x0

    move v2, v1

    :goto_58
    move/from16 v0, p2

    if-ge v2, v0, :cond_147

    mul-int v6, v2, p1

    add-int v7, v6, v5

    add-int v8, v7, v5

    add-int v9, v8, v5

    mul-int/lit8 v10, v6, 0x4

    add-int v11, v10, p1

    add-int v12, v11, p1

    add-int v13, v12, p1

    const/4 v1, 0x2

    :goto_6d
    move/from16 v0, p1

    if-ge v1, v0, :cond_142

    sub-int v14, p1, v1

    add-int/lit8 v15, v1, -0x1

    add-int v15, v15, p7

    add-int/lit8 v16, v1, -0x1

    add-int v16, v16, v3

    add-int/lit8 v17, v1, -0x1

    add-int v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, -0x1

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v19, v0

    aget v15, v19, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v19, v0

    add-int/lit8 v20, v16, -0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v20, v0

    aget v16, v20, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v20, v0

    add-int/lit8 v21, v17, -0x1

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v21, v0

    aget v17, v21, v17

    add-int v21, p4, v1

    add-int v22, p6, v1

    add-int v14, v14, p6

    add-int v23, v21, v6

    add-int v24, v21, v7

    add-int v25, v21, v8

    add-int v21, v21, v9

    add-int/lit8 v26, v23, -0x1

    aget v26, p3, v26

    aget v23, p3, v23

    add-int/lit8 v27, v24, -0x1

    aget v27, p3, v27

    aget v24, p3, v24

    add-int/lit8 v28, v25, -0x1

    aget v28, p3, v28

    aget v25, p3, v25

    add-int/lit8 v29, v21, -0x1

    aget v29, p3, v29

    aget v21, p3, v21

    mul-float v30, v18, v27

    mul-float v31, v15, v24

    add-float v30, v30, v31

    mul-float v18, v18, v24

    mul-float v15, v15, v27

    sub-float v15, v18, v15

    mul-float v18, v19, v28

    mul-float v24, v16, v25

    add-float v18, v18, v24

    mul-float v19, v19, v25

    mul-float v16, v16, v28

    sub-float v16, v19, v16

    mul-float v19, v20, v29

    mul-float v24, v17, v21

    add-float v19, v19, v24

    mul-float v20, v20, v21

    mul-float v17, v17, v29

    sub-float v17, v20, v17

    add-float v20, v30, v19

    sub-float v19, v19, v30

    add-float v21, v15, v17

    sub-float v15, v15, v17

    add-float v17, v23, v16

    sub-float v16, v23, v16

    add-float v23, v26, v18

    sub-float v18, v26, v18

    add-int v24, v22, v10

    add-int v25, v14, v11

    add-int v22, v22, v12

    add-int/2addr v14, v13

    add-int/lit8 v26, v24, -0x1

    add-float v27, v20, v23

    aput v27, p5, v26

    add-int/lit8 v26, v14, -0x1

    sub-float v20, v23, v20

    aput v20, p5, v26

    add-float v20, v21, v17

    aput v20, p5, v24

    sub-float v17, v21, v17

    aput v17, p5, v14

    add-int/lit8 v14, v22, -0x1

    add-float v17, v15, v18

    aput v17, p5, v14

    add-int/lit8 v14, v25, -0x1

    sub-float v15, v18, v15

    aput v15, p5, v14

    add-float v14, v19, v16

    aput v14, p5, v22

    sub-float v14, v19, v16

    aput v14, p5, v25

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_6d

    :cond_142
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_58

    :cond_147
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_50

    :cond_14c
    const/4 v1, 0x0

    :goto_14d
    move/from16 v0, p2

    if-ge v1, v0, :cond_50

    mul-int v2, v1, p1

    mul-int/lit8 v3, v2, 0x4

    add-int v4, v2, v5

    add-int v6, v4, v5

    add-int v7, v6, v5

    add-int v8, v3, p1

    add-int v9, v8, p1

    add-int v10, v9, p1

    add-int v11, p4, p1

    add-int v12, p6, p1

    add-int/lit8 v13, v11, -0x1

    add-int/2addr v2, v13

    aget v2, p3, v2

    add-int/lit8 v13, v11, -0x1

    add-int/2addr v4, v13

    aget v4, p3, v4

    add-int/lit8 v13, v11, -0x1

    add-int/2addr v6, v13

    aget v6, p3, v6

    add-int/lit8 v11, v11, -0x1

    add-int/2addr v7, v11

    aget v7, p3, v7

    const v11, -0x40cafb0d

    add-float v13, v4, v7

    mul-float/2addr v11, v13

    const v13, 0x3f3504f3

    sub-float/2addr v4, v7

    mul-float/2addr v4, v13

    add-int/lit8 v7, v12, -0x1

    add-int/2addr v3, v7

    add-float v7, v4, v2

    aput v7, p5, v3

    add-int/lit8 v3, v12, -0x1

    add-int/2addr v3, v9

    sub-float/2addr v2, v4

    aput v2, p5, v3

    add-int v2, p6, v8

    sub-float v3, v11, v6

    aput v3, p5, v2

    add-int v2, p6, v10

    add-float v3, v11, v6

    aput v3, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_14d
.end method

.method strictfp radf5(II[FI[FII)V
    .registers 47

    add-int v3, p7, p1

    add-int v4, v3, p1

    add-int v5, v4, p1

    mul-int v6, p2, p1

    const/4 v1, 0x0

    :goto_9
    move/from16 v0, p2

    if-ge v1, v0, :cond_83

    mul-int v2, v1, p1

    mul-int/lit8 v7, v2, 0x5

    add-int v8, v7, p1

    add-int v9, v8, p1

    add-int v10, v9, p1

    add-int v11, v10, p1

    add-int v12, v2, v6

    add-int v13, v12, v6

    add-int v14, v13, v6

    add-int v15, v14, v6

    add-int v16, p6, p1

    add-int/lit8 v16, v16, -0x1

    add-int v2, v2, p4

    aget v2, p3, v2

    add-int v12, v12, p4

    aget v12, p3, v12

    add-int v13, v13, p4

    aget v13, p3, v13

    add-int v14, v14, p4

    aget v14, p3, v14

    add-int v15, v15, p4

    aget v15, p3, v15

    add-float v17, v15, v12

    sub-float v12, v15, v12

    add-float v15, v14, v13

    sub-float v13, v14, v13

    add-int v7, v7, p6

    add-float v14, v2, v17

    add-float/2addr v14, v15

    aput v14, p5, v7

    add-int v7, v16, v8

    const v8, 0x3e9e377a

    mul-float v8, v8, v17

    add-float/2addr v8, v2

    const v14, -0x40b0e443

    mul-float/2addr v14, v15

    add-float/2addr v8, v14

    aput v8, p5, v7

    add-int v7, p6, v9

    const v8, 0x3f737871

    mul-float/2addr v8, v12

    const v9, 0x3f167918

    mul-float/2addr v9, v13

    add-float/2addr v8, v9

    aput v8, p5, v7

    add-int v7, v16, v10

    const v8, -0x40b0e443

    mul-float v8, v8, v17

    add-float/2addr v2, v8

    const v8, 0x3e9e377a

    mul-float/2addr v8, v15

    add-float/2addr v2, v8

    aput v2, p5, v7

    add-int v2, p6, v11

    const v7, 0x3f167918

    mul-float/2addr v7, v12

    const v8, 0x3f737871

    mul-float/2addr v8, v13

    sub-float/2addr v7, v8

    aput v7, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_83
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_89

    :cond_88
    return-void

    :cond_89
    const/4 v1, 0x0

    move v2, v1

    :goto_8b
    move/from16 v0, p2

    if-ge v2, v0, :cond_88

    mul-int v7, v2, p1

    mul-int/lit8 v8, v7, 0x5

    add-int v9, v8, p1

    add-int v10, v9, p1

    add-int v11, v10, p1

    add-int v12, v11, p1

    add-int v13, v7, v6

    add-int v14, v13, v6

    add-int v15, v14, v6

    add-int v16, v15, v6

    const/4 v1, 0x2

    :goto_a4
    move/from16 v0, p1

    if-ge v1, v0, :cond_21c

    add-int/lit8 v17, v1, -0x1

    add-int v17, v17, p7

    add-int/lit8 v18, v1, -0x1

    add-int v18, v18, v3

    add-int/lit8 v19, v1, -0x1

    add-int v19, v19, v4

    add-int/lit8 v20, v1, -0x1

    add-int v20, v20, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v21, v0

    add-int/lit8 v22, v17, -0x1

    aget v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v22, v0

    aget v17, v22, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v22, v0

    add-int/lit8 v23, v18, -0x1

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v23, v0

    aget v18, v23, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v23, v0

    add-int/lit8 v24, v19, -0x1

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v24, v0

    aget v19, v24, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v24, v0

    add-int/lit8 v25, v20, -0x1

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v25, v0

    aget v20, v25, v20

    sub-int v25, p1, v1

    add-int v26, p4, v1

    add-int v27, p6, v1

    add-int v25, v25, p6

    add-int v28, v26, v7

    add-int v29, v26, v13

    add-int v30, v26, v14

    add-int v31, v26, v15

    add-int v26, v26, v16

    add-int/lit8 v32, v28, -0x1

    aget v32, p3, v32

    aget v28, p3, v28

    add-int/lit8 v33, v29, -0x1

    aget v33, p3, v33

    aget v29, p3, v29

    add-int/lit8 v34, v30, -0x1

    aget v34, p3, v34

    aget v30, p3, v30

    add-int/lit8 v35, v31, -0x1

    aget v35, p3, v35

    aget v31, p3, v31

    add-int/lit8 v36, v26, -0x1

    aget v36, p3, v36

    aget v26, p3, v26

    mul-float v37, v21, v33

    mul-float v38, v17, v29

    add-float v37, v37, v38

    mul-float v21, v21, v29

    mul-float v17, v17, v33

    sub-float v17, v21, v17

    mul-float v21, v22, v34

    mul-float v29, v18, v30

    add-float v21, v21, v29

    mul-float v22, v22, v30

    mul-float v18, v18, v34

    sub-float v18, v22, v18

    mul-float v22, v23, v35

    mul-float v29, v19, v31

    add-float v22, v22, v29

    mul-float v23, v23, v31

    mul-float v19, v19, v35

    sub-float v19, v23, v19

    mul-float v23, v24, v36

    mul-float v29, v20, v26

    add-float v23, v23, v29

    mul-float v24, v24, v26

    mul-float v20, v20, v36

    sub-float v20, v24, v20

    add-float v24, v37, v23

    sub-float v23, v23, v37

    sub-float v26, v17, v20

    add-float v17, v17, v20

    add-float v20, v21, v22

    sub-float v21, v22, v21

    sub-float v22, v18, v19

    add-float v18, v18, v19

    const v19, 0x3e9e377a

    mul-float v19, v19, v24

    add-float v19, v19, v32

    const v29, -0x40b0e443

    mul-float v29, v29, v20

    add-float v19, v19, v29

    const v29, 0x3e9e377a

    mul-float v29, v29, v17

    add-float v29, v29, v28

    const v30, -0x40b0e443

    mul-float v30, v30, v18

    add-float v29, v29, v30

    const v30, -0x40b0e443

    mul-float v30, v30, v24

    add-float v30, v30, v32

    const v31, 0x3e9e377a

    mul-float v31, v31, v20

    add-float v30, v30, v31

    const v31, -0x40b0e443

    mul-float v31, v31, v17

    add-float v31, v31, v28

    const v33, 0x3e9e377a

    mul-float v33, v33, v18

    add-float v31, v31, v33

    const v33, 0x3f737871

    mul-float v33, v33, v26

    const v34, 0x3f167918

    mul-float v34, v34, v22

    add-float v33, v33, v34

    const v34, 0x3f737871

    mul-float v34, v34, v23

    const v35, 0x3f167918

    mul-float v35, v35, v21

    add-float v34, v34, v35

    const v35, 0x3f167918

    mul-float v26, v26, v35

    const v35, 0x3f737871

    mul-float v22, v22, v35

    sub-float v22, v26, v22

    const v26, 0x3f167918

    mul-float v23, v23, v26

    const v26, 0x3f737871

    mul-float v21, v21, v26

    sub-float v21, v23, v21

    add-int v23, v27, v8

    add-int v26, v25, v9

    add-int v35, v27, v10

    add-int v25, v25, v11

    add-int v27, v27, v12

    add-int/lit8 v36, v23, -0x1

    add-float v24, v24, v32

    add-float v20, v20, v24

    aput v20, p5, v36

    add-float v17, v17, v28

    add-float v17, v17, v18

    aput v17, p5, v23

    add-int/lit8 v17, v35, -0x1

    add-float v18, v19, v33

    aput v18, p5, v17

    add-int/lit8 v17, v26, -0x1

    sub-float v18, v19, v33

    aput v18, p5, v17

    add-float v17, v29, v34

    aput v17, p5, v35

    sub-float v17, v34, v29

    aput v17, p5, v26

    add-int/lit8 v17, v27, -0x1

    add-float v18, v30, v22

    aput v18, p5, v17

    add-int/lit8 v17, v25, -0x1

    sub-float v18, v30, v22

    aput v18, p5, v17

    add-float v17, v31, v21

    aput v17, p5, v27

    sub-float v17, v21, v31

    aput v17, p5, v25

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_a4

    :cond_21c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_8b
.end method

.method strictfp radfg(IIII[FI[FII)V
    .registers 37

    const v5, 0x40c90fdb

    move/from16 v0, p2

    int-to-float v6, v0

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v12, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v13, v5

    add-int/lit8 v5, p2, 0x1

    div-int/lit8 v14, v5, 0x2

    add-int/lit8 v5, p1, -0x1

    div-int/lit8 v15, v5, 0x2

    const/4 v5, 0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_1d4

    const/4 v5, 0x0

    :goto_21
    move/from16 v0, p4

    if-ge v5, v0, :cond_30

    add-int v6, p8, v5

    add-int v7, p6, v5

    aget v7, p5, v7

    aput v7, p7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_30
    const/4 v5, 0x1

    move v6, v5

    :goto_32
    move/from16 v0, p2

    if-ge v6, v0, :cond_51

    mul-int v5, v6, p3

    mul-int v7, v5, p1

    const/4 v5, 0x0

    :goto_3b
    move/from16 v0, p3

    if-ge v5, v0, :cond_4d

    mul-int v8, v5, p1

    add-int/2addr v8, v7

    add-int v9, p8, v8

    add-int v8, v8, p6

    aget v8, p5, v8

    aput v8, p7, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    :cond_4d
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_32

    :cond_51
    move/from16 v0, p3

    if-gt v15, v0, :cond_bd

    move/from16 v0, p1

    neg-int v6, v0

    const/4 v5, 0x1

    move v8, v5

    move v5, v6

    :goto_5b
    move/from16 v0, p2

    if-ge v8, v0, :cond_120

    add-int v9, v5, p1

    add-int/lit8 v6, v9, -0x1

    mul-int v5, v8, p3

    mul-int v10, v5, p1

    const/4 v5, 0x2

    move/from16 v26, v5

    move v5, v6

    move/from16 v6, v26

    :goto_6d
    move/from16 v0, p1

    if-ge v6, v0, :cond_b8

    add-int/lit8 v7, v5, 0x2

    add-int v5, v7, p9

    add-int v11, p6, v6

    add-int v16, p8, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v5, -0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v18, v0

    aget v18, v18, v5

    const/4 v5, 0x0

    :goto_8c
    move/from16 v0, p3

    if-ge v5, v0, :cond_b3

    mul-int v19, v5, p1

    add-int v19, v19, v10

    add-int v20, v16, v19

    add-int v19, v19, v11

    add-int/lit8 v21, v19, -0x1

    aget v21, p5, v21

    aget v19, p5, v19

    add-int/lit8 v22, v20, -0x1

    mul-float v23, v17, v21

    mul-float v24, v18, v19

    add-float v23, v23, v24

    aput v23, p7, v22

    mul-float v19, v19, v17

    mul-float v21, v21, v18

    sub-float v19, v19, v21

    aput v19, p7, v20

    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    :cond_b3
    add-int/lit8 v5, v6, 0x2

    move v6, v5

    move v5, v7

    goto :goto_6d

    :cond_b8
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v9

    goto :goto_5b

    :cond_bd
    move/from16 v0, p1

    neg-int v6, v0

    const/4 v5, 0x1

    move v8, v5

    move v5, v6

    :goto_c3
    move/from16 v0, p2

    if-ge v8, v0, :cond_120

    add-int v9, v5, p1

    mul-int v5, v8, p3

    mul-int v10, v5, p1

    const/4 v5, 0x0

    move v7, v5

    :goto_cf
    move/from16 v0, p3

    if-ge v7, v0, :cond_11b

    add-int/lit8 v6, v9, -0x1

    mul-int v5, v7, p1

    add-int v11, v5, v10

    const/4 v5, 0x2

    :goto_da
    move/from16 v0, p1

    if-ge v5, v0, :cond_117

    add-int/lit8 v6, v6, 0x2

    add-int v16, v6, p9

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v17, v0

    add-int/lit8 v18, v16, -0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v18, v0

    aget v16, v18, v16

    add-int v18, p8, v5

    add-int v18, v18, v11

    add-int v19, p6, v5

    add-int v19, v19, v11

    add-int/lit8 v20, v19, -0x1

    aget v20, p5, v20

    aget v19, p5, v19

    add-int/lit8 v21, v18, -0x1

    mul-float v22, v17, v20

    mul-float v23, v16, v19

    add-float v22, v22, v23

    aput v22, p7, v21

    mul-float v17, v17, v19

    mul-float v16, v16, v20

    sub-float v16, v17, v16

    aput v16, p7, v18

    add-int/lit8 v5, v5, 0x2

    goto :goto_da

    :cond_117
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_cf

    :cond_11b
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v9

    goto :goto_c3

    :cond_120
    move/from16 v0, p3

    if-lt v15, v0, :cond_17c

    const/4 v5, 0x1

    move v7, v5

    :goto_126
    if-ge v7, v14, :cond_1e1

    sub-int v5, p2, v7

    mul-int v6, v7, p3

    mul-int v8, v6, p1

    mul-int v5, v5, p3

    mul-int v9, v5, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_134
    move/from16 v0, p3

    if-ge v6, v0, :cond_178

    mul-int v5, v6, p1

    add-int v10, v5, v8

    mul-int v5, v6, p1

    add-int v11, v5, v9

    const/4 v5, 0x2

    :goto_141
    move/from16 v0, p1

    if-ge v5, v0, :cond_174

    add-int v16, p6, v5

    add-int v17, p8, v5

    add-int v18, v16, v10

    add-int v16, v16, v11

    add-int v19, v17, v10

    add-int v17, v17, v11

    add-int/lit8 v20, v19, -0x1

    aget v20, p7, v20

    aget v19, p7, v19

    add-int/lit8 v21, v17, -0x1

    aget v21, p7, v21

    aget v17, p7, v17

    add-int/lit8 v22, v18, -0x1

    add-float v23, v20, v21

    aput v23, p5, v22

    add-float v22, v19, v17

    aput v22, p5, v18

    add-int/lit8 v18, v16, -0x1

    sub-float v17, v19, v17

    aput v17, p5, v18

    sub-float v17, v21, v20

    aput v17, p5, v16

    add-int/lit8 v5, v5, 0x2

    goto :goto_141

    :cond_174
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_134

    :cond_178
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_126

    :cond_17c
    const/4 v5, 0x1

    move v7, v5

    :goto_17e
    if-ge v7, v14, :cond_1e1

    sub-int v5, p2, v7

    mul-int v6, v7, p3

    mul-int v8, v6, p1

    mul-int v5, v5, p3

    mul-int v9, v5, p1

    const/4 v5, 0x2

    move v6, v5

    :goto_18c
    move/from16 v0, p1

    if-ge v6, v0, :cond_1d0

    add-int v10, p6, v6

    add-int v11, p8, v6

    const/4 v5, 0x0

    :goto_195
    move/from16 v0, p3

    if-ge v5, v0, :cond_1cc

    mul-int v16, v5, p1

    add-int v16, v16, v8

    mul-int v17, v5, p1

    add-int v17, v17, v9

    add-int v18, v10, v16

    add-int v19, v10, v17

    add-int v16, v16, v11

    add-int v17, v17, v11

    add-int/lit8 v20, v16, -0x1

    aget v20, p7, v20

    aget v16, p7, v16

    add-int/lit8 v21, v17, -0x1

    aget v21, p7, v21

    aget v17, p7, v17

    add-int/lit8 v22, v18, -0x1

    add-float v23, v20, v21

    aput v23, p5, v22

    add-float v22, v16, v17

    aput v22, p5, v18

    add-int/lit8 v18, v19, -0x1

    sub-float v16, v16, v17

    aput v16, p5, v18

    sub-float v16, v21, v20

    aput v16, p5, v19

    add-int/lit8 v5, v5, 0x1

    goto :goto_195

    :cond_1cc
    add-int/lit8 v5, v6, 0x2

    move v6, v5

    goto :goto_18c

    :cond_1d0
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_17e

    :cond_1d4
    move-object/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e1
    const/4 v5, 0x1

    move v6, v5

    :goto_1e3
    if-ge v6, v14, :cond_215

    sub-int v5, p2, v6

    mul-int v7, v6, p3

    mul-int v7, v7, p1

    mul-int v5, v5, p3

    mul-int v8, v5, p1

    const/4 v5, 0x0

    :goto_1f0
    move/from16 v0, p3

    if-ge v5, v0, :cond_211

    mul-int v9, v5, p1

    add-int/2addr v9, v7

    mul-int v10, v5, p1

    add-int/2addr v10, v8

    add-int v11, p8, v9

    add-int v16, p8, v10

    aget v11, p7, v11

    aget v16, p7, v16

    add-int v9, v9, p6

    add-float v17, v11, v16

    aput v17, p5, v9

    add-int v9, p6, v10

    sub-float v10, v16, v11

    aput v10, p5, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f0

    :cond_211
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1e3

    :cond_215
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    add-int/lit8 v5, p2, -0x1

    mul-int v16, v5, p4

    const/4 v5, 0x1

    move v11, v5

    move v5, v7

    :goto_21f
    if-ge v11, v14, :cond_29b

    sub-int v6, p2, v11

    mul-float v7, v12, v5

    mul-float v8, v13, v10

    sub-float/2addr v7, v8

    mul-float v8, v12, v10

    mul-float/2addr v5, v13

    add-float v10, v8, v5

    mul-int v17, v11, p4

    mul-int v18, v6, p4

    const/4 v5, 0x0

    :goto_232
    move/from16 v0, p4

    if-ge v5, v0, :cond_254

    add-int v6, p8, v5

    add-int v8, p6, v5

    add-int v9, v6, v17

    aget v19, p5, v8

    add-int v20, v8, p4

    aget v20, p5, v20

    mul-float v20, v20, v7

    add-float v19, v19, v20

    aput v19, p7, v9

    add-int v6, v6, v18

    add-int v8, v8, v16

    aget v8, p5, v8

    mul-float/2addr v8, v10

    aput v8, p7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_232

    :cond_254
    const/4 v5, 0x2

    move v6, v5

    move v9, v10

    move v5, v7

    :goto_258
    if-ge v6, v14, :cond_296

    sub-int v19, p2, v6

    mul-float v8, v7, v5

    mul-float v20, v10, v9

    sub-float v8, v8, v20

    mul-float/2addr v9, v7

    mul-float/2addr v5, v10

    add-float/2addr v9, v5

    mul-int v20, v6, p4

    mul-int v19, v19, p4

    const/4 v5, 0x0

    :goto_26a
    move/from16 v0, p4

    if-ge v5, v0, :cond_291

    add-int v21, p8, v5

    add-int v22, p6, v5

    add-int v23, v21, v17

    aget v24, p7, v23

    add-int v25, v22, v20

    aget v25, p5, v25

    mul-float v25, v25, v8

    add-float v24, v24, v25

    aput v24, p7, v23

    add-int v21, v21, v18

    aget v23, p7, v21

    add-int v22, v22, v19

    aget v22, p5, v22

    mul-float v22, v22, v9

    add-float v22, v22, v23

    aput v22, p7, v21

    add-int/lit8 v5, v5, 0x1

    goto :goto_26a

    :cond_291
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v8

    goto :goto_258

    :cond_296
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move v5, v7

    goto :goto_21f

    :cond_29b
    const/4 v5, 0x1

    move v6, v5

    :goto_29d
    if-ge v6, v14, :cond_2b9

    mul-int v7, v6, p4

    const/4 v5, 0x0

    :goto_2a2
    move/from16 v0, p4

    if-ge v5, v0, :cond_2b5

    add-int v8, p8, v5

    aget v9, p7, v8

    add-int v10, p6, v5

    add-int/2addr v10, v7

    aget v10, p5, v10

    add-float/2addr v9, v10

    aput v9, p7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a2

    :cond_2b5
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_29d

    :cond_2b9
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_2df

    const/4 v5, 0x0

    move v6, v5

    :goto_2c1
    move/from16 v0, p3

    if-ge v6, v0, :cond_2ff

    mul-int v7, v6, p1

    mul-int v8, v7, p2

    const/4 v5, 0x0

    :goto_2ca
    move/from16 v0, p1

    if-ge v5, v0, :cond_2db

    add-int v9, p6, v5

    add-int/2addr v9, v8

    add-int v10, p8, v5

    add-int/2addr v10, v7

    aget v10, p7, v10

    aput v10, p5, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_2ca

    :cond_2db
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_2c1

    :cond_2df
    const/4 v5, 0x0

    move v6, v5

    :goto_2e1
    move/from16 v0, p1

    if-ge v6, v0, :cond_2ff

    const/4 v5, 0x0

    :goto_2e6
    move/from16 v0, p3

    if-ge v5, v0, :cond_2fb

    mul-int v7, v5, p1

    add-int v8, p6, v6

    mul-int v9, v7, p2

    add-int/2addr v8, v9

    add-int v9, p8, v6

    add-int/2addr v7, v9

    aget v7, p7, v7

    aput v7, p5, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e6

    :cond_2fb
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_2e1

    :cond_2ff
    mul-int v8, p2, p1

    const/4 v5, 0x1

    move v6, v5

    :goto_303
    if-ge v6, v14, :cond_33f

    sub-int v5, p2, v6

    mul-int/lit8 v7, v6, 0x2

    mul-int v9, v6, p3

    mul-int v9, v9, p1

    mul-int v5, v5, p3

    mul-int v10, v5, p1

    mul-int v7, v7, p1

    const/4 v5, 0x0

    :goto_314
    move/from16 v0, p3

    if-ge v5, v0, :cond_33b

    mul-int v11, v5, p1

    add-int v12, v11, v9

    add-int/2addr v11, v10

    mul-int v13, v5, v8

    add-int v16, p6, p1

    add-int/lit8 v16, v16, -0x1

    add-int v16, v16, v7

    sub-int v16, v16, p1

    add-int v16, v16, v13

    add-int v12, v12, p8

    aget v12, p7, v12

    aput v12, p5, v16

    add-int v12, p6, v7

    add-int/2addr v12, v13

    add-int v11, v11, p8

    aget v11, p7, v11

    aput v11, p5, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_314

    :cond_33b
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_303

    :cond_33f
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_345

    :cond_344
    return-void

    :cond_345
    move/from16 v0, p3

    if-lt v15, v0, :cond_3ad

    const/4 v5, 0x1

    move v7, v5

    :goto_34b
    if-ge v7, v14, :cond_344

    sub-int v5, p2, v7

    mul-int/lit8 v6, v7, 0x2

    mul-int v9, v7, p3

    mul-int v9, v9, p1

    mul-int v5, v5, p3

    mul-int v10, v5, p1

    mul-int v11, v6, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_35d
    move/from16 v0, p3

    if-ge v6, v0, :cond_3a9

    mul-int v12, v6, v8

    mul-int v13, v6, p1

    const/4 v5, 0x2

    :goto_366
    move/from16 v0, p1

    if-ge v5, v0, :cond_3a5

    sub-int v15, p1, v5

    add-int v16, p6, v5

    add-int v15, v15, p6

    add-int v17, p8, v5

    add-int v16, v16, v11

    add-int v16, v16, v12

    add-int/2addr v15, v11

    sub-int v15, v15, p1

    add-int/2addr v15, v12

    add-int v18, v17, v13

    add-int v18, v18, v9

    add-int v17, v17, v13

    add-int v17, v17, v10

    add-int/lit8 v19, v18, -0x1

    aget v19, p7, v19

    aget v18, p7, v18

    add-int/lit8 v20, v17, -0x1

    aget v20, p7, v20

    aget v17, p7, v17

    add-int/lit8 v21, v16, -0x1

    add-float v22, v19, v20

    aput v22, p5, v21

    add-int/lit8 v21, v15, -0x1

    sub-float v19, v19, v20

    aput v19, p5, v21

    add-float v19, v18, v17

    aput v19, p5, v16

    sub-float v16, v17, v18

    aput v16, p5, v15

    add-int/lit8 v5, v5, 0x2

    goto :goto_366

    :cond_3a5
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_35d

    :cond_3a9
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_34b

    :cond_3ad
    const/4 v5, 0x1

    move v7, v5

    :goto_3af
    if-ge v7, v14, :cond_344

    sub-int v5, p2, v7

    mul-int/lit8 v6, v7, 0x2

    mul-int v9, v7, p3

    mul-int v9, v9, p1

    mul-int v5, v5, p3

    mul-int v10, v5, p1

    mul-int v11, v6, p1

    const/4 v5, 0x2

    move v6, v5

    :goto_3c1
    move/from16 v0, p1

    if-ge v6, v0, :cond_40f

    sub-int v5, p1, v6

    add-int v12, p6, v6

    add-int v13, p6, v5

    add-int v15, p8, v6

    const/4 v5, 0x0

    :goto_3ce
    move/from16 v0, p3

    if-ge v5, v0, :cond_40b

    mul-int v16, v5, v8

    mul-int v17, v5, p1

    add-int v18, v12, v11

    add-int v18, v18, v16

    add-int v19, v13, v11

    sub-int v19, v19, p1

    add-int v16, v16, v19

    add-int v19, v15, v17

    add-int v19, v19, v9

    add-int v17, v17, v15

    add-int v17, v17, v10

    add-int/lit8 v20, v19, -0x1

    aget v20, p7, v20

    aget v19, p7, v19

    add-int/lit8 v21, v17, -0x1

    aget v21, p7, v21

    aget v17, p7, v17

    add-int/lit8 v22, v18, -0x1

    add-float v23, v20, v21

    aput v23, p5, v22

    add-int/lit8 v22, v16, -0x1

    sub-float v20, v20, v21

    aput v20, p5, v22

    add-float v20, v19, v17

    aput v20, p5, v18

    sub-float v17, v17, v19

    aput v17, p5, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_3ce

    :cond_40b
    add-int/lit8 v5, v6, 0x2

    move v6, v5

    goto :goto_3c1

    :cond_40f
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_3af
.end method

.method public strictfp realForward([F)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    return-void
.end method

.method public strictfp realForward([FI)V
    .registers 10

    const/4 v2, 0x4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_72

    goto :goto_6

    :pswitch_15
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-le v0, v2, :cond_4a

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftfsub(I[FI[II[F)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->rftfsub(I[FII[FI)V

    :cond_35
    :goto_35
    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    sub-float/2addr v0, v1

    aget v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    add-float/2addr v1, v2

    aput v1, p1, p2

    add-int/lit8 v1, p2, 0x1

    aput v0, p1, v1

    goto :goto_6

    :cond_4a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ne v0, v2, :cond_35

    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftx020([FI)V

    goto :goto_35

    :pswitch_52
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->rfftf([FI)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v0, v0, -0x1

    :goto_59
    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    add-int v1, p2, v0

    aget v2, p1, v1

    add-int/lit8 v3, v1, -0x1

    aget v3, p1, v3

    aput v3, p1, v1

    add-int/lit8 v1, v1, -0x1

    aput v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_59

    :pswitch_6d
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bluestein_real_forward([FI)V

    goto :goto_6

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_15
        :pswitch_52
        :pswitch_6d
    .end packed-switch
.end method

.method public strictfp realForwardFull([F)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForwardFull([FI)V

    return-void
.end method

.method public strictfp realForwardFull([FI)V
    .registers 15

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v5, v2, 0x2

    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_d6

    :goto_14
    return-void

    :pswitch_15
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    if-le v8, v1, :cond_64

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v2

    if-le v1, v2, :cond_64

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    div-int v10, v1, v8

    move v7, v0

    :goto_31
    if-ge v7, v8, :cond_52

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_4f

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v3, v0, 0x2

    :goto_3d
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$1;

    move-object v1, p0

    move v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$1;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;IIII[F)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_31

    :cond_4f
    add-int v3, v2, v10

    goto :goto_3d

    :cond_52
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_55
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/2addr v0, p2

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    neg-float v1, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    aput v11, p1, v0

    goto :goto_14

    :cond_64
    :goto_64
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_55

    mul-int/lit8 v1, v0, 0x2

    sub-int v2, v5, v1

    rem-int/2addr v2, v5

    add-int/2addr v2, p2

    add-int v3, p2, v1

    aget v3, p1, v3

    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    aget v1, p1, v1

    neg-float v1, v1

    aput v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    :pswitch_83
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->rfftf([FI)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_ab

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v0, v0, 0x2

    :goto_90
    move v2, v1

    :goto_91
    if-ge v2, v0, :cond_b2

    add-int v3, p2, v5

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v4, p2

    add-int/lit8 v6, v3, 0x1

    aget v7, p1, v4

    neg-float v7, v7

    aput v7, p1, v6

    add-int/lit8 v4, v4, -0x1

    aget v4, p1, v4

    aput v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :cond_ab
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    goto :goto_90

    :cond_b2
    move v0, v1

    :goto_b3
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v1, :cond_ca

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/2addr v1, p2

    sub-int/2addr v1, v0

    add-int/lit8 v2, v1, 0x1

    aget v2, p1, v2

    add-int/lit8 v3, v1, 0x1

    aget v4, p1, v1

    aput v4, p1, v3

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    :cond_ca
    add-int/lit8 v0, p2, 0x1

    aput v11, p1, v0

    goto/16 :goto_14

    :pswitch_d0
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bluestein_real_full([FII)V

    goto/16 :goto_14

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_15
        :pswitch_83
        :pswitch_d0
    .end packed-switch
.end method

.method public strictfp realInverse([FIZ)V
    .registers 12

    const/4 v5, 0x4

    const/4 v7, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_92

    goto :goto_7

    :pswitch_16
    add-int/lit8 v0, p2, 0x1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    aget v3, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget v4, p1, v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    aput v1, p1, v0

    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    sub-float/2addr v0, v1

    aput v0, p1, p2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-le v0, v5, :cond_5a

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->rftfsub(I[FII[FI)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftbsub(I[FI[II[F)V

    :cond_4f
    :goto_4f
    if-eqz p3, :cond_7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, v0, p1, p2, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->scale(F[FIZ)V

    goto :goto_7

    :cond_5a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ne v0, v5, :cond_4f

    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftxc020([FI)V

    goto :goto_4f

    :pswitch_62
    const/4 v0, 0x2

    :goto_63
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v1, :cond_78

    add-int v1, p2, v0

    add-int/lit8 v2, v1, -0x1

    aget v2, p1, v2

    add-int/lit8 v3, v1, -0x1

    aget v4, p1, v1

    aput v4, p1, v3

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    :cond_78
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->rfftb([FI)V

    if-eqz p3, :cond_7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1, p2, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->scale(F[FIZ)V

    goto :goto_7

    :pswitch_84
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bluestein_real_inverse([FI)V

    if-eqz p3, :cond_7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1, p2, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->scale(F[FIZ)V

    goto/16 :goto_7

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_16
        :pswitch_62
        :pswitch_84
    .end packed-switch
.end method

.method public strictfp realInverse([FZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse([FIZ)V

    return-void
.end method

.method protected strictfp realInverse2([FIZ)V
    .registers 12

    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v7, 0x0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ne v1, v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    sget-object v1, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_c6

    goto :goto_7

    :pswitch_16
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-le v0, v3, :cond_53

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftfsub(I[FI[II[F)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->rftbsub(I[FII[FI)V

    :cond_36
    :goto_36
    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    sub-float/2addr v0, v1

    aget v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget v2, p1, v2

    add-float/2addr v1, v2

    aput v1, p1, p2

    add-int/lit8 v1, p2, 0x1

    aput v0, p1, v1

    if-eqz p3, :cond_7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1, p2, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->scale(F[FIZ)V

    goto :goto_7

    :cond_53
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ne v0, v3, :cond_36

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->w:[F

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->cftbsub(I[FI[II[F)V

    goto :goto_36

    :pswitch_66
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->rfftf([FI)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v1, v1, -0x1

    :goto_6d
    const/4 v2, 0x2

    if-lt v1, v2, :cond_81

    add-int v2, p2, v1

    aget v3, p1, v2

    add-int/lit8 v4, v2, -0x1

    aget v4, p1, v4

    aput v4, p1, v2

    add-int/lit8 v2, v2, -0x1

    aput v3, p1, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_6d

    :cond_81
    if-eqz p3, :cond_89

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v1, v1

    invoke-direct {p0, v1, p1, p2, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->scale(F[FIZ)V

    :cond_89
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_a2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    :goto_93
    if-ge v0, v1, :cond_7

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x1

    aget v3, p1, v2

    neg-float v3, v3

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    :cond_a2
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v1, v0, 0x2

    move v0, v7

    :goto_a9
    if-ge v0, v1, :cond_7

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x1

    aget v3, p1, v2

    neg-float v3, v3

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    :pswitch_b8
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bluestein_real_inverse2([FI)V

    if-eqz p3, :cond_7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1, p2, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->scale(F[FIZ)V

    goto/16 :goto_7

    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_16
        :pswitch_66
        :pswitch_b8
    .end packed-switch
.end method

.method public strictfp realInverseFull([FIZ)V
    .registers 16

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v5, v2, 0x2

    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$FloatFFT_1D$Plans:[I

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;

    invoke-virtual {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$Plans;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_ea

    :cond_14
    :goto_14
    return-void

    :pswitch_15
    invoke-virtual {p0, p1, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    if-le v8, v1, :cond_64

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v2

    if-le v1, v2, :cond_64

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    div-int v10, v1, v8

    move v7, v0

    :goto_31
    if-ge v7, v8, :cond_52

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_4f

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v3, v0, 0x2

    :goto_3d
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;

    move-object v1, p0

    move v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D$2;-><init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;IIII[F)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_31

    :cond_4f
    add-int v3, v2, v10

    goto :goto_3d

    :cond_52
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_55
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/2addr v0, p2

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    neg-float v1, v1

    aput v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    aput v11, p1, v0

    goto :goto_14

    :cond_64
    :goto_64
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_55

    mul-int/lit8 v1, v0, 0x2

    sub-int v2, v5, v1

    rem-int/2addr v2, v5

    add-int/2addr v2, p2

    add-int v3, p2, v1

    aget v3, p1, v3

    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    aget v1, p1, v1

    neg-float v1, v1

    aput v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    :pswitch_83
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->rfftf([FI)V

    if-eqz p3, :cond_8e

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v2, v2

    invoke-direct {p0, v2, p1, p2, v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->scale(F[FIZ)V

    :cond_8e
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_b8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int/lit8 v0, v0, 0x2

    :goto_98
    move v2, v1

    :goto_99
    if-ge v2, v0, :cond_bf

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p2

    add-int v4, p2, v5

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v4, v6

    aget v6, p1, v3

    neg-float v6, v6

    aput v6, p1, v3

    add-int/lit8 v6, v4, 0x1

    aget v7, p1, v3

    neg-float v7, v7

    aput v7, p1, v6

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    aput v3, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    :cond_b8
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    goto :goto_98

    :cond_bf
    move v0, v1

    :goto_c0
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    if-ge v0, v1, :cond_d7

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/2addr v1, p2

    sub-int/2addr v1, v0

    add-int/lit8 v2, v1, 0x1

    aget v2, p1, v2

    add-int/lit8 v3, v1, 0x1

    aget v4, p1, v1

    aput v4, p1, v3

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    :cond_d7
    add-int/lit8 v0, p2, 0x1

    aput v11, p1, v0

    goto/16 :goto_14

    :pswitch_dd
    invoke-direct {p0, p1, p2, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->bluestein_real_full([FII)V

    if-eqz p3, :cond_14

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v0, v0

    invoke-direct {p0, v0, p1, p2, v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->scale(F[FIZ)V

    goto/16 :goto_14

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_15
        :pswitch_83
        :pswitch_dd
    .end packed-switch
.end method

.method public strictfp realInverseFull([FZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->realInverseFull([FIZ)V

    return-void
.end method

.method strictfp rfftb([FI)V
    .registers 29

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    new-array v7, v2, [F

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v23, v2, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v3, v23, 0x1

    aget v2, v2, v3

    float-to-int v0, v2

    move/from16 v24, v0

    const/16 v20, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v2, 0x1

    move/from16 v21, v2

    :goto_29
    move/from16 v0, v21

    move/from16 v1, v24

    if-gt v0, v1, :cond_100

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v3, v21, 0x1

    add-int v3, v3, v23

    aget v2, v2, v3

    float-to-int v0, v2

    move/from16 v25, v0

    mul-int v22, v25, v4

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int v3, v2, v22

    mul-int v14, v3, v4

    packed-switch v25, :pswitch_data_114

    if-nez v20, :cond_ec

    const/16 v18, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move/from16 v12, v25

    move v13, v4

    move-object/from16 v15, p1

    move/from16 v16, p2

    move-object/from16 v17, v7

    move/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radbg(IIII[FI[FII)V

    :goto_5e
    const/4 v2, 0x1

    if-ne v3, v2, :cond_110

    rsub-int/lit8 v2, v20, 0x1

    :goto_63
    add-int/lit8 v4, v25, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v9, v3

    add-int/lit8 v3, v21, 0x1

    move/from16 v21, v3

    move/from16 v20, v2

    move/from16 v4, v22

    goto :goto_29

    :pswitch_70
    if-nez v20, :cond_7f

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radb2(II[FI[FII)V

    :goto_7c
    rsub-int/lit8 v2, v20, 0x1

    goto :goto_63

    :cond_7f
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radb2(II[FI[FII)V

    goto :goto_7c

    :pswitch_8f
    if-nez v20, :cond_9e

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radb3(II[FI[FII)V

    :goto_9b
    rsub-int/lit8 v2, v20, 0x1

    goto :goto_63

    :cond_9e
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radb3(II[FI[FII)V

    goto :goto_9b

    :pswitch_ae
    if-nez v20, :cond_bd

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radb4(II[FI[FII)V

    :goto_ba
    rsub-int/lit8 v2, v20, 0x1

    goto :goto_63

    :cond_bd
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radb4(II[FI[FII)V

    goto :goto_ba

    :pswitch_cd
    if-nez v20, :cond_dc

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radb5(II[FI[FII)V

    :goto_d9
    rsub-int/lit8 v2, v20, 0x1

    goto :goto_63

    :cond_dc
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radb5(II[FI[FII)V

    goto :goto_d9

    :cond_ec
    const/16 v16, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move/from16 v12, v25

    move v13, v4

    move-object v15, v7

    move-object/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radbg(IIII[FI[FII)V

    goto/16 :goto_5e

    :cond_100
    if-eqz v20, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v7, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_7

    :cond_110
    move/from16 v2, v20

    goto/16 :goto_63

    :pswitch_data_114
    .packed-switch 0x2
        :pswitch_70
        :pswitch_8f
        :pswitch_ae
        :pswitch_cd
    .end packed-switch
.end method

.method strictfp rfftf([FI)V
    .registers 26

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    new-array v7, v2, [F

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v21, v2, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v3, v21, 0x1

    aget v2, v2, v3

    float-to-int v0, v2

    move/from16 v22, v0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    add-int/lit8 v9, v21, -0x1

    const/4 v2, 0x1

    move/from16 v20, v2

    move v2, v3

    move v3, v4

    :goto_2b
    move/from16 v0, v20

    move/from16 v1, v22

    if-gt v0, v1, :cond_108

    sub-int v4, v22, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v4, v4, 0x2

    add-int v4, v4, v21

    aget v4, v5, v4

    float-to-int v12, v4

    div-int v4, v3, v12

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int v3, v5, v3

    mul-int v14, v3, v4

    add-int/lit8 v5, v12, -0x1

    mul-int/2addr v5, v3

    sub-int/2addr v9, v5

    rsub-int/lit8 v18, v2, 0x1

    packed-switch v12, :pswitch_data_11a

    const/4 v2, 0x1

    if-ne v3, v2, :cond_56

    rsub-int/lit8 v18, v18, 0x1

    :cond_56
    if-nez v18, :cond_f5

    const/16 v18, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v13, v4

    move-object/from16 v15, p1

    move/from16 v16, p2

    move-object/from16 v17, v7

    move/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radfg(IIII[FI[FII)V

    const/4 v2, 0x1

    :goto_6a
    add-int/lit8 v3, v20, 0x1

    move/from16 v20, v3

    move v3, v4

    goto :goto_2b

    :pswitch_70
    if-nez v18, :cond_7f

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radf2(II[FI[FII)V

    move/from16 v2, v18

    goto :goto_6a

    :cond_7f
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radf2(II[FI[FII)V

    move/from16 v2, v18

    goto :goto_6a

    :pswitch_91
    if-nez v18, :cond_a0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radf3(II[FI[FII)V

    move/from16 v2, v18

    goto :goto_6a

    :cond_a0
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radf3(II[FI[FII)V

    move/from16 v2, v18

    goto :goto_6a

    :pswitch_b2
    if-nez v18, :cond_c1

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radf4(II[FI[FII)V

    move/from16 v2, v18

    goto :goto_6a

    :cond_c1
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radf4(II[FI[FII)V

    move/from16 v2, v18

    goto :goto_6a

    :pswitch_d3
    if-nez v18, :cond_e2

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radf5(II[FI[FII)V

    move/from16 v2, v18

    goto :goto_6a

    :cond_e2
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radf5(II[FI[FII)V

    move/from16 v2, v18

    goto/16 :goto_6a

    :cond_f5
    const/16 v16, 0x0

    move-object/from16 v10, p0

    move v11, v3

    move v13, v4

    move-object v15, v7

    move-object/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, v9

    invoke-virtual/range {v10 .. v19}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->radfg(IIII[FI[FII)V

    const/4 v2, 0x0

    goto/16 :goto_6a

    :cond_108
    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v7, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_7

    nop

    :pswitch_data_11a
    .packed-switch 0x2
        :pswitch_70
        :pswitch_91
        :pswitch_b2
        :pswitch_d3
    .end packed-switch
.end method

.method strictfp rffti()V
    .registers 24

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    :cond_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    mul-int/lit8 v11, v2, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_15
    add-int/lit8 v6, v4, 0x1

    const/4 v4, 0x4

    if-gt v6, v4, :cond_2d

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->factors:[I

    add-int/lit8 v5, v6, -0x1

    aget v4, v4, v5

    move v5, v4

    move v4, v3

    :goto_22
    div-int v3, v2, v5

    mul-int v7, v5, v3

    sub-int v7, v2, v7

    if-eqz v7, :cond_32

    move v3, v4

    move v4, v6

    goto :goto_15

    :cond_2d
    add-int/lit8 v4, v5, 0x2

    move v5, v4

    move v4, v3

    goto :goto_22

    :cond_32
    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v7, v2, 0x1

    add-int/2addr v7, v11

    int-to-float v8, v5

    aput v8, v4, v7

    const/4 v4, 0x2

    if-ne v5, v4, :cond_67

    const/4 v4, 0x1

    if-eq v2, v4, :cond_67

    const/4 v4, 0x2

    :goto_45
    if-gt v4, v2, :cond_5d

    sub-int v7, v2, v4

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v11

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v9, v7, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    aget v7, v10, v7

    aput v7, v8, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :cond_5d
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v7, v11, 0x2

    const/high16 v8, 0x40000000    # 2.0f

    aput v8, v4, v7

    :cond_67
    const/4 v4, 0x1

    if-ne v3, v4, :cond_104

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v4, v4

    aput v4, v3, v11

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v4, v11, 0x1

    int-to-float v5, v2

    aput v5, v3, v4

    const v3, 0x40c90fdb

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    int-to-float v4, v4

    div-float v12, v3, v4

    const/4 v5, 0x0

    add-int/lit8 v13, v2, -0x1

    const/4 v2, 0x1

    if-eqz v13, :cond_7

    const/4 v3, 0x1

    move v8, v2

    move v10, v3

    :goto_91
    if-gt v10, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    add-int/lit8 v3, v10, 0x1

    add-int/2addr v3, v11

    aget v2, v2, v3

    float-to-int v3, v2

    const/4 v2, 0x0

    mul-int v9, v8, v3

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    div-int v14, v4, v9

    add-int/lit8 v15, v3, -0x1

    const/4 v3, 0x1

    move v7, v3

    :goto_aa
    if-gt v7, v15, :cond_ff

    add-int v6, v2, v8

    int-to-float v2, v6

    mul-float v16, v2, v12

    const/4 v3, 0x0

    const/4 v2, 0x3

    move v4, v5

    :goto_b4
    if-gt v2, v14, :cond_f9

    add-int/lit8 v4, v4, 0x2

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v3, v3, v17

    mul-float v17, v3, v16

    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->n:I

    move/from16 v18, v0

    add-int v18, v18, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v19, v0

    add-int/lit8 v20, v18, -0x2

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->wtable_r:[F

    move-object/from16 v19, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v17, v0

    aput v17, v19, v18

    add-int/lit8 v2, v2, 0x2

    goto :goto_b4

    :cond_f9
    add-int/2addr v5, v14

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v2, v6

    goto :goto_aa

    :cond_ff
    add-int/lit8 v2, v10, 0x1

    move v8, v9

    move v10, v2

    goto :goto_91

    :cond_104
    move v4, v2

    move v2, v3

    goto/16 :goto_22
.end method
