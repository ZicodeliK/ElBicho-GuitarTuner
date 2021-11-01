.class public Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;,
        Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;
    }
.end annotation


# static fields
.field private static final PI:D = 3.141592653589793

.field private static final TWO_PI:D = 6.283185307179586

.field private static final factors:[I


# instance fields
.field private bk1:[D

.field private bk2:[D

.field private ip:[I

.field private n:I

.field private nBluestein:I

.field private nc:I

.field private nw:I

.field private plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

.field private w:[D

.field private wtable:[D

.field private wtable_r:[D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

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

.method public constructor <init>(I)V
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
    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {p1}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_be

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    invoke-static {p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->getReminder(I[I)I

    move-result v0

    const/16 v1, 0xd3

    if-lt v0, v1, :cond_a3

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->BLUESTEIN:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->nextPow2(I)I

    move-result v0

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

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

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v1, v1, v7

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    shl-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_82

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makewt(I)V

    :cond_82
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v0, v0, v4

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    shl-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_9f

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v0, v1, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makect(I[DI)V

    :cond_9f
    invoke-direct {p0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluesteini()V

    :cond_a2
    :goto_a2
    return-void

    :cond_a3
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->MIXED_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0xf

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0xf

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    invoke-virtual {p0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cffti()V

    invoke-virtual {p0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rffti()V

    goto :goto_a2

    :cond_be
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->SPLIT_RADIX:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

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

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    new-array v0, p1, [D

    iput-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v1, v1, v7

    iput v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    shl-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_fb

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makewt(I)V

    :cond_fb
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v0, v0, v4

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    shl-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_a2

    shr-int/lit8 v0, p1, 0x2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    invoke-direct {p0, v0, v1, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makect(I[DI)V

    goto :goto_a2
.end method

.method static synthetic access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    return-object v0
.end method

.method static synthetic access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D
    .registers 2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    return-object v0
.end method

.method static synthetic access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;I[DI[DI)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    return-void
.end method

.method static synthetic access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DII[D)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    return-void
.end method

.method static synthetic access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DII[D)I
    .registers 9

    invoke-direct/range {p0 .. p7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfttree(III[DII[D)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;I[DI[DI)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    return-void
.end method

.method private bitrv2(I[I[DI)V
    .registers 23

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

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/2addr v6, v4

    sub-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/2addr v6, v3

    add-int/lit8 v7, v7, 0x2

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    sub-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    sub-int/2addr v6, v4

    add-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    sub-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v3

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/2addr v6, v4

    sub-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    sub-int/2addr v6, v3

    add-int/lit8 v7, v7, -0x2

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    sub-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    sub-int/2addr v6, v4

    add-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    sub-int/2addr v6, v4

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    add-int v6, v6, p4

    add-int v7, v7, p4

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

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/2addr v6, v4

    add-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/2addr v6, v3

    add-int/lit8 v7, v7, 0x2

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    sub-int/2addr v6, v4

    sub-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v3

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/2addr v6, v4

    add-int/2addr v7, v4

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    sub-int/2addr v6, v3

    add-int/lit8 v7, v7, -0x2

    add-int v8, p4, v6

    add-int v9, p4, v7

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    sub-int/2addr v6, v4

    sub-int/2addr v7, v4

    add-int v6, v6, p4

    add-int v7, v7, p4

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

    goto/16 :goto_2f4

    :cond_443
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
    .registers 25

    const/4 v2, 0x1

    shr-int/lit8 v3, p1, 0x2

    move v4, v2

    :goto_4
    const/16 v2, 0x8

    if-le v3, v2, :cond_e

    shl-int/lit8 v2, v4, 0x1

    shr-int/lit8 v3, v3, 0x2

    move v4, v2

    goto :goto_4

    :cond_e
    shr-int/lit8 v5, p1, 0x1

    mul-int/lit8 v6, v4, 0x4

    const/16 v2, 0x8

    if-ne v3, v2, :cond_396

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    if-ge v3, v4, :cond_543

    mul-int/lit8 v7, v3, 0x4

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v3, :cond_284

    mul-int/lit8 v8, v2, 0x4

    add-int v9, v4, v3

    aget v9, p2, v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    add-int v9, v4, v2

    aget v9, p2, v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v7

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    add-int/2addr v8, v6

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    add-int/2addr v8, v6

    sub-int/2addr v9, v6

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    add-int/2addr v8, v6

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    add-int/2addr v8, v5

    add-int/lit8 v9, v9, 0x2

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    sub-int/2addr v8, v6

    mul-int/lit8 v10, v6, 0x2

    sub-int/2addr v9, v10

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    sub-int/2addr v8, v6

    add-int/2addr v9, v6

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    sub-int/2addr v8, v6

    mul-int/lit8 v10, v6, 0x2

    sub-int/2addr v9, v10

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v9, v5

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    add-int/2addr v8, v6

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    add-int/2addr v8, v6

    sub-int/2addr v9, v6

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    add-int/2addr v8, v6

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    sub-int/2addr v8, v5

    add-int/lit8 v9, v9, -0x2

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    sub-int/2addr v8, v6

    mul-int/lit8 v10, v6, 0x2

    sub-int/2addr v9, v10

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    sub-int/2addr v8, v6

    add-int/2addr v9, v6

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    sub-int/2addr v8, v6

    mul-int/lit8 v10, v6, 0x2

    sub-int/2addr v9, v10

    add-int v8, v8, p4

    add-int v9, v9, p4

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    neg-double v12, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d

    :cond_284
    add-int v2, v4, v3

    aget v2, p2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v7

    add-int/lit8 v7, v2, 0x2

    add-int/2addr v2, v5

    add-int v8, p4, v7

    add-int v9, p4, v2

    add-int/lit8 v10, v8, -0x1

    add-int/lit8 v11, v8, -0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aput-wide v11, p3, v10

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    neg-double v12, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/lit8 v8, v9, 0x3

    add-int/lit8 v9, v9, 0x3

    aget-wide v9, p3, v9

    neg-double v9, v9

    aput-wide v9, p3, v8

    add-int/2addr v7, v6

    mul-int/lit8 v8, v6, 0x2

    add-int/2addr v2, v8

    add-int v8, p4, v7

    add-int v9, p4, v2

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    neg-double v12, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/2addr v7, v6

    sub-int/2addr v2, v6

    add-int v8, p4, v7

    add-int v9, p4, v2

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    neg-double v12, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/lit8 v7, v7, -0x2

    sub-int/2addr v2, v5

    add-int v8, p4, v7

    add-int v9, p4, v2

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    neg-double v12, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v8, v5, 0x2

    add-int/2addr v2, v8

    add-int v8, p4, v7

    add-int v9, p4, v2

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    neg-double v12, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    sub-int v8, v5, v6

    sub-int/2addr v7, v8

    mul-int/lit8 v8, v6, 0x2

    add-int/lit8 v8, v8, -0x2

    add-int/2addr v2, v8

    add-int v7, v7, p4

    add-int v2, v2, p4

    add-int/lit8 v8, v7, -0x1

    add-int/lit8 v9, v7, -0x1

    aget-wide v9, p3, v9

    neg-double v9, v9

    aput-wide v9, p3, v8

    aget-wide v8, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget-wide v10, p3, v10

    neg-double v10, v10

    aget-wide v12, p3, v2

    add-int/lit8 v14, v2, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aput-wide v12, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v14, p3, v7

    aput-wide v8, p3, v2

    add-int/lit8 v7, v2, 0x1

    aput-wide v10, p3, v7

    add-int/lit8 v7, v2, 0x3

    add-int/lit8 v2, v2, 0x3

    aget-wide v8, p3, v2

    neg-double v8, v8

    aput-wide v8, p3, v7

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_18

    :cond_396
    const/4 v2, 0x0

    move v3, v2

    :goto_398
    if-ge v3, v4, :cond_543

    mul-int/lit8 v7, v3, 0x4

    const/4 v2, 0x0

    :goto_39d
    if-ge v2, v3, :cond_4d0

    mul-int/lit8 v8, v2, 0x4

    add-int v9, v4, v3

    aget v9, p2, v9

    add-int/2addr v8, v9

    add-int v9, v4, v2

    aget v9, p2, v9

    add-int/2addr v9, v7

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    add-int/2addr v8, v6

    add-int/2addr v9, v6

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    add-int/2addr v8, v5

    add-int/lit8 v9, v9, 0x2

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    sub-int/2addr v8, v6

    sub-int/2addr v9, v6

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v9, v5

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    add-int/2addr v8, v6

    add-int/2addr v9, v6

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    sub-int/2addr v8, v5

    add-int/lit8 v9, v9, -0x2

    add-int v10, p4, v8

    add-int v11, p4, v9

    aget-wide v12, p3, v10

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aget-wide v16, p3, v11

    add-int/lit8 v18, v11, 0x1

    aget-wide v18, p3, v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    aput-wide v16, p3, v10

    add-int/lit8 v10, v10, 0x1

    aput-wide v18, p3, v10

    aput-wide v12, p3, v11

    add-int/lit8 v10, v11, 0x1

    aput-wide v14, p3, v10

    sub-int/2addr v8, v6

    sub-int/2addr v9, v6

    add-int v8, v8, p4

    add-int v9, v9, p4

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    neg-double v12, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_39d

    :cond_4d0
    add-int v2, v4, v3

    aget v2, p2, v2

    add-int/2addr v2, v7

    add-int/lit8 v7, v2, 0x2

    add-int/2addr v2, v5

    add-int v8, p4, v7

    add-int v9, p4, v2

    add-int/lit8 v10, v8, -0x1

    add-int/lit8 v11, v8, -0x1

    aget-wide v11, p3, v11

    neg-double v11, v11

    aput-wide v11, p3, v10

    aget-wide v10, p3, v8

    add-int/lit8 v12, v8, 0x1

    aget-wide v12, p3, v12

    neg-double v12, v12

    aget-wide v14, p3, v9

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, p3, v16

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    aput-wide v14, p3, v8

    add-int/lit8 v8, v8, 0x1

    aput-wide v16, p3, v8

    aput-wide v10, p3, v9

    add-int/lit8 v8, v9, 0x1

    aput-wide v12, p3, v8

    add-int/lit8 v8, v9, 0x3

    add-int/lit8 v9, v9, 0x3

    aget-wide v9, p3, v9

    neg-double v9, v9

    aput-wide v9, p3, v8

    add-int/2addr v7, v6

    add-int/2addr v2, v6

    add-int v7, v7, p4

    add-int v2, v2, p4

    add-int/lit8 v8, v7, -0x1

    add-int/lit8 v9, v7, -0x1

    aget-wide v9, p3, v9

    neg-double v9, v9

    aput-wide v9, p3, v8

    aget-wide v8, p3, v7

    add-int/lit8 v10, v7, 0x1

    aget-wide v10, p3, v10

    neg-double v10, v10

    aget-wide v12, p3, v2

    add-int/lit8 v14, v2, 0x1

    aget-wide v14, p3, v14

    neg-double v14, v14

    aput-wide v12, p3, v7

    add-int/lit8 v7, v7, 0x1

    aput-wide v14, p3, v7

    aput-wide v8, p3, v2

    add-int/lit8 v7, v2, 0x1

    aput-wide v10, p3, v7

    add-int/lit8 v7, v2, 0x3

    add-int/lit8 v2, v2, 0x3

    aget-wide v8, p3, v2

    neg-double v8, v8

    aput-wide v8, p3, v7

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_398

    :cond_543
    return-void
.end method

.method private bluestein_complex([DII)V
    .registers 22

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v1, 0x2

    new-array v7, v1, [D

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_e2

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v2

    if-le v1, v2, :cond_e2

    const/4 v1, 0x2

    move/from16 v16, v1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/util/concurrent/Future;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

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

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_37
    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v6, p2

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

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

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v8, v1, v16

    const/4 v1, 0x0

    :goto_73
    move/from16 v0, v16

    if-ge v1, v0, :cond_95

    mul-int v5, v1, v8

    const/4 v2, 0x1

    if-ne v1, v2, :cond_92

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    :goto_80
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$4;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D)V

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

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v2, v1, v16

    const/4 v1, 0x0

    :goto_b7
    move/from16 v0, v16

    if-ge v1, v0, :cond_de

    mul-int v11, v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_db

    move-object/from16 v0, p0

    iget v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_c4
    new-instance v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;

    move-object/from16 v9, p0

    move/from16 v10, p3

    move/from16 v13, p2

    move-object/from16 v14, p1

    move-object v15, v7

    invoke-direct/range {v8 .. v15}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$5;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

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

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v1, v2, :cond_15d

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    add-int v5, p2, v3

    aget-wide v8, p1, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v6, v2

    mul-double/2addr v8, v10

    aget-wide v10, p1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v3

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v7, v2

    aget-wide v8, p1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v3

    mul-double/2addr v8, v10

    aget-wide v4, p1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v6, v2

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    aput-wide v4, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e5

    :cond_120
    const/4 v1, 0x0

    :goto_121
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v1, v2, :cond_15d

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    add-int v5, p2, v3

    aget-wide v8, p1, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v6, v2

    mul-double/2addr v8, v10

    aget-wide v10, p1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v12, v6, v3

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, v7, v2

    aget-wide v8, p1, v4

    neg-double v8, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v3

    mul-double/2addr v8, v10

    aget-wide v4, p1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v6, v2

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    aput-wide v4, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_121

    :cond_15d
    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    if-lez p3, :cond_1b0

    const/4 v1, 0x0

    :goto_178
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v1, v2, :cond_1e8

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    aget-wide v4, v7, v2

    neg-double v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v8, v6, v3

    mul-double/2addr v4, v8

    aget-wide v8, v7, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v6, v2

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    aget-wide v8, v7, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v6, v2

    mul-double/2addr v8, v10

    aget-wide v10, v7, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v6, v3

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, v7, v2

    aput-wide v4, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_178

    :cond_1b0
    const/4 v1, 0x0

    :goto_1b1
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v1, v2, :cond_1e8

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    aget-wide v4, v7, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v8, v6, v3

    mul-double/2addr v4, v8

    aget-wide v8, v7, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v6, v2

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    aget-wide v8, v7, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v6, v2

    mul-double/2addr v8, v10

    aget-wide v10, v7, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v6, v3

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v7, v2

    aput-wide v4, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b1

    :cond_1e8
    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    if-lez p3, :cond_23e

    const/4 v1, 0x0

    :goto_203
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v1, v2, :cond_e1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    add-int v5, p2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v6, v2

    aget-wide v10, v7, v2

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v6, v3

    aget-wide v12, v7, v3

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, p1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v3

    aget-wide v10, v7, v2

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v2

    aget-wide v2, v7, v3

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    aput-wide v2, p1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_203

    :cond_23e
    const/4 v1, 0x0

    :goto_23f
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v1, v2, :cond_e1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    add-int v5, p2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v6, v2

    aget-wide v10, v7, v2

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v6, v3

    aget-wide v12, v7, v3

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, p1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v3

    neg-double v8, v8

    aget-wide v10, v7, v2

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v4, v2

    aget-wide v2, v7, v3

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    aput-wide v2, p1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_23f
.end method

.method private bluestein_real_forward([DI)V
    .registers 15

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [D

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_f1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_f1

    const/4 v0, 0x2

    move v10, v0

    new-array v11, v10, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v8, v0, v10

    const/4 v0, 0x0

    move v7, v0

    :goto_1f
    if-ge v7, v10, :cond_3d

    mul-int v2, v7, v8

    const/4 v0, 0x1

    if-ne v7, v0, :cond_3a

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_28
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;

    move-object v1, p0

    move v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$9;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[D)V

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

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v4, v0, 0x2

    const/4 v6, 0x0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v2, v0, v10

    const/4 v0, 0x0

    move v1, v0

    :goto_55
    if-ge v1, v10, :cond_70

    mul-int v3, v1, v2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_6d

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    :goto_5e
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$10;

    invoke-direct {v4, p0, v3, v0, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$10;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[D)V

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
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v4, v0, 0x2

    const/4 v6, 0x0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_14f

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const/4 v2, 0x0

    aget-wide v2, v5, v2

    mul-double/2addr v0, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    const/4 v4, 0x1

    aget-wide v6, v5, v4

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v1, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v3, v5, v3

    mul-double/2addr v1, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v4, v4, 0x1

    aget-wide v3, v3, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v5, v6

    mul-double/2addr v3, v6

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    :goto_bd
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1dd

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v4, v1

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v2

    aget-wide v10, v5, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, p1, v3

    add-int v3, p2, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v4, v2

    neg-double v6, v6

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v1

    aget-wide v1, v5, v2

    mul-double/2addr v1, v8

    add-double/2addr v1, v6

    aput-wide v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    :cond_f1
    const/4 v0, 0x0

    :goto_f2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_112

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    aget-wide v6, p1, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v1

    mul-double/2addr v6, v8

    aput-wide v6, v5, v1

    aget-wide v3, p1, v3

    neg-double v3, v3

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v1, v2

    mul-double/2addr v3, v6

    aput-wide v3, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_f2

    :cond_112
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v4, v0, 0x2

    const/4 v6, 0x0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    const/4 v0, 0x0

    :goto_122
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_73

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, v5, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v6, v6, v2

    mul-double/2addr v3, v6

    aget-wide v6, v5, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    aget-wide v6, v5, v1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    aget-wide v8, v5, v2

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v5, v1

    aput-wide v3, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_122

    :cond_14f
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const/4 v2, 0x0

    aget-wide v2, v5, v2

    mul-double/2addr v0, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    const/4 v4, 0x1

    aget-wide v6, v5, v4

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v1, v1, v2

    neg-double v1, v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v5, v3

    mul-double/2addr v1, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v4, v4, -0x1

    aget-wide v3, v3, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v6, v5, v6

    mul-double/2addr v3, v6

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    :goto_185
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1bb

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v4, v1

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v2

    aget-wide v10, v5, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, p1, v3

    add-int v3, p2, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v4, v2

    neg-double v6, v6

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v1

    aget-wide v1, v5, v2

    mul-double/2addr v1, v8

    add-double/2addr v1, v6

    aput-wide v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_185

    :cond_1bb
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v5, v3

    mul-double/2addr v1, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v3, v3, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    :cond_1dd
    return-void
.end method

.method private bluestein_real_full([DII)V
    .registers 22

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v1, 0x2

    new-array v7, v1, [D

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_e2

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v2

    if-le v1, v2, :cond_e2

    const/4 v1, 0x2

    move/from16 v16, v1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/util/concurrent/Future;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

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

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_37
    new-instance v1, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v6, p2

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V

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

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v8, v1, v16

    const/4 v1, 0x0

    :goto_73
    move/from16 v0, v16

    if-ge v1, v0, :cond_95

    mul-int v5, v1, v8

    const/4 v2, 0x1

    if-ne v1, v2, :cond_92

    move-object/from16 v0, p0

    iget v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    :goto_80
    new-instance v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct/range {v2 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$7;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D)V

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

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v2, v1, v16

    const/4 v1, 0x0

    :goto_b7
    move/from16 v0, v16

    if-ge v1, v0, :cond_de

    mul-int v11, v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_db

    move-object/from16 v0, p0

    iget v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_c4
    new-instance v8, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;

    move-object/from16 v9, p0

    move/from16 v10, p3

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object v15, v7

    invoke-direct/range {v8 .. v15}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DI[D)V

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

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v1, v2, :cond_131

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v1

    aget-wide v5, p1, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v8, v2

    mul-double/2addr v5, v8

    aput-wide v5, v7, v2

    aget-wide v4, p1, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v2, v3

    mul-double/2addr v4, v8

    aput-wide v4, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e5

    :cond_10a
    const/4 v1, 0x0

    :goto_10b
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v1, v2, :cond_131

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v1

    aget-wide v5, p1, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v8, v2

    mul-double/2addr v5, v8

    aput-wide v5, v7, v2

    aget-wide v4, p1, v4

    neg-double v4, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v2, v3

    mul-double/2addr v4, v8

    aput-wide v4, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_10b

    :cond_131
    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    if-lez p3, :cond_184

    const/4 v1, 0x0

    :goto_14c
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v1, v2, :cond_1bc

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    aget-wide v4, v7, v2

    neg-double v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v8, v6, v3

    mul-double/2addr v4, v8

    aget-wide v8, v7, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v6, v2

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    aget-wide v8, v7, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v6, v2

    mul-double/2addr v8, v10

    aget-wide v10, v7, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v6, v3

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aput-wide v8, v7, v2

    aput-wide v4, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_14c

    :cond_184
    const/4 v1, 0x0

    :goto_185
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v1, v2, :cond_1bc

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    aget-wide v4, v7, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v8, v6, v3

    mul-double/2addr v4, v8

    aget-wide v8, v7, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v6, v2

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    aget-wide v8, v7, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v6, v2

    mul-double/2addr v8, v10

    aget-wide v10, v7, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v12, v6, v3

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v7, v2

    aput-wide v4, v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_185

    :cond_1bc
    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    move-object/from16 v0, p0

    iget v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    if-lez p3, :cond_212

    const/4 v1, 0x0

    :goto_1d7
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v1, v2, :cond_e1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v2

    aget-wide v8, v7, v2

    mul-double/2addr v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v8, v3

    aget-wide v10, v7, v3

    mul-double/2addr v8, v10

    sub-double/2addr v5, v8

    aput-wide v5, p1, v4

    add-int v4, p2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v3

    aget-wide v8, v7, v2

    mul-double/2addr v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v8, v2

    aget-wide v2, v7, v3

    mul-double/2addr v2, v8

    add-double/2addr v2, v5

    aput-wide v2, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d7

    :cond_212
    const/4 v1, 0x0

    :goto_213
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v1, v2, :cond_e1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p2, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v2

    aget-wide v8, v7, v2

    mul-double/2addr v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v8, v3

    aget-wide v10, v7, v3

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    aput-wide v5, p1, v4

    add-int v4, p2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v3

    neg-double v5, v5

    aget-wide v8, v7, v2

    mul-double/2addr v5, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v8, v2

    aget-wide v2, v7, v3

    mul-double/2addr v2, v8

    add-double/2addr v2, v5

    aput-wide v2, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_213
.end method

.method private bluestein_real_inverse([DI)V
    .registers 15

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [D

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_b4

    const/4 v0, 0x0

    aget-wide v3, p1, p2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v5, 0x0

    aget-wide v5, v1, v5

    mul-double/2addr v3, v5

    aput-wide v3, v2, v0

    const/4 v0, 0x1

    aget-wide v3, p1, p2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v5, 0x1

    aget-wide v5, v1, v5

    mul-double/2addr v3, v5

    aput-wide v3, v2, v0

    const/4 v0, 0x1

    :goto_23
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_56

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v3, v1, 0x1

    add-int v4, p2, v1

    add-int v5, p2, v3

    aget-wide v6, p1, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    aget-wide v8, p1, v5

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v10, v3

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v2, v1

    aget-wide v6, p1, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v3

    mul-double/2addr v6, v8

    aget-wide v4, p1, v5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v8, v1

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_56
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v1, p2, 0x1

    aget-wide v3, p1, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v5, v1, v5

    mul-double/2addr v3, v5

    aput-wide v3, v2, v0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, 0x1

    aget-wide v3, p1, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v5, v5, 0x1

    aget-wide v5, v1, v5

    mul-double/2addr v3, v5

    aput-wide v3, v2, v0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_7e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_1c8

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    sub-int/2addr v4, v1

    add-int/lit8 v5, v4, 0x1

    aget-wide v6, p1, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    aget-wide v8, p1, v5

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v10, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v2, v1

    aget-wide v6, p1, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v3

    mul-double/2addr v6, v8

    aget-wide v4, p1, v5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v8, v1

    mul-double/2addr v4, v8

    sub-double v4, v6, v4

    aput-wide v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    :cond_b4
    const/4 v0, 0x0

    aget-wide v3, p1, p2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v5, 0x0

    aget-wide v5, v1, v5

    mul-double/2addr v3, v5

    aput-wide v3, v2, v0

    const/4 v0, 0x1

    aget-wide v3, p1, p2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v5, 0x1

    aget-wide v5, v1, v5

    mul-double/2addr v3, v5

    aput-wide v3, v2, v0

    const/4 v0, 0x1

    :goto_cb
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_100

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v3, v1, 0x1

    add-int v4, p2, v1

    add-int v5, p2, v3

    aget-wide v6, p1, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    aget-wide v8, p1, v5

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v10, v3

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v2, v1

    aget-wide v6, p1, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v3

    mul-double/2addr v6, v8

    aget-wide v4, p1, v5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v8, v1

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_cb

    :cond_100
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-wide v3, p1, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v5, v1, v5

    mul-double/2addr v3, v5

    add-int/lit8 v1, p2, 0x1

    aget-wide v5, p1, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v7, v1, v7

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    aput-wide v3, v2, v0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-wide v3, p1, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v5, v1, v5

    mul-double/2addr v3, v5

    add-int/lit8 v1, p2, 0x1

    aget-wide v5, p1, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v7, v1, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    aput-wide v3, v2, v0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-wide v3, p1, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v5, v5, 0x1

    aget-wide v5, v1, v5

    mul-double/2addr v3, v5

    add-int/lit8 v1, p2, 0x1

    aget-wide v5, p1, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v7, v7, 0x2

    aget-wide v7, v1, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    aput-wide v3, v2, v0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-wide v3, p1, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v5, v5, 0x2

    aget-wide v5, v1, v5

    mul-double/2addr v3, v5

    add-int/lit8 v1, p2, 0x1

    aget-wide v5, p1, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v7, v7, 0x1

    aget-wide v7, v1, v7

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    aput-wide v3, v2, v0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    :goto_192
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_1c8

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    sub-int/2addr v4, v1

    add-int/lit8 v5, v4, 0x1

    aget-wide v6, p1, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    aget-wide v8, p1, v5

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v10, v10, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v2, v1

    aget-wide v6, p1, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v3

    mul-double/2addr v6, v8

    aget-wide v4, p1, v5

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v8, v1

    mul-double/2addr v4, v8

    sub-double v4, v6, v4

    aput-wide v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_192

    :cond_1c8
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_244

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_244

    const/4 v0, 0x2

    move v10, v0

    new-array v11, v10, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v3, v0, v10

    const/4 v0, 0x0

    move v1, v0

    :goto_1f0
    if-ge v1, v10, :cond_20b

    mul-int v4, v1, v3

    const/4 v0, 0x1

    if-ne v1, v0, :cond_208

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    :goto_1f9
    new-instance v5, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$11;

    invoke-direct {v5, p0, v4, v0, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$11;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[D)V

    invoke-static {v5}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f0

    :cond_208
    add-int v0, v4, v3

    goto :goto_1f9

    :cond_20b
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v1, v0, v10

    const/4 v0, 0x0

    :goto_222
    if-ge v0, v10, :cond_240

    mul-int v5, v0, v1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_23d

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_22b
    new-instance v3, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$12;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DI[D)V

    invoke-static {v3}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    aput-object v3, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_222

    :cond_23d
    add-int v6, v5, v1

    goto :goto_22b

    :cond_240
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_243
    return-void

    :cond_244
    const/4 v0, 0x0

    :goto_245
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_273

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v3, v1, 0x1

    aget-wide v4, v2, v1

    neg-double v4, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v6, v6, v3

    mul-double/2addr v4, v6

    aget-wide v6, v2, v3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aget-wide v6, v2, v1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    aget-wide v8, v2, v3

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v10, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v2, v1

    aput-wide v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_245

    :cond_273
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    const/4 v0, 0x0

    :goto_283
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_243

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v3, v1, 0x1

    add-int v4, p2, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v5, v5, v1

    aget-wide v7, v2, v1

    mul-double/2addr v5, v7

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v7, v1, v3

    aget-wide v9, v2, v3

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    aput-wide v5, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_283
.end method

.method private bluestein_real_inverse2([DI)V
    .registers 15

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [D

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_f0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_f0

    const/4 v0, 0x2

    move v10, v0

    new-array v11, v10, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v8, v0, v10

    const/4 v0, 0x0

    move v7, v0

    :goto_1f
    if-ge v7, v10, :cond_3d

    mul-int v2, v7, v8

    const/4 v0, 0x1

    if-ne v7, v0, :cond_3a

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    :goto_28
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;

    move-object v1, p0

    move v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$13;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[D)V

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

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v4, v0, 0x2

    const/4 v6, 0x0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    div-int v2, v0, v10

    const/4 v0, 0x0

    move v1, v0

    :goto_55
    if-ge v1, v10, :cond_70

    mul-int v3, v1, v2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_6d

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    :goto_5e
    new-instance v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$14;

    invoke-direct {v4, p0, v3, v0, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$14;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[D)V

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
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v4, v0, 0x2

    const/4 v6, 0x0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_14e

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const/4 v2, 0x0

    aget-wide v2, v5, v2

    mul-double/2addr v0, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    const/4 v4, 0x1

    aget-wide v6, v5, v4

    mul-double/2addr v2, v6

    sub-double/2addr v0, v2

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v1, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v3, v5, v3

    mul-double/2addr v1, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v4, v4, 0x1

    aget-wide v3, v3, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v5, v6

    mul-double/2addr v3, v6

    sub-double/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    :goto_bd
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1da

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v4, v1

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v2

    aget-wide v10, v5, v2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, p1, v3

    add-int v3, p2, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v4, v2

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v1

    aget-wide v1, v5, v2

    mul-double/2addr v1, v8

    add-double/2addr v1, v6

    aput-wide v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    :cond_f0
    const/4 v0, 0x0

    :goto_f1
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_110

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v0

    aget-wide v6, p1, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v1

    mul-double/2addr v6, v8

    aput-wide v6, v5, v1

    aget-wide v3, p1, v3

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v1, v2

    mul-double/2addr v3, v6

    aput-wide v3, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_f1

    :cond_110
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v4, v0, 0x2

    const/4 v6, 0x0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    const/4 v0, 0x0

    :goto_120
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    if-ge v0, v1, :cond_73

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, v5, v1

    neg-double v3, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v6, v6, v2

    mul-double/2addr v3, v6

    aget-wide v6, v5, v2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    aget-wide v6, v5, v1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    aget-wide v8, v5, v2

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v1

    aput-wide v3, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_120

    :cond_14e
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const/4 v2, 0x0

    aget-wide v2, v5, v2

    mul-double/2addr v0, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    const/4 v4, 0x1

    aget-wide v6, v5, v4

    mul-double/2addr v2, v6

    sub-double/2addr v0, v2

    aput-wide v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v1, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v5, v3

    mul-double/2addr v1, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v4, v4, -0x1

    aget-wide v3, v3, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v6, v5, v6

    mul-double/2addr v3, v6

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    :goto_183
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1b8

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    add-int v3, p2, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v4, v1

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v2

    aget-wide v10, v5, v2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, p1, v3

    add-int v3, p2, v2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v4, v2

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v8, v4, v1

    aget-wide v1, v5, v2

    mul-double/2addr v1, v8

    add-double/2addr v1, v6

    aput-wide v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_183

    :cond_1b8
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v5, v3

    mul-double/2addr v1, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v3, v3, v4

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    aget-wide v5, v5, v6

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    aput-wide v1, p1, v0

    :cond_1da
    return-void
.end method

.method private bluesteini()V
    .registers 15

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aput-wide v12, v0, v3

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    const-wide/16 v6, 0x0

    aput-wide v6, v0, v1

    move v0, v1

    move v2, v3

    :goto_19
    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v6, :cond_48

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v2, v6

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v6, v6, 0x2

    if-lt v2, v6, :cond_2d

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    :cond_2d
    int-to-double v6, v2

    mul-double/2addr v6, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    mul-int/lit8 v9, v0, 0x2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    aput-wide v10, v8, v9

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v9, v9, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    aput-wide v6, v8, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_48
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    int-to-double v4, v0

    div-double v4, v12, v4

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v2, v3

    mul-double/2addr v6, v4

    aput-wide v6, v0, v3

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v2, v1

    mul-double/2addr v6, v4

    aput-wide v6, v0, v1

    const/4 v0, 0x2

    :goto_60
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_9d

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    aget-wide v6, v2, v0

    mul-double/2addr v6, v4

    aput-wide v6, v1, v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    add-int/lit8 v2, v0, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk1:[D

    add-int/lit8 v7, v0, 0x1

    aget-wide v6, v6, v7

    mul-double/2addr v6, v4

    aput-wide v6, v1, v2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    aget-wide v6, v6, v0

    aput-wide v6, v1, v2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    add-int/lit8 v7, v0, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_60

    :cond_9d
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nBluestein:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bk2:[D

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftb1st(I[DI[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4_th(I[DII[D)V

    :goto_2a
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv2conj(I[I[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4(I[DII[D)V

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

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    goto :goto_2a

    :cond_4b
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfx41(I[DII[D)V

    goto :goto_2a

    :cond_55
    if-ne p1, v1, :cond_60

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv216neg([DI)V

    goto :goto_2d

    :cond_60
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv208neg([DI)V

    goto :goto_2d

    :cond_68
    if-ne p1, v0, :cond_6e

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftb040([DI)V

    goto :goto_2d

    :cond_6e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftxb020([DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf1st(I[DI[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4_th(I[DII[D)V

    :goto_2a
    invoke-direct {p0, p1, p4, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv2(I[I[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftrec4(I[DII[D)V

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

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

    goto :goto_2a

    :cond_4b
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfx41(I[DII[D)V

    goto :goto_2a

    :cond_55
    if-ne p1, v1, :cond_60

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv216([DI)V

    goto :goto_2d

    :cond_60
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bitrv208([DI)V

    goto :goto_2d

    :cond_68
    if-ne p1, v0, :cond_6e

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf040([DI)V

    goto :goto_2d

    :cond_6e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    invoke-direct {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftxb020([DI)V

    goto :goto_2d
.end method

.method private cftfx41(I[DII[D)V
    .registers 8

    const/16 v0, 0x80

    if-ne p1, v0, :cond_1f

    add-int/lit8 v0, p4, -0x8

    invoke-direct {p0, p2, p3, p5, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit8 v0, p3, 0x20

    add-int/lit8 v1, p4, -0x20

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit8 v0, p3, 0x40

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit8 v0, p3, 0x60

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    :goto_1e
    return-void

    :cond_1f
    add-int/lit8 v0, p4, -0x8

    invoke-direct {p0, p2, p3, p5, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p3, 0x10

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit8 v0, p3, 0x20

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p3, 0x30

    add-int/lit8 v1, p4, -0x8

    invoke-direct {p0, p2, v0, p5, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p3, p4, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit8 v0, p4, 0x20

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit8 v0, p4, 0x40

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit8 v0, p4, 0x60

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v3, p4, 0x80

    add-int/lit8 v5, p5, -0x80

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    add-int/lit16 v0, p4, 0x80

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, p4, 0xa0

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit16 v0, p4, 0xc0

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, p4, 0xe0

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit16 v3, p4, 0x100

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit16 v0, p4, 0x100

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, p4, 0x120

    add-int/lit8 v2, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit16 v0, p4, 0x140

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, p4, 0x160

    add-int/lit8 v2, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    if-eqz p2, :cond_a0

    add-int/lit16 v3, p4, 0x180

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit16 v0, p4, 0x1e0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    :goto_8a
    add-int/lit16 v0, p4, 0x180

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    add-int/lit16 v0, p4, 0x1a0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    add-int/lit16 v0, p4, 0x1c0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf161([DI[DI)V

    :goto_9f
    return-void

    :cond_a0
    add-int/lit16 v3, p4, 0x180

    add-int/lit8 v5, p5, -0x80

    move-object v0, p0

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    add-int/lit16 v0, p4, 0x1e0

    add-int/lit8 v1, p5, -0x20

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf162([DI[DI)V

    goto :goto_8a

    :cond_b2
    add-int/lit8 v5, p5, -0x20

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move v3, p4

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit8 v0, p5, -0x8

    invoke-direct {p0, p3, p4, p6, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p4, 0x10

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit8 v0, p4, 0x20

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p4, 0x30

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v3, p4, 0x40

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    add-int/lit8 v0, p4, 0x40

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p4, 0x50

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit8 v0, p4, 0x60

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit8 v0, p4, 0x70

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit16 v3, p4, 0x80

    add-int/lit8 v5, p5, -0x20

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit16 v0, p4, 0x80

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit16 v0, p4, 0x90

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit16 v0, p4, 0xa0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit16 v0, p4, 0xb0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    if-eqz p2, :cond_14f

    add-int/lit16 v3, p4, 0xc0

    add-int/lit8 v5, p5, -0x20

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    add-int/lit16 v0, p4, 0xf0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    :goto_138
    add-int/lit16 v0, p4, 0xc0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    add-int/lit16 v0, p4, 0xd0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

    add-int/lit16 v0, p4, 0xe0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf081([DI[DI)V

    goto/16 :goto_9f

    :cond_14f
    add-int/lit16 v3, p4, 0xc0

    add-int/lit8 v5, p5, -0x40

    move-object v0, p0

    move v1, v6

    move-object v2, p3

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

    add-int/lit16 v0, p4, 0xf0

    add-int/lit8 v1, p5, -0x8

    invoke-direct {p0, p3, v0, p6, v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftf082([DI[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

    goto :goto_3

    :cond_17
    const/4 v2, 0x1

    sub-int v4, v6, v1

    move-object v0, p0

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

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

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfttree(III[DII[D)I

    move-result v6

    add-int v8, v11, v2

    move-object v4, p0

    move v5, v1

    move-object v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftleaf(II[DII[D)V

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

    move v11, v2

    move v12, v0

    :goto_16
    if-ge v12, v8, :cond_50

    mul-int v0, v12, v3

    add-int v2, p3, v0

    if-eq v12, v9, :cond_39

    add-int/lit8 v10, v11, 0x1

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;

    move-object v1, p0

    move v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$15;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[DI)V

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

    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;

    move-object v1, p0

    move v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$16;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[D[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl1(I[DI[DI)V

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

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftmdl2(I[DI[DI)V

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

    neg-double v2, v2

    add-int/lit8 v4, p2, 0x3

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

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

.method private cftxb020([DI)V
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

.method private cftxc020([DI)V
    .registers 12

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x2

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, p2, 0x3

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    aget-wide v4, p1, p2

    add-int/lit8 v6, p2, 0x2

    aget-wide v6, p1, v6

    add-double/2addr v4, v6

    aput-wide v4, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget-wide v5, p1, v4

    add-int/lit8 v7, p2, 0x3

    aget-wide v7, p1, v7

    sub-double/2addr v5, v7

    aput-wide v5, p1, v4

    add-int/lit8 v4, p2, 0x2

    aput-wide v0, p1, v4

    add-int/lit8 v0, p2, 0x3

    aput-wide v2, p1, v0

    return-void
.end method

.method private static getReminder(I[I)I
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

.method private makect(I[DI)V
    .registers 15

    const/4 v0, 0x1

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

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

.method private makeipt(I)V
    .registers 9

    const/4 v1, 0x2

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

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

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    aget v4, v4, v0

    shl-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    add-int v6, v1, v0

    aput v4, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

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

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

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

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v9, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v1, v9

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v9, 0x1

    aput-wide v7, v1, v9

    const/4 v1, 0x4

    if-ne v2, v1, :cond_92

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v3, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    aput-wide v9, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

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

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v5, v3, 0x1

    aput-wide v7, v1, v5

    const/4 v1, 0x4

    if-ne v4, v1, :cond_f2

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v5, v2, 0x4

    aget-wide v5, v1, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v2, v2, 0x5

    aget-wide v1, v1, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v10, v3, 0x2

    aput-wide v5, v9, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v6, v3, 0x3

    aput-wide v1, v5, v6

    :cond_8f
    move v2, v3

    move v1, v4

    goto :goto_55

    :cond_92
    const/4 v1, 0x4

    if-le v2, v1, :cond_4f

    invoke-direct/range {p0 .. p1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->makeipt(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    const/4 v9, 0x2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    div-double v5, v10, v5

    aput-wide v5, v1, v9

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

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

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    aput-wide v12, v11, v1

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v12, v1, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    aput-wide v5, v11, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v6, v1, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    aput-wide v11, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

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

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v5, v2, 0x4

    aget-wide v5, v1, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v9, v2, 0x6

    aget-wide v9, v1, v9

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v11, v3, 0x2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    div-double v5, v12, v5

    aput-wide v5, v1, v11

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

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

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    aget-wide v9, v9, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v12, v5, 0x1

    aget-wide v11, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v14, v5, 0x2

    aget-wide v13, v13, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v5, v5, 0x3

    aget-wide v15, v15, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    aput-wide v9, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v9, v6, 0x1

    aput-wide v11, v5, v9

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    add-int/lit8 v9, v6, 0x2

    aput-wide v13, v5, v9

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

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

.method private rftfsub(I[DII[DI)V
    .registers 25

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

    add-int/lit8 v8, v9, 0x1

    aget-wide v8, p2, v8

    sub-double v8, v5, v8

    aput-wide v8, p2, v7

    aget-wide v7, p2, v4

    add-double/2addr v7, v14

    aput-wide v7, p2, v4

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, p2, v4

    sub-double v4, v5, v8

    aput-wide v4, p2, v7

    add-int/lit8 v0, v0, 0x2

    goto :goto_8

    :cond_55
    add-int v0, p3, v2

    add-int/lit8 v0, v0, 0x1

    add-int v1, p3, v2

    add-int/lit8 v1, v1, 0x1

    aget-wide v1, p2, v1

    neg-double v1, v1

    aput-wide v1, p2, v0

    return-void
.end method

.method private scale(D[DIZ)V
    .registers 18

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double v5, v0, p1

    if-eqz p5, :cond_3b

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v0, v0, 0x2

    move v7, v0

    :goto_b
    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v9

    const/4 v0, 0x1

    if-le v9, v0, :cond_46

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v0

    if-lt v7, v0, :cond_46

    div-int v10, v7, v9

    new-array v11, v9, [Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    move v8, v0

    :goto_1e
    if-ge v8, v9, :cond_42

    mul-int v0, v8, v10

    add-int v2, p4, v0

    add-int/lit8 v0, v9, -0x1

    if-ne v8, v0, :cond_3f

    add-int v3, p4, v7

    :goto_2a
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$17;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;II[DD)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v11, v8

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1e

    :cond_3b
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move v7, v0

    goto :goto_b

    :cond_3f
    add-int v3, v2, v10

    goto :goto_2a

    :cond_42
    invoke-static {v11}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_45
    return-void

    :cond_46
    move/from16 v0, p4

    :goto_48
    add-int v1, p4, v7

    if-ge v0, v1, :cond_45

    aget-wide v1, p3, v0

    mul-double/2addr v1, v5

    aput-wide v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_48
.end method


# virtual methods
.method cfftf([DII)V
    .registers 35

    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v25, v3, 0x2

    move/from16 v0, v25

    new-array v8, v0, [D

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v28, v3, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v27, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v4, v28, 0x1

    aget-wide v3, v3, v4

    double-to-int v0, v3

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

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v4, v24, v28

    aget-wide v3, v3, v4

    double-to-int v0, v3

    move/from16 v30, v0

    mul-int v26, v30, v5

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

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

    invoke-virtual/range {v11 .. v22}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passfg([IIIII[DI[DIII)V

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

    invoke-virtual/range {v3 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf4(II[DI[DIII)V

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

    invoke-virtual/range {v11 .. v19}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf4(II[DI[DIII)V

    goto :goto_87

    :pswitch_9c
    if-nez v23, :cond_ad

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v11, p3

    invoke-virtual/range {v3 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf2(II[DI[DIII)V

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

    invoke-virtual/range {v11 .. v19}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf2(II[DI[DIII)V

    goto :goto_aa

    :pswitch_bf
    if-nez v23, :cond_d0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v11, p3

    invoke-virtual/range {v3 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf3(II[DI[DIII)V

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

    invoke-virtual/range {v11 .. v19}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf3(II[DI[DIII)V

    goto :goto_cd

    :pswitch_e2
    if-nez v23, :cond_f4

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v11, p3

    invoke-virtual/range {v3 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf5(II[DI[DIII)V

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

    invoke-virtual/range {v11 .. v19}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passf5(II[DI[DIII)V

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

    invoke-virtual/range {v11 .. v22}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->passfg([IIIII[DI[DIII)V

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

.method cffti()V
    .registers 30

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    :cond_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v13, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v14, v2, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1b
    add-int/lit8 v6, v4, 0x1

    const/4 v4, 0x4

    if-gt v6, v4, :cond_33

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

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

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v7, v2, 0x1

    add-int/2addr v7, v14

    int-to-double v8, v5

    aput-wide v8, v4, v7

    const/4 v4, 0x2

    if-ne v5, v4, :cond_6d

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6d

    const/4 v4, 0x2

    :goto_4b
    if-gt v4, v2, :cond_63

    sub-int v7, v2, v4

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v14

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v9, v7, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v10, v10, v7

    aput-wide v10, v8, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_63
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v7, v14, 0x2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    aput-wide v8, v4, v7

    :cond_6d
    const/4 v4, 0x1

    if-ne v3, v4, :cond_134

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v4, v4

    aput-wide v4, v3, v14

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v4, v14, 0x1

    int-to-double v5, v2

    aput-wide v5, v3, v4

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v5, v5

    div-double v15, v3, v5

    const/4 v7, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v10, v3

    move v12, v4

    :goto_95
    if-gt v12, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v4, v12, 0x1

    add-int/2addr v4, v14

    aget-wide v3, v3, v4

    double-to-int v0, v3

    move/from16 v17, v0

    const/4 v3, 0x0

    mul-int v11, v10, v17

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/2addr v4, v11

    add-int/2addr v4, v4

    add-int/lit8 v18, v4, 0x2

    add-int/lit8 v19, v17, -0x1

    const/4 v4, 0x1

    move v9, v4

    :goto_b2
    move/from16 v0, v19

    if-gt v9, v0, :cond_12e

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v5, v7, -0x1

    add-int/2addr v5, v13

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    aput-wide v20, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v5, v7, v13

    const-wide/16 v20, 0x0

    aput-wide v20, v4, v5

    add-int v8, v3, v10

    const-wide/16 v4, 0x0

    int-to-double v0, v8

    move-wide/from16 v20, v0

    mul-double v20, v20, v15

    const/4 v3, 0x4

    move v6, v7

    :goto_d6
    move/from16 v0, v18

    if-gt v3, v0, :cond_101

    add-int/lit8 v6, v6, 0x2

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v4, v4, v22

    mul-double v22, v4, v20

    add-int v24, v6, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v25, v0

    add-int/lit8 v26, v24, -0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    aput-wide v27, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v25, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    aput-wide v22, v25, v24

    add-int/lit8 v3, v3, 0x2

    goto :goto_d6

    :cond_101
    const/4 v3, 0x5

    move/from16 v0, v17

    if-le v0, v3, :cond_128

    add-int v3, v7, v13

    add-int v4, v6, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v7, v3, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v20, v0

    add-int/lit8 v21, v4, -0x1

    aget-wide v20, v20, v21

    aput-wide v20, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v0, p0

    iget-object v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v20, v7, v4

    aput-wide v20, v5, v3

    :cond_128
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    move v7, v6

    move v3, v8

    goto :goto_b2

    :cond_12e
    add-int/lit8 v3, v12, 0x1

    move v10, v11

    move v12, v3

    goto/16 :goto_95

    :cond_134
    move v4, v2

    move v2, v3

    goto/16 :goto_28
.end method

.method cffti(II)V
    .registers 32

    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    :cond_5
    return-void

    :cond_6
    mul-int/lit8 v13, p1, 0x2

    mul-int/lit8 v14, p1, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v2

    move/from16 v2, p1

    :goto_10
    add-int/lit8 v6, v4, 0x1

    const/4 v4, 0x4

    if-gt v6, v4, :cond_28

    sget-object v4, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

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

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v7, p2, v2

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v14

    int-to-double v8, v5

    aput-wide v8, v4, v7

    const/4 v4, 0x2

    if-ne v5, v4, :cond_69

    const/4 v4, 0x1

    if-eq v2, v4, :cond_69

    const/4 v4, 0x2

    :goto_42
    if-gt v4, v2, :cond_5e

    sub-int v7, v2, v4

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v14

    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v9, p2, v7

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v7, v7, p2

    aget-wide v10, v10, v7

    aput-wide v10, v8, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_5e
    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v7, p2, 0x2

    add-int/2addr v7, v14

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    aput-wide v8, v4, v7

    :cond_69
    const/4 v4, 0x1

    if-ne v3, v4, :cond_13e

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v4, p2, v14

    move/from16 v0, p1

    int-to-double v5, v0

    aput-wide v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v4, p2, 0x1

    add-int/2addr v4, v14

    int-to-double v5, v2

    aput-wide v5, v3, v4

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, p1

    int-to-double v5, v0

    div-double v15, v3, v5

    const/4 v7, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v10, v3

    move v12, v4

    :goto_90
    if-gt v12, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v4, p2, v12

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v14

    aget-wide v3, v3, v4

    double-to-int v0, v3

    move/from16 v17, v0

    const/4 v3, 0x0

    mul-int v11, v10, v17

    div-int v4, p1, v11

    add-int/2addr v4, v4

    add-int/lit8 v18, v4, 0x2

    add-int/lit8 v19, v17, -0x1

    const/4 v4, 0x1

    move v9, v4

    :goto_ac
    move/from16 v0, v19

    if-gt v9, v0, :cond_138

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v5, p2, v7

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v5, v13

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    aput-wide v20, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v5, p2, v7

    add-int/2addr v5, v13

    const-wide/16 v20, 0x0

    aput-wide v20, v4, v5

    add-int v8, v3, v10

    const-wide/16 v4, 0x0

    int-to-double v0, v8

    move-wide/from16 v20, v0

    mul-double v20, v20, v15

    const/4 v3, 0x4

    move v6, v7

    :goto_d3
    move/from16 v0, v18

    if-gt v3, v0, :cond_102

    add-int/lit8 v6, v6, 0x2

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v4, v4, v22

    mul-double v22, v4, v20

    add-int v24, v6, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v25, v0

    add-int v26, p2, v24

    add-int/lit8 v26, v26, -0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    aput-wide v27, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v25, v0

    add-int v24, v24, p2

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    aput-wide v22, v25, v24

    add-int/lit8 v3, v3, 0x2

    goto :goto_d3

    :cond_102
    const/4 v3, 0x5

    move/from16 v0, v17

    if-le v0, v3, :cond_131

    add-int v3, v7, v13

    add-int v4, v6, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v7, p2, v3

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v20, v0

    add-int v21, p2, v4

    add-int/lit8 v21, v21, -0x1

    aget-wide v20, v20, v21

    aput-wide v20, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v3, v3, p2

    move-object/from16 v0, p0

    iget-object v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int v4, v4, p2

    aget-wide v20, v7, v4

    aput-wide v20, v5, v3

    :cond_131
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    move v7, v6

    move v3, v8

    goto/16 :goto_ac

    :cond_138
    add-int/lit8 v3, v12, 0x1

    move v10, v11

    move v12, v3

    goto/16 :goto_90

    :cond_13e
    move v4, v2

    move v2, v3

    goto/16 :goto_1d
.end method

.method public complexForward([D)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    return-void
.end method

.method public complexForward([DI)V
    .registers 10

    const/4 v2, -0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    :goto_6
    return-void

    :cond_7
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    goto :goto_6

    :pswitch_15
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    goto :goto_6

    :pswitch_26
    invoke-virtual {p0, p1, p2, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfftf([DII)V

    goto :goto_6

    :pswitch_2a
    invoke-direct {p0, p1, p2, v2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_complex([DII)V

    goto :goto_6

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_26
        :pswitch_2a
    .end packed-switch
.end method

.method public complexInverse([DIZ)V
    .registers 12

    const/4 v7, 0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ne v0, v7, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    :goto_13
    if-eqz p3, :cond_5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, v7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto :goto_5

    :pswitch_20
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    goto :goto_13

    :pswitch_31
    invoke-virtual {p0, p1, p2, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cfftf([DII)V

    goto :goto_13

    :pswitch_35
    invoke-direct {p0, p1, p2, v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_complex([DII)V

    goto :goto_13

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_20
        :pswitch_31
        :pswitch_35
    .end packed-switch
.end method

.method public complexInverse([DZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    return-void
.end method

.method passf2(II[DI[DIII)V
    .registers 32

    mul-int v4, p1, p2

    const/4 v2, 0x2

    move/from16 v0, p1

    if-gt v0, v2, :cond_3a

    const/4 v2, 0x0

    :goto_8
    move/from16 v0, p2

    if-ge v2, v0, :cond_9b

    mul-int v3, v2, p1

    mul-int/lit8 v5, v3, 0x2

    add-int v5, v5, p4

    add-int v6, v5, p1

    aget-wide v7, p3, v5

    add-int/lit8 v5, v5, 0x1

    aget-wide v9, p3, v5

    aget-wide v11, p3, v6

    add-int/lit8 v5, v6, 0x1

    aget-wide v5, p3, v5

    add-int v3, v3, p6

    add-int v13, v3, v4

    add-double v14, v7, v11

    aput-wide v14, p5, v3

    add-int/lit8 v3, v3, 0x1

    add-double v14, v9, v5

    aput-wide v14, p5, v3

    sub-double/2addr v7, v11

    aput-wide v7, p5, v13

    add-int/lit8 v3, v13, 0x1

    sub-double v5, v9, v5

    aput-wide v5, p5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3a
    const/4 v2, 0x0

    move v3, v2

    :goto_3c
    move/from16 v0, p2

    if-ge v3, v0, :cond_9b

    const/4 v2, 0x0

    :goto_41
    add-int/lit8 v5, p1, -0x1

    if-ge v2, v5, :cond_97

    mul-int v5, v3, p1

    add-int v6, p4, v2

    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    add-int v7, v6, p1

    aget-wide v8, p3, v6

    add-int/lit8 v6, v6, 0x1

    aget-wide v10, p3, v6

    aget-wide v12, p3, v7

    add-int/lit8 v6, v7, 0x1

    aget-wide v6, p3, v6

    add-int v14, v2, p7

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v15, v15, v14

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v19, v0

    add-int/lit8 v14, v14, 0x1

    aget-wide v19, v19, v14

    mul-double v17, v17, v19

    sub-double v19, v8, v12

    sub-double v21, v10, v6

    add-int v14, p6, v2

    add-int/2addr v5, v14

    add-int v14, v5, v4

    add-double/2addr v8, v12

    aput-wide v8, p5, v5

    add-int/lit8 v5, v5, 0x1

    add-double/2addr v6, v10

    aput-wide v6, p5, v5

    mul-double v5, v15, v19

    mul-double v7, v17, v21

    sub-double/2addr v5, v7

    aput-wide v5, p5, v14

    add-int/lit8 v5, v14, 0x1

    mul-double v6, v15, v21

    mul-double v8, v17, v19

    add-double/2addr v6, v8

    aput-wide v6, p5, v5

    add-int/lit8 v2, v2, 0x2

    goto :goto_41

    :cond_97
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3c

    :cond_9b
    return-void
.end method

.method passf3(II[DI[DIII)V
    .registers 44

    add-int v4, p7, p1

    mul-int v5, p2, p1

    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_84

    const/4 v2, 0x1

    :goto_a
    move/from16 v0, p2

    if-gt v2, v0, :cond_15a

    mul-int/lit8 v3, v2, 0x3

    add-int/lit8 v3, v3, -0x2

    mul-int v3, v3, p1

    add-int v3, v3, p4

    add-int v4, v3, p1

    sub-int v6, v3, p1

    aget-wide v7, p3, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v9, p3, v3

    aget-wide v11, p3, v4

    add-int/lit8 v3, v4, 0x1

    aget-wide v3, p3, v3

    aget-wide v13, p3, v6

    add-int/lit8 v15, v6, 0x1

    aget-wide v15, p3, v15

    add-double v17, v7, v11

    const-wide/high16 v19, -0x4020000000000000L    # -0.5

    mul-double v19, v19, v17

    add-double v13, v13, v19

    add-double v19, v9, v3

    const-wide/high16 v21, -0x4020000000000000L    # -0.5

    mul-double v21, v21, v19

    add-double v21, v21, v15

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v23, v23, v25

    sub-double/2addr v7, v11

    mul-double v7, v7, v23

    move/from16 v0, p8

    int-to-double v11, v0

    const-wide v23, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v11, v11, v23

    sub-double v3, v9, v3

    mul-double/2addr v3, v11

    add-int/lit8 v9, v2, -0x1

    mul-int v9, v9, p1

    add-int v9, v9, p6

    add-int v10, v9, v5

    add-int v11, v10, v5

    aget-wide v23, p3, v6

    add-double v17, v17, v23

    aput-wide v17, p5, v9

    add-int/lit8 v6, v9, 0x1

    add-double v15, v15, v19

    aput-wide v15, p5, v6

    sub-double v15, v13, v3

    aput-wide v15, p5, v10

    add-int/lit8 v6, v10, 0x1

    add-double v9, v21, v7

    aput-wide v9, p5, v6

    add-double/2addr v3, v13

    aput-wide v3, p5, v11

    add-int/lit8 v3, v11, 0x1

    sub-double v6, v21, v7

    aput-wide v6, p5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_84
    const/4 v2, 0x1

    move v3, v2

    :goto_86
    move/from16 v0, p2

    if-gt v3, v0, :cond_15a

    mul-int/lit8 v2, v3, 0x3

    add-int/lit8 v2, v2, -0x2

    mul-int v2, v2, p1

    add-int v6, p4, v2

    add-int/lit8 v2, v3, -0x1

    mul-int v2, v2, p1

    add-int v7, p6, v2

    const/4 v2, 0x0

    :goto_99
    add-int/lit8 v8, p1, -0x1

    if-ge v2, v8, :cond_155

    add-int v8, v2, v6

    add-int v9, v8, p1

    sub-int v10, v8, p1

    aget-wide v11, p3, v8

    add-int/lit8 v8, v8, 0x1

    aget-wide v13, p3, v8

    aget-wide v15, p3, v9

    add-int/lit8 v8, v9, 0x1

    aget-wide v8, p3, v8

    aget-wide v17, p3, v10

    add-int/lit8 v10, v10, 0x1

    aget-wide v19, p3, v10

    add-double v21, v11, v15

    const-wide/high16 v23, -0x4020000000000000L    # -0.5

    mul-double v23, v23, v21

    add-double v23, v23, v17

    add-double v25, v13, v8

    const-wide/high16 v27, -0x4020000000000000L    # -0.5

    mul-double v27, v27, v25

    add-double v27, v27, v19

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v29, v0

    const-wide v31, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v29, v29, v31

    sub-double v10, v11, v15

    mul-double v10, v10, v29

    move/from16 v0, p8

    int-to-double v15, v0

    const-wide v29, 0x3febb67ae8584cabL    # 0.8660254037844387

    mul-double v15, v15, v29

    sub-double v8, v13, v8

    mul-double/2addr v8, v15

    sub-double v12, v23, v8

    add-double v8, v8, v23

    add-double v14, v27, v10

    sub-double v10, v27, v10

    add-int v16, v2, p7

    add-int v23, v2, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v24, v0

    aget-wide v27, v24, v16

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v24, v0

    add-int/lit8 v16, v16, 0x1

    aget-wide v31, v24, v16

    mul-double v29, v29, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v16, v0

    aget-wide v31, v16, v23

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v16, v0

    add-int/lit8 v23, v23, 0x1

    aget-wide v23, v16, v23

    mul-double v23, v23, v33

    add-int v16, v2, v7

    add-int v33, v16, v5

    add-int v34, v33, v5

    add-double v17, v17, v21

    aput-wide v17, p5, v16

    add-int/lit8 v16, v16, 0x1

    add-double v17, v19, v25

    aput-wide v17, p5, v16

    mul-double v16, v27, v12

    mul-double v18, v29, v14

    sub-double v16, v16, v18

    aput-wide v16, p5, v33

    add-int/lit8 v16, v33, 0x1

    mul-double v14, v14, v27

    mul-double v12, v12, v29

    add-double/2addr v12, v14

    aput-wide v12, p5, v16

    mul-double v12, v31, v8

    mul-double v14, v23, v10

    sub-double/2addr v12, v14

    aput-wide v12, p5, v34

    add-int/lit8 v12, v34, 0x1

    mul-double v10, v10, v31

    mul-double v8, v8, v23

    add-double/2addr v8, v10

    aput-wide v8, p5, v12

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_99

    :cond_155
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_86

    :cond_15a
    return-void
.end method

.method passf4(II[DI[DIII)V
    .registers 54

    add-int v4, p7, p1

    add-int v5, v4, p1

    mul-int v6, p2, p1

    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_8d

    const/4 v2, 0x0

    :goto_c
    move/from16 v0, p2

    if-ge v2, v0, :cond_193

    mul-int v3, v2, p1

    mul-int/lit8 v4, v3, 0x4

    add-int v4, v4, p4

    add-int/lit8 v4, v4, 0x1

    add-int v5, v4, p1

    add-int v7, v5, p1

    add-int v8, v7, p1

    add-int/lit8 v9, v4, -0x1

    aget-wide v9, p3, v9

    aget-wide v11, p3, v4

    add-int/lit8 v4, v5, -0x1

    aget-wide v13, p3, v4

    aget-wide v4, p3, v5

    add-int/lit8 v15, v7, -0x1

    aget-wide v15, p3, v15

    aget-wide v17, p3, v7

    add-int/lit8 v7, v8, -0x1

    aget-wide v19, p3, v7

    aget-wide v7, p3, v8

    sub-double v21, v11, v17

    add-double v11, v11, v17

    sub-double v17, v7, v4

    add-double/2addr v4, v7

    sub-double v7, v9, v15

    add-double/2addr v9, v15

    sub-double v15, v13, v19

    add-double v13, v13, v19

    add-int v3, v3, p6

    add-int v19, v3, v6

    add-int v20, v19, v6

    add-int v23, v20, v6

    add-double v24, v9, v13

    aput-wide v24, p5, v3

    add-int/lit8 v3, v3, 0x1

    add-double v24, v11, v4

    aput-wide v24, p5, v3

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v17

    add-double v24, v24, v7

    aput-wide v24, p5, v19

    add-int/lit8 v3, v19, 0x1

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v15

    add-double v24, v24, v21

    aput-wide v24, p5, v3

    sub-double/2addr v9, v13

    aput-wide v9, p5, v20

    add-int/lit8 v3, v20, 0x1

    sub-double v4, v11, v4

    aput-wide v4, p5, v3

    move/from16 v0, p8

    int-to-double v3, v0

    mul-double v3, v3, v17

    sub-double v3, v7, v3

    aput-wide v3, p5, v23

    add-int/lit8 v3, v23, 0x1

    move/from16 v0, p8

    int-to-double v4, v0

    mul-double/2addr v4, v15

    sub-double v4, v21, v4

    aput-wide v4, p5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_8d
    const/4 v2, 0x0

    move v3, v2

    :goto_8f
    move/from16 v0, p2

    if-ge v3, v0, :cond_193

    mul-int v7, v3, p1

    add-int/lit8 v2, p4, 0x1

    mul-int/lit8 v8, v7, 0x4

    add-int/2addr v8, v2

    const/4 v2, 0x0

    :goto_9b
    add-int/lit8 v9, p1, -0x1

    if-ge v2, v9, :cond_18e

    add-int v9, v2, v8

    add-int v10, v9, p1

    add-int v11, v10, p1

    add-int v12, v11, p1

    add-int/lit8 v13, v9, -0x1

    aget-wide v13, p3, v13

    aget-wide v15, p3, v9

    add-int/lit8 v9, v10, -0x1

    aget-wide v17, p3, v9

    aget-wide v9, p3, v10

    add-int/lit8 v19, v11, -0x1

    aget-wide v19, p3, v19

    aget-wide v21, p3, v11

    add-int/lit8 v11, v12, -0x1

    aget-wide v23, p3, v11

    aget-wide v11, p3, v12

    sub-double v25, v15, v21

    add-double v15, v15, v21

    add-double v21, v9, v11

    sub-double v9, v11, v9

    sub-double v11, v13, v19

    add-double v13, v13, v19

    sub-double v19, v17, v23

    add-double v17, v17, v23

    sub-double v23, v13, v17

    sub-double v27, v15, v21

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v29, v0

    mul-double v29, v29, v9

    add-double v29, v29, v11

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v31, v0

    mul-double v9, v9, v31

    sub-double v9, v11, v9

    move/from16 v0, p8

    int-to-double v11, v0

    mul-double v11, v11, v19

    add-double v11, v11, v25

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v31, v0

    mul-double v19, v19, v31

    sub-double v19, v25, v19

    add-int v25, v2, p7

    add-int v26, v2, v4

    add-int v31, v2, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v32, v0

    aget-wide v32, v32, v25

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v36, v0

    add-int/lit8 v25, v25, 0x1

    aget-wide v36, v36, v25

    mul-double v34, v34, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v25, v0

    aget-wide v36, v25, v26

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v25, v0

    add-int/lit8 v26, v26, 0x1

    aget-wide v25, v25, v26

    mul-double v25, v25, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v38, v0

    aget-wide v38, v38, v31

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v42, v0

    add-int/lit8 v31, v31, 0x1

    aget-wide v42, v42, v31

    mul-double v40, v40, v42

    add-int v31, p6, v2

    add-int v31, v31, v7

    add-int v42, v31, v6

    add-int v43, v42, v6

    add-int v44, v43, v6

    add-double v13, v13, v17

    aput-wide v13, p5, v31

    add-int/lit8 v13, v31, 0x1

    add-double v14, v15, v21

    aput-wide v14, p5, v13

    mul-double v13, v32, v29

    mul-double v15, v34, v11

    sub-double/2addr v13, v15

    aput-wide v13, p5, v42

    add-int/lit8 v13, v42, 0x1

    mul-double v11, v11, v32

    mul-double v14, v34, v29

    add-double/2addr v11, v14

    aput-wide v11, p5, v13

    mul-double v11, v36, v23

    mul-double v13, v25, v27

    sub-double/2addr v11, v13

    aput-wide v11, p5, v43

    add-int/lit8 v11, v43, 0x1

    mul-double v12, v36, v27

    mul-double v14, v25, v23

    add-double/2addr v12, v14

    aput-wide v12, p5, v11

    mul-double v11, v38, v9

    mul-double v13, v40, v19

    sub-double/2addr v11, v13

    aput-wide v11, p5, v44

    add-int/lit8 v11, v44, 0x1

    mul-double v12, v38, v19

    mul-double v9, v9, v40

    add-double/2addr v9, v12

    aput-wide v9, p5, v11

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_9b

    :cond_18e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_8f

    :cond_193
    return-void
.end method

.method passf5(II[DI[DIII)V
    .registers 68

    add-int v4, p7, p1

    add-int v5, v4, p1

    add-int v6, v5, p1

    mul-int v7, p2, p1

    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_13a

    const/4 v2, 0x1

    :goto_e
    move/from16 v0, p2

    if-gt v2, v0, :cond_30d

    mul-int/lit8 v3, v2, 0x5

    add-int/lit8 v3, v3, -0x4

    mul-int v3, v3, p1

    add-int v3, v3, p4

    add-int/lit8 v3, v3, 0x1

    add-int v4, v3, p1

    sub-int v5, v3, p1

    add-int v6, v4, p1

    add-int v8, v6, p1

    add-int/lit8 v9, v3, -0x1

    aget-wide v9, p3, v9

    aget-wide v11, p3, v3

    add-int/lit8 v3, v4, -0x1

    aget-wide v13, p3, v3

    aget-wide v3, p3, v4

    add-int/lit8 v15, v5, -0x1

    aget-wide v15, p3, v15

    aget-wide v17, p3, v5

    add-int/lit8 v5, v6, -0x1

    aget-wide v19, p3, v5

    aget-wide v5, p3, v6

    add-int/lit8 v21, v8, -0x1

    aget-wide v21, p3, v21

    aget-wide v23, p3, v8

    sub-double v25, v11, v23

    add-double v11, v11, v23

    sub-double v23, v3, v5

    add-double/2addr v3, v5

    sub-double v5, v9, v21

    add-double v8, v9, v21

    sub-double v21, v13, v19

    add-double v13, v13, v19

    const-wide v19, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v19, v19, v8

    add-double v19, v19, v15

    const-wide v27, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v27, v27, v13

    add-double v19, v19, v27

    const-wide v27, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v27, v27, v11

    add-double v27, v27, v17

    const-wide v29, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v29, v29, v3

    add-double v27, v27, v29

    const-wide v29, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v29, v29, v8

    add-double v29, v29, v15

    const-wide v31, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v31, v31, v13

    add-double v29, v29, v31

    const-wide v31, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v31, v31, v11

    add-double v31, v31, v17

    const-wide v33, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v33, v33, v3

    add-double v31, v31, v33

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v33, v0

    const-wide v35, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v35, v35, v5

    const-wide v37, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v37, v37, v21

    add-double v35, v35, v37

    mul-double v33, v33, v35

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v35, v0

    const-wide v37, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v37, v37, v25

    const-wide v39, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v39, v39, v23

    add-double v37, v37, v39

    mul-double v35, v35, v37

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v37, v0

    const-wide v39, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v5, v5, v39

    const-wide v39, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v21, v21, v39

    sub-double v5, v5, v21

    mul-double v5, v5, v37

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v37, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v25, v25, v37

    const-wide v37, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v23, v23, v37

    sub-double v23, v25, v23

    mul-double v21, v21, v23

    add-int/lit8 v10, v2, -0x1

    mul-int v10, v10, p1

    add-int v10, v10, p6

    add-int v23, v10, v7

    add-int v24, v23, v7

    add-int v25, v24, v7

    add-int v26, v25, v7

    add-double/2addr v8, v15

    add-double/2addr v8, v13

    aput-wide v8, p5, v10

    add-int/lit8 v8, v10, 0x1

    add-double v9, v17, v11

    add-double/2addr v3, v9

    aput-wide v3, p5, v8

    sub-double v3, v19, v35

    aput-wide v3, p5, v23

    add-int/lit8 v3, v23, 0x1

    add-double v8, v27, v33

    aput-wide v8, p5, v3

    sub-double v3, v29, v21

    aput-wide v3, p5, v24

    add-int/lit8 v3, v24, 0x1

    add-double v8, v31, v5

    aput-wide v8, p5, v3

    add-double v3, v29, v21

    aput-wide v3, p5, v25

    add-int/lit8 v3, v25, 0x1

    sub-double v4, v31, v5

    aput-wide v4, p5, v3

    add-double v3, v19, v35

    aput-wide v3, p5, v26

    add-int/lit8 v3, v26, 0x1

    sub-double v4, v27, v33

    aput-wide v4, p5, v3

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    :cond_13a
    const/4 v2, 0x1

    move v3, v2

    :goto_13c
    move/from16 v0, p2

    if-gt v3, v0, :cond_30d

    add-int/lit8 v2, p4, 0x1

    mul-int/lit8 v8, v3, 0x5

    add-int/lit8 v8, v8, -0x4

    mul-int v8, v8, p1

    add-int/2addr v8, v2

    add-int/lit8 v2, v3, -0x1

    mul-int v2, v2, p1

    add-int v9, p6, v2

    const/4 v2, 0x0

    :goto_150
    add-int/lit8 v10, p1, -0x1

    if-ge v2, v10, :cond_308

    add-int v10, v2, v8

    add-int v11, v10, p1

    sub-int v12, v10, p1

    add-int v13, v11, p1

    add-int v14, v13, p1

    add-int/lit8 v15, v10, -0x1

    aget-wide v15, p3, v15

    aget-wide v17, p3, v10

    add-int/lit8 v10, v11, -0x1

    aget-wide v19, p3, v10

    aget-wide v10, p3, v11

    add-int/lit8 v21, v12, -0x1

    aget-wide v21, p3, v21

    aget-wide v23, p3, v12

    add-int/lit8 v12, v13, -0x1

    aget-wide v25, p3, v12

    aget-wide v12, p3, v13

    add-int/lit8 v27, v14, -0x1

    aget-wide v27, p3, v27

    aget-wide v29, p3, v14

    sub-double v31, v17, v29

    add-double v17, v17, v29

    sub-double v29, v10, v12

    add-double/2addr v10, v12

    sub-double v12, v15, v27

    add-double v14, v15, v27

    sub-double v27, v19, v25

    add-double v19, v19, v25

    const-wide v25, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v25, v25, v14

    add-double v25, v25, v21

    const-wide v33, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v33, v33, v19

    add-double v25, v25, v33

    const-wide v33, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v33, v33, v17

    add-double v33, v33, v23

    const-wide v35, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v35, v35, v10

    add-double v33, v33, v35

    const-wide v35, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v35, v35, v14

    add-double v35, v35, v21

    const-wide v37, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v37, v37, v19

    add-double v35, v35, v37

    const-wide v37, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v37, v37, v17

    add-double v37, v37, v23

    const-wide v39, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v39, v39, v10

    add-double v37, v37, v39

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v39, v0

    const-wide v41, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v41, v41, v12

    const-wide v43, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v43, v43, v27

    add-double v41, v41, v43

    mul-double v39, v39, v41

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v41, v0

    const-wide v43, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v43, v43, v31

    const-wide v45, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v45, v45, v29

    add-double v43, v43, v45

    mul-double v41, v41, v43

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v43, v0

    const-wide v45, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v12, v12, v45

    const-wide v45, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v27, v27, v45

    sub-double v12, v12, v27

    mul-double v12, v12, v43

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide v43, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v31, v31, v43

    const-wide v43, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v29, v29, v43

    sub-double v29, v31, v29

    mul-double v27, v27, v29

    sub-double v29, v35, v27

    add-double v27, v27, v35

    add-double v31, v37, v12

    sub-double v12, v37, v12

    add-double v35, v25, v41

    sub-double v25, v25, v41

    sub-double v37, v33, v39

    add-double v33, v33, v39

    add-int v16, v2, p7

    add-int v39, v2, v4

    add-int v40, v2, v5

    add-int v41, v2, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v42, v0

    aget-wide v42, v42, v16

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v46, v0

    add-int/lit8 v16, v16, 0x1

    aget-wide v46, v46, v16

    mul-double v44, v44, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v16, v0

    aget-wide v46, v16, v39

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v16, v0

    add-int/lit8 v39, v39, 0x1

    aget-wide v50, v16, v39

    mul-double v48, v48, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v16, v0

    aget-wide v50, v16, v40

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v16, v0

    add-int/lit8 v39, v40, 0x1

    aget-wide v39, v16, v39

    mul-double v39, v39, v52

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v16, v0

    aget-wide v52, v16, v41

    move/from16 v0, p8

    int-to-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v16, v0

    add-int/lit8 v41, v41, 0x1

    aget-wide v56, v16, v41

    mul-double v54, v54, v56

    add-int v16, v2, v9

    add-int v41, v16, v7

    add-int v56, v41, v7

    add-int v57, v56, v7

    add-int v58, v57, v7

    add-double v14, v14, v21

    add-double v14, v14, v19

    aput-wide v14, p5, v16

    add-int/lit8 v14, v16, 0x1

    add-double v15, v23, v17

    add-double/2addr v10, v15

    aput-wide v10, p5, v14

    mul-double v10, v42, v25

    mul-double v14, v44, v33

    sub-double/2addr v10, v14

    aput-wide v10, p5, v41

    add-int/lit8 v10, v41, 0x1

    mul-double v14, v42, v33

    mul-double v16, v44, v25

    add-double v14, v14, v16

    aput-wide v14, p5, v10

    mul-double v10, v46, v29

    mul-double v14, v48, v31

    sub-double/2addr v10, v14

    aput-wide v10, p5, v56

    add-int/lit8 v10, v56, 0x1

    mul-double v14, v46, v31

    mul-double v16, v48, v29

    add-double v14, v14, v16

    aput-wide v14, p5, v10

    mul-double v10, v50, v27

    mul-double v14, v39, v12

    sub-double/2addr v10, v14

    aput-wide v10, p5, v57

    add-int/lit8 v10, v57, 0x1

    mul-double v11, v50, v12

    mul-double v13, v39, v27

    add-double/2addr v11, v13

    aput-wide v11, p5, v10

    mul-double v10, v52, v35

    mul-double v12, v54, v37

    sub-double/2addr v10, v12

    aput-wide v10, p5, v58

    add-int/lit8 v10, v58, 0x1

    mul-double v11, v52, v37

    mul-double v13, v54, v35

    add-double/2addr v11, v13

    aput-wide v11, p5, v10

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_150

    :cond_308
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_13c

    :cond_30d
    return-void
.end method

.method passfg([IIIII[DI[DIII)V
    .registers 43

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

    aget-wide v17, p6, v17

    add-int v19, p7, v5

    add-int v19, v19, v9

    add-int v19, v19, v15

    aget-wide v19, p6, v19

    add-int v21, v16, v10

    add-double v22, v17, v19

    aput-wide v22, p8, v21

    add-int v16, v16, v14

    sub-double v17, v17, v19

    aput-wide v17, p8, v16

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

    aget-wide v14, p6, v10

    aput-wide v14, p8, v9

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

    aget-wide v19, p6, v19

    add-int v18, v18, v14

    add-int v16, v16, v18

    aget-wide v21, p6, v16

    add-int v16, v17, v15

    add-int v16, v16, v8

    add-double v23, v19, v21

    aput-wide v23, p8, v16

    add-int v15, v15, v17

    add-int/2addr v15, v9

    sub-double v16, v19, v21

    aput-wide v16, p8, v15

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

    aget-wide v9, p6, v7

    aput-wide v9, p8, v8

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

    iget-object v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v9, v5, -0x2

    aget-wide v17, v7, v9

    move/from16 v0, p11

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v5, v5, -0x1

    aget-wide v21, v7, v5

    mul-double v19, v19, v21

    const/4 v5, 0x0

    :goto_10f
    move/from16 v0, p5

    if-ge v5, v0, :cond_131

    add-int v7, p7, v5

    add-int v9, p9, v5

    add-int v21, v7, v15

    aget-wide v22, p8, v9

    add-int v24, v9, p5

    aget-wide v24, p8, v24

    mul-double v24, v24, v17

    add-double v22, v22, v24

    aput-wide v22, p6, v21

    add-int v7, v7, v16

    add-int/2addr v9, v14

    aget-wide v21, p8, v9

    mul-double v21, v21, v19

    aput-wide v21, p6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_10f

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

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v18, v0

    add-int/lit8 v19, v17, -0x2

    aget-wide v18, v18, v19

    move/from16 v0, p11

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v22, v0

    add-int/lit8 v17, v17, -0x1

    aget-wide v22, v22, v17

    mul-double v20, v20, v22

    mul-int v17, v7, p5

    mul-int v22, v6, p5

    const/4 v6, 0x0

    :goto_160
    move/from16 v0, p5

    if-ge v6, v0, :cond_187

    add-int v23, p7, v6

    add-int v24, p9, v6

    add-int v25, v23, v15

    aget-wide v26, p6, v25

    add-int v28, v24, v17

    aget-wide v28, p8, v28

    mul-double v28, v28, v18

    add-double v26, v26, v28

    aput-wide v26, p6, v25

    add-int v23, v23, v16

    aget-wide v25, p6, v23

    add-int v24, v24, v22

    aget-wide v27, p8, v24

    mul-double v27, v27, v20

    add-double v24, v25, v27

    aput-wide v24, p6, v23

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

    aget-wide v9, p8, v8

    add-int v13, v8, v7

    aget-wide v13, p8, v13

    add-double/2addr v9, v13

    aput-wide v9, p8, v8

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
    if-ge v6, v12, :cond_1ee

    sub-int v5, p3, v6

    mul-int v7, v6, p5

    mul-int v8, v5, p5

    const/4 v5, 0x1

    :goto_1b9
    move/from16 v0, p5

    if-ge v5, v0, :cond_1ea

    add-int v9, p9, v5

    add-int v10, p7, v5

    add-int v13, v10, v7

    add-int/2addr v10, v8

    add-int/lit8 v14, v13, -0x1

    aget-wide v14, p6, v14

    aget-wide v16, p6, v13

    add-int/lit8 v13, v10, -0x1

    aget-wide v18, p6, v13

    aget-wide v20, p6, v10

    add-int v10, v9, v7

    add-int/2addr v9, v8

    add-int/lit8 v13, v10, -0x1

    sub-double v22, v14, v20

    aput-wide v22, p8, v13

    add-int/lit8 v13, v9, -0x1

    add-double v14, v14, v20

    aput-wide v14, p8, v13

    add-double v13, v16, v18

    aput-wide v13, p8, v10

    sub-double v13, v16, v18

    aput-wide v13, p8, v9

    add-int/lit8 v5, v5, 0x2

    goto :goto_1b9

    :cond_1ea
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1b0

    :cond_1ee
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, p1, v5

    const/4 v5, 0x2

    move/from16 v0, p2

    if-ne v0, v5, :cond_1f8

    :cond_1f7
    return-void

    :cond_1f8
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

    :goto_20d
    move/from16 v0, p3

    if-ge v6, v0, :cond_233

    mul-int v8, v6, v7

    const/4 v5, 0x0

    :goto_214
    move/from16 v0, p4

    if-ge v5, v0, :cond_22f

    mul-int v9, v5, p2

    add-int v10, p9, v9

    add-int/2addr v10, v8

    add-int v9, v9, p7

    add-int/2addr v9, v8

    aget-wide v12, p8, v10

    aput-wide v12, p6, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-wide v12, p8, v10

    aput-wide v12, p6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_214

    :cond_22f
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_20d

    :cond_233
    move/from16 v0, p4

    if-gt v11, v0, :cond_29c

    const/4 v6, 0x0

    const/4 v5, 0x1

    move v8, v5

    move v5, v6

    :goto_23b
    move/from16 v0, p3

    if-ge v8, v0, :cond_1f7

    add-int/lit8 v6, v5, 0x2

    mul-int v5, v8, p4

    mul-int v9, v5, p2

    const/4 v5, 0x3

    move/from16 v30, v5

    move v5, v6

    move/from16 v6, v30

    :goto_24b
    move/from16 v0, p2

    if-ge v6, v0, :cond_298

    add-int/lit8 v7, v5, 0x2

    add-int v5, v7, p10

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v11, v5, -0x1

    aget-wide v10, v10, v11

    move/from16 v0, p11

    int-to-double v12, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    aget-wide v14, v14, v5

    mul-double/2addr v12, v14

    add-int v14, p7, v6

    add-int v15, p9, v6

    const/4 v5, 0x0

    :goto_26c
    move/from16 v0, p4

    if-ge v5, v0, :cond_293

    mul-int v16, v5, p2

    add-int v16, v16, v9

    add-int v17, v14, v16

    add-int v16, v16, v15

    add-int/lit8 v18, v16, -0x1

    aget-wide v18, p8, v18

    aget-wide v20, p8, v16

    add-int/lit8 v16, v17, -0x1

    mul-double v22, v10, v18

    mul-double v24, v12, v20

    sub-double v22, v22, v24

    aput-wide v22, p6, v16

    mul-double v20, v20, v10

    mul-double v18, v18, v12

    add-double v18, v18, v20

    aput-wide v18, p6, v17

    add-int/lit8 v5, v5, 0x1

    goto :goto_26c

    :cond_293
    add-int/lit8 v5, v6, 0x2

    move v6, v5

    move v5, v7

    goto :goto_24b

    :cond_298
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_23b

    :cond_29c
    rsub-int/lit8 v7, p2, 0x2

    const/4 v5, 0x1

    move v9, v5

    :goto_2a0
    move/from16 v0, p3

    if-ge v9, v0, :cond_1f7

    add-int v7, v7, p2

    mul-int v5, v9, p4

    mul-int v10, v5, p2

    const/4 v5, 0x0

    move v8, v5

    :goto_2ac
    move/from16 v0, p4

    if-ge v8, v0, :cond_2fa

    mul-int v5, v8, p2

    add-int v11, v5, v10

    const/4 v5, 0x3

    move v6, v7

    :goto_2b6
    move/from16 v0, p2

    if-ge v5, v0, :cond_2f6

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v12, v6, -0x1

    add-int v12, v12, p10

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    add-int/lit8 v14, v12, -0x1

    aget-wide v13, v13, v14

    move/from16 v0, p11

    int-to-double v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable:[D

    move-object/from16 v17, v0

    aget-wide v17, v17, v12

    mul-double v15, v15, v17

    add-int v12, p7, v5

    add-int/2addr v12, v11

    add-int v17, p9, v5

    add-int v17, v17, v11

    add-int/lit8 v18, v17, -0x1

    aget-wide v18, p8, v18

    aget-wide v20, p8, v17

    add-int/lit8 v17, v12, -0x1

    mul-double v22, v13, v18

    mul-double v24, v15, v20

    sub-double v22, v22, v24

    aput-wide v22, p6, v17

    mul-double v13, v13, v20

    mul-double v15, v15, v18

    add-double/2addr v13, v15

    aput-wide v13, p6, v12

    add-int/lit8 v5, v5, 0x2

    goto :goto_2b6

    :cond_2f6
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_2ac

    :cond_2fa
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_2a0
.end method

.method radb2(II[DI[DII)V
    .registers 35

    mul-int v3, p2, p1

    const/4 v1, 0x0

    :goto_3
    move/from16 v0, p2

    if-ge v1, v0, :cond_26

    mul-int v2, v1, p1

    mul-int/lit8 v4, v2, 0x2

    add-int v5, v4, p1

    add-int v2, v2, p6

    add-int v4, v4, p4

    add-int v6, p4, p1

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    aget-wide v6, p3, v4

    aget-wide v4, p3, v5

    add-double v8, v6, v4

    aput-wide v8, p5, v2

    add-int/2addr v2, v3

    sub-double v4, v6, v4

    aput-wide v4, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_26
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ge v0, v1, :cond_2c

    :cond_2b
    return-void

    :cond_2c
    const/4 v1, 0x2

    move/from16 v0, p1

    if-eq v0, v1, :cond_a7

    const/4 v1, 0x0

    move v2, v1

    :goto_33
    move/from16 v0, p2

    if-ge v2, v0, :cond_a2

    mul-int v4, v2, p1

    mul-int/lit8 v5, v4, 0x2

    add-int v6, v5, p1

    add-int v7, v4, v3

    const/4 v1, 0x2

    :goto_40
    move/from16 v0, p1

    if-ge v1, v0, :cond_9e

    sub-int v8, p1, v1

    add-int/lit8 v9, v1, -0x1

    add-int v9, v9, p7

    add-int v10, p6, v1

    add-int v11, p4, v1

    add-int v8, v8, p4

    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v13, v9, -0x1

    aget-wide v12, v12, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v14, v14, v9

    add-int v9, v11, v5

    add-int/2addr v8, v6

    add-int v11, v10, v4

    add-int/2addr v10, v7

    add-int/lit8 v16, v9, -0x1

    aget-wide v16, p3, v16

    add-int/lit8 v18, v8, -0x1

    aget-wide v18, p3, v18

    sub-double v16, v16, v18

    aget-wide v18, p3, v9

    aget-wide v20, p3, v8

    add-double v18, v18, v20

    aget-wide v20, p3, v9

    add-int/lit8 v9, v9, -0x1

    aget-wide v22, p3, v9

    aget-wide v24, p3, v8

    add-int/lit8 v8, v8, -0x1

    aget-wide v8, p3, v8

    add-int/lit8 v26, v11, -0x1

    add-double v8, v8, v22

    aput-wide v8, p5, v26

    sub-double v8, v20, v24

    aput-wide v8, p5, v11

    add-int/lit8 v8, v10, -0x1

    mul-double v20, v12, v16

    mul-double v22, v14, v18

    sub-double v20, v20, v22

    aput-wide v20, p5, v8

    mul-double v8, v12, v18

    mul-double v11, v14, v16

    add-double/2addr v8, v11

    aput-wide v8, p5, v10

    add-int/lit8 v1, v1, 0x2

    goto :goto_40

    :cond_9e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_33

    :cond_a2
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2b

    :cond_a7
    const/4 v1, 0x0

    :goto_a8
    move/from16 v0, p2

    if-ge v1, v0, :cond_2b

    mul-int v2, v1, p1

    mul-int/lit8 v4, v2, 0x2

    add-int v5, p6, p1

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v2, v5

    add-int v4, v4, p4

    add-int v4, v4, p1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    add-int/lit8 v7, v4, -0x1

    aget-wide v7, p3, v7

    mul-double/2addr v5, v7

    aput-wide v5, p5, v2

    add-int/2addr v2, v3

    const-wide/high16 v5, -0x4000000000000000L    # -2.0

    aget-wide v7, p3, v4

    mul-double v4, v5, v7

    aput-wide v4, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_a8
.end method

.method radb3(II[DI[DII)V
    .registers 47

    add-int v3, p7, p1

    const/4 v1, 0x0

    :goto_3
    move/from16 v0, p2

    if-ge v1, v0, :cond_41

    mul-int v2, v1, p1

    mul-int/lit8 v4, v2, 0x3

    add-int v4, v4, p4

    mul-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v4

    aget-wide v6, p3, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-int/lit8 v4, v5, -0x1

    aget-wide v10, p3, v4

    mul-double/2addr v8, v10

    const-wide/high16 v10, -0x4020000000000000L    # -0.5

    mul-double/2addr v10, v8

    add-double/2addr v10, v6

    const-wide v12, 0x3ffbb67ae8584cabL    # 1.7320508075688774

    aget-wide v4, p3, v5

    mul-double/2addr v4, v12

    add-int v2, v2, p6

    add-double/2addr v6, v8

    aput-wide v6, p5, v2

    add-int v2, v1, p2

    mul-int v2, v2, p1

    add-int v2, v2, p6

    sub-double v6, v10, v4

    aput-wide v6, p5, v2

    mul-int/lit8 v2, p2, 0x2

    add-int/2addr v2, v1

    mul-int v2, v2, p1

    add-int v2, v2, p6

    add-double/2addr v4, v10

    aput-wide v4, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_41
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_47

    :cond_46
    return-void

    :cond_47
    mul-int v4, p2, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_4b
    move/from16 v0, p2

    if-ge v2, v0, :cond_46

    mul-int v5, v2, p1

    mul-int/lit8 v6, v5, 0x3

    add-int v7, v6, p1

    add-int v8, v7, p1

    add-int v9, v5, v4

    add-int v10, v9, v4

    const/4 v1, 0x2

    :goto_5c
    move/from16 v0, p1

    if-ge v1, v0, :cond_106

    sub-int v11, p1, v1

    add-int v12, p4, v1

    add-int v11, v11, p4

    add-int v13, p6, v1

    add-int v14, v12, v6

    add-int/2addr v12, v8

    add-int/2addr v11, v7

    add-int/lit8 v15, v14, -0x1

    aget-wide v15, p3, v15

    aget-wide v17, p3, v14

    add-int/lit8 v14, v12, -0x1

    aget-wide v19, p3, v14

    aget-wide v21, p3, v12

    add-int/lit8 v12, v11, -0x1

    aget-wide v23, p3, v12

    aget-wide v11, p3, v11

    add-double v25, v19, v23

    const-wide/high16 v27, -0x4020000000000000L    # -0.5

    mul-double v27, v27, v25

    add-double v27, v27, v15

    sub-double v29, v21, v11

    const-wide/high16 v31, -0x4020000000000000L    # -0.5

    mul-double v31, v31, v29

    add-double v31, v31, v17

    const-wide v33, 0x3febb67ae8584cabL    # 0.8660254037844387

    sub-double v19, v19, v23

    mul-double v19, v19, v33

    const-wide v23, 0x3febb67ae8584cabL    # 0.8660254037844387

    add-double v11, v11, v21

    mul-double v11, v11, v23

    sub-double v21, v27, v11

    add-double v11, v11, v27

    add-double v23, v31, v19

    sub-double v19, v31, v19

    add-int/lit8 v14, v1, -0x1

    add-int v14, v14, p7

    add-int/lit8 v27, v1, -0x1

    add-int v27, v27, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v28, v0

    add-int/lit8 v31, v14, -0x1

    aget-wide v31, v28, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v28, v0

    aget-wide v33, v28, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v28, v27, -0x1

    aget-wide v35, v14, v28

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v27, v14, v27

    add-int v14, v13, v5

    add-int v37, v13, v9

    add-int/2addr v13, v10

    add-int/lit8 v38, v14, -0x1

    add-double v15, v15, v25

    aput-wide v15, p5, v38

    add-double v15, v17, v29

    aput-wide v15, p5, v14

    add-int/lit8 v14, v37, -0x1

    mul-double v15, v31, v21

    mul-double v17, v33, v23

    sub-double v15, v15, v17

    aput-wide v15, p5, v14

    mul-double v14, v31, v23

    mul-double v16, v33, v21

    add-double v14, v14, v16

    aput-wide v14, p5, v37

    add-int/lit8 v14, v13, -0x1

    mul-double v15, v35, v11

    mul-double v17, v27, v19

    sub-double v15, v15, v17

    aput-wide v15, p5, v14

    mul-double v14, v35, v19

    mul-double v11, v11, v27

    add-double/2addr v11, v14

    aput-wide v11, p5, v13

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_5c

    :cond_106
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_4b
.end method

.method radb4(II[DI[DII)V
    .registers 59

    add-int v3, p7, p1

    add-int v4, v3, p1

    mul-int v5, p2, p1

    const/4 v1, 0x0

    :goto_7
    move/from16 v0, p2

    if-ge v1, v0, :cond_54

    mul-int v2, v1, p1

    mul-int/lit8 v6, v2, 0x4

    add-int v7, v2, v5

    add-int v8, v7, v5

    add-int v9, v8, v5

    add-int v10, v6, p1

    add-int v11, v10, p1

    add-int v12, v11, p1

    add-int v6, v6, p4

    aget-wide v13, p3, v6

    add-int v6, p4, v11

    aget-wide v15, p3, v6

    add-int v6, p4, p1

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v12

    aget-wide v11, p3, v6

    add-int v6, p4, p1

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v10

    aget-wide v17, p3, v6

    sub-double v19, v13, v11

    add-double v10, v13, v11

    add-double v12, v17, v17

    add-double v14, v15, v15

    add-int v2, v2, p6

    add-double v16, v10, v12

    aput-wide v16, p5, v2

    add-int v2, p6, v7

    sub-double v6, v19, v14

    aput-wide v6, p5, v2

    add-int v2, p6, v8

    sub-double v6, v10, v12

    aput-wide v6, p5, v2

    add-int v2, p6, v9

    add-double v6, v19, v14

    aput-wide v6, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_54
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ge v0, v1, :cond_5a

    :cond_59
    return-void

    :cond_5a
    const/4 v1, 0x2

    move/from16 v0, p1

    if-eq v0, v1, :cond_151

    const/4 v1, 0x0

    move v2, v1

    :goto_61
    move/from16 v0, p2

    if-ge v2, v0, :cond_14c

    mul-int v6, v2, p1

    add-int v7, v6, v5

    add-int v8, v7, v5

    add-int v9, v8, v5

    mul-int/lit8 v10, v6, 0x4

    add-int v11, v10, p1

    add-int v12, v11, p1

    add-int v13, v12, p1

    const/4 v1, 0x2

    :goto_76
    move/from16 v0, p1

    if-ge v1, v0, :cond_147

    sub-int v14, p1, v1

    add-int/lit8 v15, v1, -0x1

    add-int v15, v15, p7

    add-int/lit8 v16, v1, -0x1

    add-int v16, v16, v3

    add-int/lit8 v17, v1, -0x1

    add-int v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, -0x1

    aget-wide v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v20, v0

    aget-wide v20, v20, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v22, v16, -0x1

    aget-wide v22, v15, v22

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    aget-wide v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v26, v0

    aget-wide v26, v26, v17

    add-int v17, p4, v1

    add-int v14, v14, p4

    add-int v28, p6, v1

    add-int v29, v17, v10

    add-int v30, v14, v11

    add-int v17, v17, v12

    add-int/2addr v14, v13

    add-int/lit8 v31, v29, -0x1

    aget-wide v31, p3, v31

    aget-wide v33, p3, v29

    add-int/lit8 v29, v30, -0x1

    aget-wide v35, p3, v29

    aget-wide v29, p3, v30

    add-int/lit8 v37, v17, -0x1

    aget-wide v37, p3, v37

    aget-wide v39, p3, v17

    add-int/lit8 v17, v14, -0x1

    aget-wide v41, p3, v17

    aget-wide v43, p3, v14

    add-double v45, v33, v43

    sub-double v33, v33, v43

    sub-double v43, v39, v29

    add-double v29, v29, v39

    sub-double v39, v31, v41

    add-double v31, v31, v41

    sub-double v41, v37, v35

    add-double v35, v35, v37

    sub-double v37, v31, v35

    sub-double v47, v33, v43

    sub-double v49, v39, v29

    add-double v29, v29, v39

    add-double v39, v45, v41

    sub-double v41, v45, v41

    add-int v14, v28, v6

    add-int v17, v28, v7

    add-int v45, v28, v8

    add-int v28, v28, v9

    add-int/lit8 v46, v14, -0x1

    add-double v31, v31, v35

    aput-wide v31, p5, v46

    add-double v31, v33, v43

    aput-wide v31, p5, v14

    add-int/lit8 v14, v17, -0x1

    mul-double v31, v18, v49

    mul-double v33, v20, v39

    sub-double v31, v31, v33

    aput-wide v31, p5, v14

    mul-double v18, v18, v39

    mul-double v20, v20, v49

    add-double v18, v18, v20

    aput-wide v18, p5, v17

    add-int/lit8 v14, v45, -0x1

    mul-double v17, v22, v37

    mul-double v19, v15, v47

    sub-double v17, v17, v19

    aput-wide v17, p5, v14

    mul-double v17, v22, v47

    mul-double v14, v15, v37

    add-double v14, v14, v17

    aput-wide v14, p5, v45

    add-int/lit8 v14, v28, -0x1

    mul-double v15, v24, v29

    mul-double v17, v26, v41

    sub-double v15, v15, v17

    aput-wide v15, p5, v14

    mul-double v14, v24, v41

    mul-double v16, v26, v29

    add-double v14, v14, v16

    aput-wide v14, p5, v28

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_76

    :cond_147
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_61

    :cond_14c
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_59

    :cond_151
    const/4 v1, 0x0

    :goto_152
    move/from16 v0, p2

    if-ge v1, v0, :cond_59

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

    aget-wide v13, p3, v3

    add-int/lit8 v3, v11, -0x1

    add-int/2addr v3, v9

    aget-wide v15, p3, v3

    add-int v3, p4, v8

    aget-wide v8, p3, v3

    add-int v3, p4, v10

    aget-wide v10, p3, v3

    add-double v17, v8, v10

    sub-double v8, v10, v8

    sub-double v10, v13, v15

    add-double/2addr v13, v15

    add-int/lit8 v3, v12, -0x1

    add-int/2addr v2, v3

    add-double/2addr v13, v13

    aput-wide v13, p5, v2

    add-int/lit8 v2, v12, -0x1

    add-int/2addr v2, v4

    const-wide v3, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    sub-double v13, v10, v17

    mul-double/2addr v3, v13

    aput-wide v3, p5, v2

    add-int/lit8 v2, v12, -0x1

    add-int/2addr v2, v6

    add-double v3, v8, v8

    aput-wide v3, p5, v2

    add-int/lit8 v2, v12, -0x1

    add-int/2addr v2, v7

    const-wide v3, -0x40095f619980c433L    # -1.4142135623730951

    add-double v6, v10, v17

    mul-double/2addr v3, v6

    aput-wide v3, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_152
.end method

.method radb5(II[DI[DII)V
    .registers 79

    add-int v3, p7, p1

    add-int v4, v3, p1

    add-int v5, v4, p1

    mul-int v6, p2, p1

    const/4 v1, 0x0

    :goto_9
    move/from16 v0, p2

    if-ge v1, v0, :cond_b0

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

    aget-wide v17, p3, v7

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    add-int v7, p4, v9

    aget-wide v21, p3, v7

    mul-double v19, v19, v21

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    add-int v7, p4, v11

    aget-wide v23, p3, v7

    mul-double v21, v21, v23

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    add-int v7, v16, v8

    aget-wide v7, p3, v7

    mul-double v7, v7, v23

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    add-int v9, v16, v10

    aget-wide v9, p3, v9

    mul-double v9, v9, v23

    const-wide v23, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v23, v23, v7

    add-double v23, v23, v17

    const-wide v25, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v25, v25, v9

    add-double v23, v23, v25

    const-wide v25, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v25, v25, v7

    add-double v25, v25, v17

    const-wide v27, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v27, v27, v9

    add-double v25, v25, v27

    const-wide v27, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v27, v27, v19

    const-wide v29, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v29, v29, v21

    add-double v27, v27, v29

    const-wide v29, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v19, v19, v29

    const-wide v29, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v21, v21, v29

    sub-double v19, v19, v21

    add-int v2, v2, p6

    add-double v7, v7, v17

    add-double/2addr v7, v9

    aput-wide v7, p5, v2

    add-int v2, p6, v12

    sub-double v7, v23, v27

    aput-wide v7, p5, v2

    add-int v2, p6, v13

    sub-double v7, v25, v19

    aput-wide v7, p5, v2

    add-int v2, p6, v14

    add-double v7, v25, v19

    aput-wide v7, p5, v2

    add-int v2, p6, v15

    add-double v7, v23, v27

    aput-wide v7, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    :cond_b0
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_b6

    :cond_b5
    return-void

    :cond_b6
    const/4 v1, 0x0

    move v2, v1

    :goto_b8
    move/from16 v0, p2

    if-ge v2, v0, :cond_b5

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

    :goto_d1
    move/from16 v0, p1

    if-ge v1, v0, :cond_269

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

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v22, v0

    add-int/lit8 v23, v18, -0x1

    aget-wide v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v24, v0

    aget-wide v24, v24, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v18, v0

    add-int/lit8 v26, v19, -0x1

    aget-wide v26, v18, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v18, v0

    aget-wide v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v28, v0

    add-int/lit8 v29, v20, -0x1

    aget-wide v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v20, v0

    add-int/lit8 v32, v21, -0x1

    aget-wide v32, v20, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v20, v0

    aget-wide v20, v20, v21

    add-int v34, p4, v1

    add-int v17, v17, p4

    add-int v35, p6, v1

    add-int v36, v34, v8

    add-int v37, v17, v9

    add-int v38, v34, v10

    add-int v17, v17, v11

    add-int v34, v34, v12

    add-int/lit8 v39, v36, -0x1

    aget-wide v39, p3, v39

    aget-wide v41, p3, v36

    add-int/lit8 v36, v37, -0x1

    aget-wide v43, p3, v36

    aget-wide v36, p3, v37

    add-int/lit8 v45, v38, -0x1

    aget-wide v45, p3, v45

    aget-wide v47, p3, v38

    add-int/lit8 v38, v17, -0x1

    aget-wide v49, p3, v38

    aget-wide v51, p3, v17

    add-int/lit8 v17, v34, -0x1

    aget-wide v53, p3, v17

    aget-wide v55, p3, v34

    add-double v57, v47, v36

    sub-double v36, v47, v36

    add-double v47, v55, v51

    sub-double v51, v55, v51

    sub-double v55, v45, v43

    add-double v43, v43, v45

    sub-double v45, v53, v49

    add-double v49, v49, v53

    const-wide v53, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v53, v53, v43

    add-double v53, v53, v39

    const-wide v59, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v59, v59, v49

    add-double v53, v53, v59

    const-wide v59, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v59, v59, v36

    add-double v59, v59, v41

    const-wide v61, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v61, v61, v51

    add-double v59, v59, v61

    const-wide v61, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v61, v61, v43

    add-double v61, v61, v39

    const-wide v63, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v63, v63, v49

    add-double v61, v61, v63

    const-wide v63, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v63, v63, v36

    add-double v63, v63, v41

    const-wide v65, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v65, v65, v51

    add-double v63, v63, v65

    const-wide v65, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v65, v65, v55

    const-wide v67, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v67, v67, v45

    add-double v65, v65, v67

    const-wide v67, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v67, v67, v57

    const-wide v69, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v69, v69, v47

    add-double v67, v67, v69

    const-wide v69, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v55, v55, v69

    const-wide v69, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v45, v45, v69

    sub-double v45, v55, v45

    const-wide v55, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v55, v55, v57

    const-wide v57, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v47, v47, v57

    sub-double v47, v55, v47

    sub-double v55, v61, v47

    add-double v47, v47, v61

    add-double v57, v63, v45

    sub-double v45, v63, v45

    add-double v61, v53, v67

    sub-double v53, v53, v67

    sub-double v63, v59, v65

    add-double v59, v59, v65

    add-int v17, v35, v7

    add-int v34, v35, v13

    add-int v38, v35, v14

    add-int v65, v35, v15

    add-int v35, v35, v16

    add-int/lit8 v66, v17, -0x1

    add-double v39, v39, v43

    add-double v39, v39, v49

    aput-wide v39, p5, v66

    add-double v36, v36, v41

    add-double v36, v36, v51

    aput-wide v36, p5, v17

    add-int/lit8 v17, v34, -0x1

    mul-double v36, v22, v53

    mul-double v39, v24, v59

    sub-double v36, v36, v39

    aput-wide v36, p5, v17

    mul-double v22, v22, v59

    mul-double v24, v24, v53

    add-double v22, v22, v24

    aput-wide v22, p5, v34

    add-int/lit8 v17, v38, -0x1

    mul-double v22, v26, v55

    mul-double v24, v18, v57

    sub-double v22, v22, v24

    aput-wide v22, p5, v17

    mul-double v22, v26, v57

    mul-double v17, v18, v55

    add-double v17, v17, v22

    aput-wide v17, p5, v38

    add-int/lit8 v17, v65, -0x1

    mul-double v18, v28, v47

    mul-double v22, v30, v45

    sub-double v18, v18, v22

    aput-wide v18, p5, v17

    mul-double v17, v28, v45

    mul-double v22, v30, v47

    add-double v17, v17, v22

    aput-wide v17, p5, v65

    add-int/lit8 v17, v35, -0x1

    mul-double v18, v32, v61

    mul-double v22, v20, v63

    sub-double v18, v18, v22

    aput-wide v18, p5, v17

    mul-double v17, v32, v63

    mul-double v19, v20, v61

    add-double v17, v17, v19

    aput-wide v17, p5, v35

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_d1

    :cond_269
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_b8
.end method

.method radbg(IIII[DI[DII)V
    .registers 45

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, p2

    int-to-double v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    add-int/lit8 v5, p1, -0x1

    div-int/lit8 v22, v5, 0x2

    add-int/lit8 v5, p2, 0x1

    div-int/lit8 v23, v5, 0x2

    mul-int v7, p2, p1

    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_41

    const/4 v5, 0x0

    move v6, v5

    :goto_23
    move/from16 v0, p3

    if-ge v6, v0, :cond_61

    mul-int v8, v6, p1

    mul-int v9, v6, v7

    const/4 v5, 0x0

    :goto_2c
    move/from16 v0, p1

    if-ge v5, v0, :cond_3d

    add-int v10, p8, v5

    add-int/2addr v10, v8

    add-int v11, p6, v5

    add-int/2addr v11, v9

    aget-wide v11, p5, v11

    aput-wide v11, p7, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_3d
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_23

    :cond_41
    const/4 v5, 0x0

    move v6, v5

    :goto_43
    move/from16 v0, p1

    if-ge v6, v0, :cond_61

    add-int v8, p8, v6

    add-int v9, p6, v6

    const/4 v5, 0x0

    :goto_4c
    move/from16 v0, p3

    if-ge v5, v0, :cond_5d

    mul-int v10, v5, p1

    add-int/2addr v10, v8

    mul-int v11, v5, v7

    add-int/2addr v11, v9

    aget-wide v11, p5, v11

    aput-wide v11, p7, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    :cond_5d
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_43

    :cond_61
    add-int v5, p6, p1

    add-int/lit8 v7, v5, -0x1

    const/4 v5, 0x1

    move v6, v5

    :goto_67
    move/from16 v0, v23

    if-ge v6, v0, :cond_a2

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

    if-ge v5, v0, :cond_9e

    mul-int v11, v5, p1

    mul-int v12, v11, p2

    add-int v13, v7, v8

    add-int/2addr v13, v12

    sub-int v13, v13, p1

    add-int v14, p6, v8

    add-int/2addr v12, v14

    aget-wide v13, p5, v13

    aget-wide v15, p5, v12

    add-int v12, p8, v11

    add-int/2addr v12, v9

    add-double/2addr v13, v13

    aput-wide v13, p7, v12

    add-int v11, v11, p8

    add-int/2addr v11, v10

    add-double v12, v15, v15

    aput-wide v12, p7, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_7a

    :cond_9e
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_67

    :cond_a2
    const/4 v5, 0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_17b

    move/from16 v0, v22

    move/from16 v1, p3

    if-lt v0, v1, :cond_115

    const/4 v5, 0x1

    move v7, v5

    :goto_af
    move/from16 v0, v23

    if-ge v7, v0, :cond_17b

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

    if-ge v6, v0, :cond_111

    mul-int v5, v6, p1

    add-int v11, v5, v8

    mul-int v5, v6, p1

    add-int v12, v5, v9

    mul-int v5, v6, p2

    mul-int v5, v5, p1

    add-int v13, v5, v10

    const/4 v5, 0x2

    :goto_d6
    move/from16 v0, p1

    if-ge v5, v0, :cond_10d

    sub-int v14, p1, v5

    add-int v15, p8, v5

    add-int v14, v14, p6

    add-int v16, p6, v5

    add-int v17, v15, v11

    add-int/2addr v15, v12

    add-int v16, v16, v13

    add-int/2addr v14, v13

    sub-int v14, v14, p1

    add-int/lit8 v24, v16, -0x1

    aget-wide v24, p5, v24

    aget-wide v26, p5, v16

    add-int/lit8 v16, v14, -0x1

    aget-wide v28, p5, v16

    aget-wide v30, p5, v14

    add-int/lit8 v14, v17, -0x1

    add-double v32, v24, v28

    aput-wide v32, p7, v14

    add-int/lit8 v14, v15, -0x1

    sub-double v24, v24, v28

    aput-wide v24, p7, v14

    sub-double v24, v26, v30

    aput-wide v24, p7, v17

    add-double v16, v26, v30

    aput-wide v16, p7, v15

    add-int/lit8 v5, v5, 0x2

    goto :goto_d6

    :cond_10d
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_c3

    :cond_111
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_af

    :cond_115
    const/4 v5, 0x1

    move v7, v5

    :goto_117
    move/from16 v0, v23

    if-ge v7, v0, :cond_17b

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

    if-ge v6, v0, :cond_177

    sub-int v5, p1, v6

    add-int v11, p8, v6

    add-int v12, p6, v5

    add-int v13, p6, v6

    const/4 v5, 0x0

    :goto_138
    move/from16 v0, p3

    if-ge v5, v0, :cond_173

    mul-int v14, v5, p1

    add-int/2addr v14, v8

    mul-int v15, v5, p1

    add-int/2addr v15, v9

    mul-int v16, v5, p2

    mul-int v16, v16, p1

    add-int v16, v16, v10

    add-int/2addr v14, v11

    add-int/2addr v15, v11

    add-int v17, v13, v16

    add-int v16, v16, v12

    sub-int v16, v16, p1

    add-int/lit8 v24, v17, -0x1

    aget-wide v24, p5, v24

    aget-wide v26, p5, v17

    add-int/lit8 v17, v16, -0x1

    aget-wide v28, p5, v17

    aget-wide v16, p5, v16

    add-int/lit8 v30, v14, -0x1

    add-double v31, v24, v28

    aput-wide v31, p7, v30

    add-int/lit8 v30, v15, -0x1

    sub-double v24, v24, v28

    aput-wide v24, p7, v30

    sub-double v24, v26, v16

    aput-wide v24, p7, v14

    add-double v16, v16, v26

    aput-wide v16, p7, v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_138

    :cond_173
    add-int/lit8 v5, v6, 0x2

    move v6, v5

    goto :goto_12b

    :cond_177
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_117

    :cond_17b
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v15, 0x0

    add-int/lit8 v5, p2, -0x1

    mul-int v24, v5, p4

    const/4 v5, 0x1

    move/from16 v17, v5

    move-wide v5, v9

    :goto_187
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_20c

    sub-int v7, p2, v17

    mul-double v8, v18, v5

    mul-double v10, v20, v15

    sub-double v9, v8, v10

    mul-double v11, v18, v15

    mul-double v5, v5, v20

    add-double v15, v11, v5

    mul-int v25, v17, p4

    mul-int v26, v7, p4

    const/4 v5, 0x0

    :goto_1a0
    move/from16 v0, p4

    if-ge v5, v0, :cond_1c0

    add-int v6, p6, v5

    add-int v7, p8, v5

    add-int v8, v6, v25

    aget-wide v11, p7, v7

    add-int v13, v7, p4

    aget-wide v13, p7, v13

    mul-double/2addr v13, v9

    add-double/2addr v11, v13

    aput-wide v11, p5, v8

    add-int v6, v6, v26

    add-int v7, v7, v24

    aget-wide v7, p7, v7

    mul-double/2addr v7, v15

    aput-wide v7, p5, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a0

    :cond_1c0
    const/4 v5, 0x2

    move v6, v5

    move-wide v7, v9

    move-wide v13, v15

    :goto_1c4
    move/from16 v0, v23

    if-ge v6, v0, :cond_205

    sub-int v5, p2, v6

    mul-double v11, v9, v7

    mul-double v27, v15, v13

    sub-double v11, v11, v27

    mul-double/2addr v13, v9

    mul-double/2addr v7, v15

    add-double/2addr v7, v13

    mul-int v13, v6, p4

    mul-int v14, v5, p4

    const/4 v5, 0x0

    :goto_1d8
    move/from16 v0, p4

    if-ge v5, v0, :cond_1ff

    add-int v27, p6, v5

    add-int v28, p8, v5

    add-int v29, v27, v25

    aget-wide v30, p5, v29

    add-int v32, v28, v13

    aget-wide v32, p7, v32

    mul-double v32, v32, v11

    add-double v30, v30, v32

    aput-wide v30, p5, v29

    add-int v27, v27, v26

    aget-wide v29, p5, v27

    add-int v28, v28, v14

    aget-wide v31, p7, v28

    mul-double v31, v31, v7

    add-double v28, v29, v31

    aput-wide v28, p5, v27

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d8

    :cond_1ff
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-wide v13, v7

    move-wide v7, v11

    goto :goto_1c4

    :cond_205
    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    move-wide v5, v9

    goto/16 :goto_187

    :cond_20c
    const/4 v5, 0x1

    move v6, v5

    :goto_20e
    move/from16 v0, v23

    if-ge v6, v0, :cond_22b

    mul-int v7, v6, p4

    const/4 v5, 0x0

    :goto_215
    move/from16 v0, p4

    if-ge v5, v0, :cond_227

    add-int v8, p8, v5

    aget-wide v9, p7, v8

    add-int v11, v8, v7

    aget-wide v11, p7, v11

    add-double/2addr v9, v11

    aput-wide v9, p7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_215

    :cond_227
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_20e

    :cond_22b
    const/4 v5, 0x1

    move v6, v5

    :goto_22d
    move/from16 v0, v23

    if-ge v6, v0, :cond_261

    sub-int v5, p2, v6

    mul-int v7, v6, p3

    mul-int v7, v7, p1

    mul-int v5, v5, p3

    mul-int v8, v5, p1

    const/4 v5, 0x0

    :goto_23c
    move/from16 v0, p3

    if-ge v5, v0, :cond_25d

    mul-int v9, v5, p1

    add-int v10, p8, v9

    add-int v11, p6, v9

    add-int/2addr v11, v7

    add-int v9, v9, p6

    add-int/2addr v9, v8

    aget-wide v11, p5, v11

    aget-wide v13, p5, v9

    add-int v9, v10, v7

    sub-double v15, v11, v13

    aput-wide v15, p7, v9

    add-int v9, v10, v8

    add-double v10, v11, v13

    aput-wide v10, p7, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_23c

    :cond_25d
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_22d

    :cond_261
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_267

    :cond_266
    return-void

    :cond_267
    move/from16 v0, v22

    move/from16 v1, p3

    if-lt v0, v1, :cond_2c3

    const/4 v5, 0x1

    move v7, v5

    :goto_26f
    move/from16 v0, v23

    if-ge v7, v0, :cond_31a

    sub-int v5, p2, v7

    mul-int v6, v7, p3

    mul-int v8, v6, p1

    mul-int v5, v5, p3

    mul-int v9, v5, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_27f
    move/from16 v0, p3

    if-ge v6, v0, :cond_2bf

    mul-int v10, v6, p1

    const/4 v5, 0x2

    :goto_286
    move/from16 v0, p1

    if-ge v5, v0, :cond_2bb

    add-int v11, p8, v5

    add-int v12, p6, v5

    add-int v13, v11, v10

    add-int/2addr v13, v8

    add-int/2addr v11, v10

    add-int/2addr v11, v9

    add-int v14, v12, v10

    add-int/2addr v14, v8

    add-int/2addr v12, v10

    add-int/2addr v12, v9

    add-int/lit8 v15, v14, -0x1

    aget-wide v15, p5, v15

    aget-wide v17, p5, v14

    add-int/lit8 v14, v12, -0x1

    aget-wide v19, p5, v14

    aget-wide v24, p5, v12

    add-int/lit8 v12, v13, -0x1

    sub-double v26, v15, v24

    aput-wide v26, p7, v12

    add-int/lit8 v12, v11, -0x1

    add-double v14, v15, v24

    aput-wide v14, p7, v12

    add-double v14, v17, v19

    aput-wide v14, p7, v13

    sub-double v12, v17, v19

    aput-wide v12, p7, v11

    add-int/lit8 v5, v5, 0x2

    goto :goto_286

    :cond_2bb
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_27f

    :cond_2bf
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_26f

    :cond_2c3
    const/4 v5, 0x1

    move v7, v5

    :goto_2c5
    move/from16 v0, v23

    if-ge v7, v0, :cond_31a

    sub-int v5, p2, v7

    mul-int v6, v7, p3

    mul-int v8, v6, p1

    mul-int v5, v5, p3

    mul-int v9, v5, p1

    const/4 v5, 0x2

    move v6, v5

    :goto_2d5
    move/from16 v0, p1

    if-ge v6, v0, :cond_316

    add-int v10, p8, v6

    add-int v11, p6, v6

    const/4 v5, 0x0

    :goto_2de
    move/from16 v0, p3

    if-ge v5, v0, :cond_312

    mul-int v12, v5, p1

    add-int v13, v10, v12

    add-int/2addr v13, v8

    add-int v14, v10, v12

    add-int/2addr v14, v9

    add-int v15, v11, v12

    add-int/2addr v15, v8

    add-int/2addr v12, v11

    add-int/2addr v12, v9

    add-int/lit8 v16, v15, -0x1

    aget-wide v16, p5, v16

    aget-wide v18, p5, v15

    add-int/lit8 v15, v12, -0x1

    aget-wide v20, p5, v15

    aget-wide v24, p5, v12

    add-int/lit8 v12, v13, -0x1

    sub-double v26, v16, v24

    aput-wide v26, p7, v12

    add-int/lit8 v12, v14, -0x1

    add-double v15, v16, v24

    aput-wide v15, p7, v12

    add-double v15, v18, v20

    aput-wide v15, p7, v13

    sub-double v12, v18, v20

    aput-wide v12, p7, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_2de

    :cond_312
    add-int/lit8 v5, v6, 0x2

    move v6, v5

    goto :goto_2d5

    :cond_316
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_2c5

    :cond_31a
    move-object/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x1

    move v6, v5

    :goto_329
    move/from16 v0, p2

    if-ge v6, v0, :cond_348

    mul-int v5, v6, p3

    mul-int v7, v5, p1

    const/4 v5, 0x0

    :goto_332
    move/from16 v0, p3

    if-ge v5, v0, :cond_344

    mul-int v8, v5, p1

    add-int/2addr v8, v7

    add-int v9, p6, v8

    add-int v8, v8, p8

    aget-wide v10, p7, v8

    aput-wide v10, p5, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_332

    :cond_344
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_329

    :cond_348
    move/from16 v0, v22

    move/from16 v1, p3

    if-gt v0, v1, :cond_3b2

    move/from16 v0, p1

    neg-int v6, v0

    const/4 v5, 0x1

    move v8, v5

    move v5, v6

    :goto_354
    move/from16 v0, p2

    if-ge v8, v0, :cond_266

    add-int v9, v5, p1

    add-int/lit8 v6, v9, -0x1

    mul-int v5, v8, p3

    mul-int v10, v5, p1

    const/4 v5, 0x2

    move/from16 v34, v5

    move v5, v6

    move/from16 v6, v34

    :goto_366
    move/from16 v0, p1

    if-ge v6, v0, :cond_3ad

    add-int/lit8 v7, v5, 0x2

    add-int v5, v7, p9

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v12, v5, -0x1

    aget-wide v11, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v13, v13, v5

    add-int v15, p6, v6

    add-int v16, p8, v6

    const/4 v5, 0x0

    :goto_381
    move/from16 v0, p3

    if-ge v5, v0, :cond_3a8

    mul-int v17, v5, p1

    add-int v17, v17, v10

    add-int v18, v15, v17

    add-int v17, v17, v16

    add-int/lit8 v19, v17, -0x1

    aget-wide v19, p7, v19

    aget-wide v21, p7, v17

    add-int/lit8 v17, v18, -0x1

    mul-double v23, v11, v19

    mul-double v25, v13, v21

    sub-double v23, v23, v25

    aput-wide v23, p5, v17

    mul-double v21, v21, v11

    mul-double v19, v19, v13

    add-double v19, v19, v21

    aput-wide v19, p5, v18

    add-int/lit8 v5, v5, 0x1

    goto :goto_381

    :cond_3a8
    add-int/lit8 v5, v6, 0x2

    move v6, v5

    move v5, v7

    goto :goto_366

    :cond_3ad
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v9

    goto :goto_354

    :cond_3b2
    move/from16 v0, p1

    neg-int v6, v0

    const/4 v5, 0x1

    move v8, v5

    move v5, v6

    :goto_3b8
    move/from16 v0, p2

    if-ge v8, v0, :cond_266

    add-int v9, v5, p1

    mul-int v5, v8, p3

    mul-int v10, v5, p1

    const/4 v5, 0x0

    move v7, v5

    :goto_3c4
    move/from16 v0, p3

    if-ge v7, v0, :cond_40a

    add-int/lit8 v6, v9, -0x1

    mul-int v5, v7, p1

    add-int v11, v5, v10

    const/4 v5, 0x2

    :goto_3cf
    move/from16 v0, p1

    if-ge v5, v0, :cond_406

    add-int/lit8 v6, v6, 0x2

    add-int v12, v6, p9

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v14, v12, -0x1

    aget-wide v13, v13, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v15, v15, v12

    add-int v12, p6, v5

    add-int v17, p8, v5

    add-int/2addr v12, v11

    add-int v17, v17, v11

    add-int/lit8 v18, v17, -0x1

    aget-wide v18, p7, v18

    aget-wide v20, p7, v17

    add-int/lit8 v17, v12, -0x1

    mul-double v22, v13, v18

    mul-double v24, v15, v20

    sub-double v22, v22, v24

    aput-wide v22, p5, v17

    mul-double v13, v13, v20

    mul-double v15, v15, v18

    add-double/2addr v13, v15

    aput-wide v13, p5, v12

    add-int/lit8 v5, v5, 0x2

    goto :goto_3cf

    :cond_406
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_3c4

    :cond_40a
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v9

    goto :goto_3b8
.end method

.method radf2(II[DI[DII)V
    .registers 35

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

    aget-wide v8, p3, v6

    aget-wide v6, p3, v7

    add-double v10, v8, v6

    aput-wide v10, p5, v3

    sub-double v6, v8, v6

    aput-wide v6, p5, v5

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

    if-eq v0, v2, :cond_a0

    const/4 v2, 0x0

    :goto_32
    move/from16 v0, p2

    if-ge v2, v0, :cond_9b

    mul-int v3, v2, p1

    mul-int/lit8 v5, v3, 0x2

    add-int v6, v5, p1

    add-int v7, v3, v4

    const/4 v1, 0x2

    :goto_3f
    move/from16 v0, p1

    if-ge v1, v0, :cond_96

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

    aget-wide v13, p3, v13

    aget-wide v15, p3, v11

    add-int/lit8 v11, v12, -0x1

    aget-wide v17, p3, v11

    aget-wide v11, p3, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v19, v0

    add-int/lit8 v20, v9, -0x1

    aget-wide v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v21, v0

    aget-wide v21, v21, v9

    mul-double v23, v19, v17

    mul-double v25, v21, v11

    add-double v23, v23, v25

    mul-double v11, v11, v19

    mul-double v17, v17, v21

    sub-double v11, v11, v17

    add-double v17, v15, v11

    aput-wide v17, p5, v10

    add-int/lit8 v9, v10, -0x1

    add-double v17, v13, v23

    aput-wide v17, p5, v9

    sub-double v9, v11, v15

    aput-wide v9, p5, v8

    add-int/lit8 v8, v8, -0x1

    sub-double v9, v13, v23

    aput-wide v9, p5, v8

    add-int/lit8 v1, v1, 0x2

    goto :goto_3f

    :cond_96
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_32

    :cond_9b
    rem-int/lit8 v2, p1, 0x2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2b

    :cond_a0
    mul-int/lit8 v2, v1, 0x2

    const/4 v1, 0x0

    :goto_a3
    move/from16 v0, p2

    if-ge v1, v0, :cond_2b

    mul-int v3, v1, p1

    add-int v5, p6, v2

    add-int v5, v5, p1

    add-int v6, p4, p1

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v3, v6

    add-int v6, v3, v4

    aget-wide v6, p3, v6

    neg-double v6, v6

    aput-wide v6, p5, v5

    add-int/lit8 v5, v5, -0x1

    aget-wide v6, p3, v3

    aput-wide v6, p5, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_a3
.end method

.method radf3(II[DI[DII)V
    .registers 46

    add-int v3, p7, p1

    mul-int v4, p2, p1

    const/4 v1, 0x0

    :goto_5
    move/from16 v0, p2

    if-ge v1, v0, :cond_44

    mul-int v2, v1, p1

    mul-int/lit8 v5, v4, 0x2

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x1

    mul-int v6, v6, p1

    add-int v7, p4, v2

    add-int v8, v7, v4

    add-int/2addr v5, v7

    aget-wide v9, p3, v7

    aget-wide v7, p3, v8

    aget-wide v11, p3, v5

    add-double v13, v7, v11

    mul-int/lit8 v2, v2, 0x3

    add-int v2, v2, p6

    add-double v15, v9, v13

    aput-wide v15, p5, v2

    add-int v2, p6, v6

    add-int v2, v2, p1

    const-wide v15, 0x3febb67ae8584cabL    # 0.8660254037844387

    sub-double v7, v11, v7

    mul-double/2addr v7, v15

    aput-wide v7, p5, v2

    add-int v2, p6, p1

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v6

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    mul-double/2addr v5, v13

    add-double/2addr v5, v9

    aput-wide v5, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_44
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_4a

    :cond_49
    return-void

    :cond_4a
    const/4 v1, 0x0

    move v2, v1

    :goto_4c
    move/from16 v0, p2

    if-ge v2, v0, :cond_49

    mul-int v5, v2, p1

    mul-int/lit8 v6, v5, 0x3

    add-int v7, v5, v4

    add-int v8, v7, v4

    add-int v9, v6, p1

    add-int v10, v9, p1

    const/4 v1, 0x2

    :goto_5d
    move/from16 v0, p1

    if-ge v1, v0, :cond_107

    sub-int v11, p1, v1

    add-int/lit8 v12, v1, -0x1

    add-int v12, v12, p7

    add-int/lit8 v13, v1, -0x1

    add-int/2addr v13, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v15, v12, -0x1

    aget-wide v14, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v18, v13, -0x1

    aget-wide v18, v12, v18

    move-object/from16 v0, p0

    iget-object v12, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v12, v12, v13

    add-int v20, p4, v1

    add-int v21, p6, v1

    add-int v11, v11, p6

    add-int v22, v20, v5

    add-int v23, v20, v7

    add-int v20, v20, v8

    add-int/lit8 v24, v22, -0x1

    aget-wide v24, p3, v24

    aget-wide v26, p3, v22

    add-int/lit8 v22, v23, -0x1

    aget-wide v28, p3, v22

    aget-wide v22, p3, v23

    add-int/lit8 v30, v20, -0x1

    aget-wide v30, p3, v30

    aget-wide v32, p3, v20

    mul-double v34, v14, v28

    mul-double v36, v16, v22

    add-double v34, v34, v36

    mul-double v14, v14, v22

    mul-double v16, v16, v28

    sub-double v14, v14, v16

    mul-double v16, v18, v30

    mul-double v22, v12, v32

    add-double v16, v16, v22

    mul-double v18, v18, v32

    mul-double v12, v12, v30

    sub-double v12, v18, v12

    add-double v18, v34, v16

    add-double v22, v14, v12

    const-wide/high16 v28, -0x4020000000000000L    # -0.5

    mul-double v28, v28, v18

    add-double v28, v28, v24

    const-wide/high16 v30, -0x4020000000000000L    # -0.5

    mul-double v30, v30, v22

    add-double v30, v30, v26

    const-wide v32, 0x3febb67ae8584cabL    # 0.8660254037844387

    sub-double v12, v14, v12

    mul-double v12, v12, v32

    const-wide v14, 0x3febb67ae8584cabL    # 0.8660254037844387

    sub-double v16, v16, v34

    mul-double v14, v14, v16

    add-int v16, v21, v6

    add-int/2addr v11, v9

    add-int v17, v21, v10

    add-int/lit8 v20, v16, -0x1

    add-double v18, v18, v24

    aput-wide v18, p5, v20

    add-double v18, v26, v22

    aput-wide v18, p5, v16

    add-int/lit8 v16, v11, -0x1

    sub-double v18, v28, v12

    aput-wide v18, p5, v16

    sub-double v18, v14, v30

    aput-wide v18, p5, v11

    add-int/lit8 v11, v17, -0x1

    add-double v12, v12, v28

    aput-wide v12, p5, v11

    add-double v11, v30, v14

    aput-wide v11, p5, v17

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_5d

    :cond_107
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_4c
.end method

.method radf4(II[DI[DII)V
    .registers 58

    add-int v3, p7, p1

    add-int v4, v3, p1

    mul-int v5, p2, p1

    const/4 v1, 0x0

    :goto_7
    move/from16 v0, p2

    if-ge v1, v0, :cond_4c

    mul-int v2, v1, p1

    mul-int/lit8 v6, v2, 0x4

    add-int v7, v2, v5

    add-int v8, v7, v5

    add-int v9, v8, v5

    add-int v10, v6, p1

    add-int v2, v2, p4

    aget-wide v11, p3, v2

    add-int v2, p4, v7

    aget-wide v13, p3, v2

    add-int v2, p4, v8

    aget-wide v7, p3, v2

    add-int v2, p4, v9

    aget-wide v15, p3, v2

    add-double v17, v13, v15

    add-double v19, v11, v7

    add-int v2, p6, v6

    add-int v6, p6, v10

    add-int v6, v6, p1

    add-double v9, v17, v19

    aput-wide v9, p5, v2

    add-int/lit8 v2, v6, -0x1

    add-int v2, v2, p1

    add-int v2, v2, p1

    sub-double v9, v19, v17

    aput-wide v9, p5, v2

    add-int/lit8 v2, v6, -0x1

    sub-double v7, v11, v7

    aput-wide v7, p5, v2

    sub-double v7, v15, v13

    aput-wide v7, p5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4c
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ge v0, v1, :cond_52

    :cond_51
    return-void

    :cond_52
    const/4 v1, 0x2

    move/from16 v0, p1

    if-eq v0, v1, :cond_149

    const/4 v1, 0x0

    move v2, v1

    :goto_59
    move/from16 v0, p2

    if-ge v2, v0, :cond_144

    mul-int v6, v2, p1

    add-int v7, v6, v5

    add-int v8, v7, v5

    add-int v9, v8, v5

    mul-int/lit8 v10, v6, 0x4

    add-int v11, v10, p1

    add-int v12, v11, p1

    add-int v13, v12, p1

    const/4 v1, 0x2

    :goto_6e
    move/from16 v0, p1

    if-ge v1, v0, :cond_13f

    sub-int v14, p1, v1

    add-int/lit8 v15, v1, -0x1

    add-int v15, v15, p7

    add-int/lit8 v16, v1, -0x1

    add-int v16, v16, v3

    add-int/lit8 v17, v1, -0x1

    add-int v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, -0x1

    aget-wide v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v20, v0

    aget-wide v20, v20, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v22, v16, -0x1

    aget-wide v22, v15, v22

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    aget-wide v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v26, v0

    aget-wide v26, v26, v17

    add-int v17, p4, v1

    add-int v28, p6, v1

    add-int v14, v14, p6

    add-int v29, v17, v6

    add-int v30, v17, v7

    add-int v31, v17, v8

    add-int v17, v17, v9

    add-int/lit8 v32, v29, -0x1

    aget-wide v32, p3, v32

    aget-wide v34, p3, v29

    add-int/lit8 v29, v30, -0x1

    aget-wide v36, p3, v29

    aget-wide v29, p3, v30

    add-int/lit8 v38, v31, -0x1

    aget-wide v38, p3, v38

    aget-wide v40, p3, v31

    add-int/lit8 v31, v17, -0x1

    aget-wide v42, p3, v31

    aget-wide v44, p3, v17

    mul-double v46, v18, v36

    mul-double v48, v20, v29

    add-double v46, v46, v48

    mul-double v17, v18, v29

    mul-double v19, v20, v36

    sub-double v17, v17, v19

    mul-double v19, v22, v38

    mul-double v29, v15, v40

    add-double v19, v19, v29

    mul-double v21, v22, v40

    mul-double v15, v15, v38

    sub-double v15, v21, v15

    mul-double v21, v24, v42

    mul-double v29, v26, v44

    add-double v21, v21, v29

    mul-double v23, v24, v44

    mul-double v25, v26, v42

    sub-double v23, v23, v25

    add-double v25, v46, v21

    sub-double v21, v21, v46

    add-double v29, v17, v23

    sub-double v17, v17, v23

    add-double v23, v34, v15

    sub-double v15, v34, v15

    add-double v34, v32, v19

    sub-double v19, v32, v19

    add-int v27, v28, v10

    add-int v31, v14, v11

    add-int v28, v28, v12

    add-int/2addr v14, v13

    add-int/lit8 v32, v27, -0x1

    add-double v36, v25, v34

    aput-wide v36, p5, v32

    add-int/lit8 v32, v14, -0x1

    sub-double v25, v34, v25

    aput-wide v25, p5, v32

    add-double v25, v29, v23

    aput-wide v25, p5, v27

    sub-double v23, v29, v23

    aput-wide v23, p5, v14

    add-int/lit8 v14, v28, -0x1

    add-double v23, v17, v19

    aput-wide v23, p5, v14

    add-int/lit8 v14, v31, -0x1

    sub-double v17, v19, v17

    aput-wide v17, p5, v14

    add-double v17, v21, v15

    aput-wide v17, p5, v28

    sub-double v14, v21, v15

    aput-wide v14, p5, v31

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_6e

    :cond_13f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_59

    :cond_144
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_51

    :cond_149
    const/4 v1, 0x0

    :goto_14a
    move/from16 v0, p2

    if-ge v1, v0, :cond_51

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

    aget-wide v13, p3, v2

    add-int/lit8 v2, v11, -0x1

    add-int/2addr v2, v4

    aget-wide v15, p3, v2

    add-int/lit8 v2, v11, -0x1

    add-int/2addr v2, v6

    aget-wide v17, p3, v2

    add-int/lit8 v2, v11, -0x1

    add-int/2addr v2, v7

    aget-wide v6, p3, v2

    const-wide v19, -0x40195f619980c433L    # -0.7071067811865476

    add-double v21, v15, v6

    mul-double v19, v19, v21

    const-wide v21, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    sub-double v6, v15, v6

    mul-double v6, v6, v21

    add-int/lit8 v2, v12, -0x1

    add-int/2addr v2, v3

    add-double v3, v6, v13

    aput-wide v3, p5, v2

    add-int/lit8 v2, v12, -0x1

    add-int/2addr v2, v9

    sub-double v3, v13, v6

    aput-wide v3, p5, v2

    add-int v2, p6, v8

    sub-double v3, v19, v17

    aput-wide v3, p5, v2

    add-int v2, p6, v10

    add-double v3, v19, v17

    aput-wide v3, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_14a
.end method

.method radf5(II[DI[DII)V
    .registers 68

    add-int v3, p7, p1

    add-int v4, v3, p1

    add-int v5, v4, p1

    mul-int v6, p2, p1

    const/4 v1, 0x0

    :goto_9
    move/from16 v0, p2

    if-ge v1, v0, :cond_9c

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

    aget-wide v17, p3, v2

    add-int v2, p4, v12

    aget-wide v19, p3, v2

    add-int v2, p4, v13

    aget-wide v12, p3, v2

    add-int v2, p4, v14

    aget-wide v21, p3, v2

    add-int v2, p4, v15

    aget-wide v14, p3, v2

    add-double v23, v14, v19

    sub-double v14, v14, v19

    add-double v19, v21, v12

    sub-double v12, v21, v12

    add-int v2, p6, v7

    add-double v21, v17, v23

    add-double v21, v21, v19

    aput-wide v21, p5, v2

    add-int v2, v16, v8

    const-wide v7, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v7, v7, v23

    add-double v7, v7, v17

    const-wide v21, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v21, v21, v19

    add-double v7, v7, v21

    aput-wide v7, p5, v2

    add-int v2, p6, v9

    const-wide v7, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double/2addr v7, v14

    const-wide v21, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v21, v21, v12

    add-double v7, v7, v21

    aput-wide v7, p5, v2

    add-int v2, v16, v10

    const-wide v7, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v7, v7, v23

    add-double v7, v7, v17

    const-wide v9, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v9, v9, v19

    add-double/2addr v7, v9

    aput-wide v7, p5, v2

    add-int v2, p6, v11

    const-wide v7, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double/2addr v7, v14

    const-wide v9, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double/2addr v9, v12

    sub-double/2addr v7, v9

    aput-wide v7, p5, v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    :cond_9c
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_a2

    :cond_a1
    return-void

    :cond_a2
    const/4 v1, 0x0

    move v2, v1

    :goto_a4
    move/from16 v0, p2

    if-ge v2, v0, :cond_a1

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

    :goto_bd
    move/from16 v0, p1

    if-ge v1, v0, :cond_255

    add-int/lit8 v17, v1, -0x1

    add-int v17, v17, p7

    add-int/lit8 v18, v1, -0x1

    add-int v18, v18, v3

    add-int/lit8 v19, v1, -0x1

    add-int v19, v19, v4

    add-int/lit8 v20, v1, -0x1

    add-int v20, v20, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v21, v0

    add-int/lit8 v22, v17, -0x1

    aget-wide v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v23, v0

    aget-wide v23, v23, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v17, v0

    add-int/lit8 v25, v18, -0x1

    aget-wide v25, v17, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v17, v0

    aget-wide v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v27, v0

    add-int/lit8 v28, v19, -0x1

    aget-wide v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v29, v0

    aget-wide v29, v29, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v19, v0

    add-int/lit8 v31, v20, -0x1

    aget-wide v31, v19, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v19, v0

    aget-wide v19, v19, v20

    sub-int v33, p1, v1

    add-int v34, p4, v1

    add-int v35, p6, v1

    add-int v33, v33, p6

    add-int v36, v34, v7

    add-int v37, v34, v13

    add-int v38, v34, v14

    add-int v39, v34, v15

    add-int v34, v34, v16

    add-int/lit8 v40, v36, -0x1

    aget-wide v40, p3, v40

    aget-wide v42, p3, v36

    add-int/lit8 v36, v37, -0x1

    aget-wide v44, p3, v36

    aget-wide v36, p3, v37

    add-int/lit8 v46, v38, -0x1

    aget-wide v46, p3, v46

    aget-wide v48, p3, v38

    add-int/lit8 v38, v39, -0x1

    aget-wide v50, p3, v38

    aget-wide v38, p3, v39

    add-int/lit8 v52, v34, -0x1

    aget-wide v52, p3, v52

    aget-wide v54, p3, v34

    mul-double v56, v21, v44

    mul-double v58, v23, v36

    add-double v56, v56, v58

    mul-double v21, v21, v36

    mul-double v23, v23, v44

    sub-double v21, v21, v23

    mul-double v23, v25, v46

    mul-double v36, v17, v48

    add-double v23, v23, v36

    mul-double v25, v25, v48

    mul-double v17, v17, v46

    sub-double v17, v25, v17

    mul-double v25, v27, v50

    mul-double v36, v29, v38

    add-double v25, v25, v36

    mul-double v27, v27, v38

    mul-double v29, v29, v50

    sub-double v27, v27, v29

    mul-double v29, v31, v52

    mul-double v36, v19, v54

    add-double v29, v29, v36

    mul-double v31, v31, v54

    mul-double v19, v19, v52

    sub-double v19, v31, v19

    add-double v31, v56, v29

    sub-double v29, v29, v56

    sub-double v36, v21, v19

    add-double v19, v19, v21

    add-double v21, v23, v25

    sub-double v23, v25, v23

    sub-double v25, v17, v27

    add-double v17, v17, v27

    const-wide v27, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v27, v27, v31

    add-double v27, v27, v40

    const-wide v38, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v38, v38, v21

    add-double v27, v27, v38

    const-wide v38, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v38, v38, v19

    add-double v38, v38, v42

    const-wide v44, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v44, v44, v17

    add-double v38, v38, v44

    const-wide v44, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v44, v44, v31

    add-double v44, v44, v40

    const-wide v46, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v46, v46, v21

    add-double v44, v44, v46

    const-wide v46, -0x40161c8864680b59L    # -0.8090169943749473

    mul-double v46, v46, v19

    add-double v46, v46, v42

    const-wide v48, 0x3fd3c6ef372fe950L    # 0.30901699437494745

    mul-double v48, v48, v17

    add-double v46, v46, v48

    const-wide v48, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v48, v48, v36

    const-wide v50, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v50, v50, v25

    add-double v48, v48, v50

    const-wide v50, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v50, v50, v29

    const-wide v52, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v52, v52, v23

    add-double v50, v50, v52

    const-wide v52, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v36, v36, v52

    const-wide v52, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v25, v25, v52

    sub-double v25, v36, v25

    const-wide v36, 0x3fe2cf2304755a5fL    # 0.5877852522924732

    mul-double v29, v29, v36

    const-wide v36, 0x3fee6f0e134454ffL    # 0.9510565162951535

    mul-double v23, v23, v36

    sub-double v23, v29, v23

    add-int v29, v35, v8

    add-int v30, v33, v9

    add-int v34, v35, v10

    add-int v33, v33, v11

    add-int v35, v35, v12

    add-int/lit8 v36, v29, -0x1

    add-double v31, v31, v40

    add-double v21, v21, v31

    aput-wide v21, p5, v36

    add-double v19, v19, v42

    add-double v17, v17, v19

    aput-wide v17, p5, v29

    add-int/lit8 v17, v34, -0x1

    add-double v18, v27, v48

    aput-wide v18, p5, v17

    add-int/lit8 v17, v30, -0x1

    sub-double v18, v27, v48

    aput-wide v18, p5, v17

    add-double v17, v38, v50

    aput-wide v17, p5, v34

    sub-double v17, v50, v38

    aput-wide v17, p5, v30

    add-int/lit8 v17, v35, -0x1

    add-double v18, v44, v25

    aput-wide v18, p5, v17

    add-int/lit8 v17, v33, -0x1

    sub-double v18, v44, v25

    aput-wide v18, p5, v17

    add-double v17, v46, v23

    aput-wide v17, p5, v35

    sub-double v17, v23, v46

    aput-wide v17, p5, v33

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_bd

    :cond_255
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_a4
.end method

.method radfg(IIII[DI[DII)V
    .registers 45

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v0, p2

    int-to-double v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    add-int/lit8 v5, p2, 0x1

    div-int/lit8 v22, v5, 0x2

    add-int/lit8 v5, p1, -0x1

    div-int/lit8 v23, v5, 0x2

    const/4 v5, 0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_1ca

    const/4 v5, 0x0

    :goto_1f
    move/from16 v0, p4

    if-ge v5, v0, :cond_2e

    add-int v6, p8, v5

    add-int v7, p6, v5

    aget-wide v7, p5, v7

    aput-wide v7, p7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_2e
    const/4 v5, 0x1

    move v6, v5

    :goto_30
    move/from16 v0, p2

    if-ge v6, v0, :cond_4f

    mul-int v5, v6, p3

    mul-int v7, v5, p1

    const/4 v5, 0x0

    :goto_39
    move/from16 v0, p3

    if-ge v5, v0, :cond_4b

    mul-int v8, v5, p1

    add-int/2addr v8, v7

    add-int v9, p8, v8

    add-int v8, v8, p6

    aget-wide v10, p5, v8

    aput-wide v10, p7, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_4b
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_30

    :cond_4f
    move/from16 v0, v23

    move/from16 v1, p3

    if-gt v0, v1, :cond_b9

    move/from16 v0, p1

    neg-int v6, v0

    const/4 v5, 0x1

    move v8, v5

    move v5, v6

    :goto_5b
    move/from16 v0, p2

    if-ge v8, v0, :cond_116

    add-int v9, v5, p1

    add-int/lit8 v6, v9, -0x1

    mul-int v5, v8, p3

    mul-int v10, v5, p1

    const/4 v5, 0x2

    move/from16 v34, v5

    move v5, v6

    move/from16 v6, v34

    :goto_6d
    move/from16 v0, p1

    if-ge v6, v0, :cond_b4

    add-int/lit8 v7, v5, 0x2

    add-int v5, v7, p9

    add-int v11, p6, v6

    add-int v12, p8, v6

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v14, v5, -0x1

    aget-wide v13, v13, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v15, v15, v5

    const/4 v5, 0x0

    :goto_88
    move/from16 v0, p3

    if-ge v5, v0, :cond_af

    mul-int v17, v5, p1

    add-int v17, v17, v10

    add-int v24, v12, v17

    add-int v17, v17, v11

    add-int/lit8 v25, v17, -0x1

    aget-wide v25, p5, v25

    aget-wide v27, p5, v17

    add-int/lit8 v17, v24, -0x1

    mul-double v29, v13, v25

    mul-double v31, v15, v27

    add-double v29, v29, v31

    aput-wide v29, p7, v17

    mul-double v27, v27, v13

    mul-double v25, v25, v15

    sub-double v25, v27, v25

    aput-wide v25, p7, v24

    add-int/lit8 v5, v5, 0x1

    goto :goto_88

    :cond_af
    add-int/lit8 v5, v6, 0x2

    move v6, v5

    move v5, v7

    goto :goto_6d

    :cond_b4
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v9

    goto :goto_5b

    :cond_b9
    move/from16 v0, p1

    neg-int v6, v0

    const/4 v5, 0x1

    move v8, v5

    move v5, v6

    :goto_bf
    move/from16 v0, p2

    if-ge v8, v0, :cond_116

    add-int v9, v5, p1

    mul-int v5, v8, p3

    mul-int v10, v5, p1

    const/4 v5, 0x0

    move v7, v5

    :goto_cb
    move/from16 v0, p3

    if-ge v7, v0, :cond_111

    add-int/lit8 v6, v9, -0x1

    mul-int v5, v7, p1

    add-int v11, v5, v10

    const/4 v5, 0x2

    :goto_d6
    move/from16 v0, p1

    if-ge v5, v0, :cond_10d

    add-int/lit8 v6, v6, 0x2

    add-int v12, v6, p9

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v14, v12, -0x1

    aget-wide v13, v13, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v15, v15, v12

    add-int v12, p8, v5

    add-int/2addr v12, v11

    add-int v17, p6, v5

    add-int v17, v17, v11

    add-int/lit8 v24, v17, -0x1

    aget-wide v24, p5, v24

    aget-wide v26, p5, v17

    add-int/lit8 v17, v12, -0x1

    mul-double v28, v13, v24

    mul-double v30, v15, v26

    add-double v28, v28, v30

    aput-wide v28, p7, v17

    mul-double v13, v13, v26

    mul-double v15, v15, v24

    sub-double/2addr v13, v15

    aput-wide v13, p7, v12

    add-int/lit8 v5, v5, 0x2

    goto :goto_d6

    :cond_10d
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_cb

    :cond_111
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v9

    goto :goto_bf

    :cond_116
    move/from16 v0, v23

    move/from16 v1, p3

    if-lt v0, v1, :cond_174

    const/4 v5, 0x1

    move v7, v5

    :goto_11e
    move/from16 v0, v22

    if-ge v7, v0, :cond_1d7

    sub-int v5, p2, v7

    mul-int v6, v7, p3

    mul-int v8, v6, p1

    mul-int v5, v5, p3

    mul-int v9, v5, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_12e
    move/from16 v0, p3

    if-ge v6, v0, :cond_170

    mul-int v5, v6, p1

    add-int v10, v5, v8

    mul-int v5, v6, p1

    add-int v11, v5, v9

    const/4 v5, 0x2

    :goto_13b
    move/from16 v0, p1

    if-ge v5, v0, :cond_16c

    add-int v12, p6, v5

    add-int v13, p8, v5

    add-int v14, v12, v10

    add-int/2addr v12, v11

    add-int v15, v13, v10

    add-int/2addr v13, v11

    add-int/lit8 v16, v15, -0x1

    aget-wide v16, p7, v16

    aget-wide v24, p7, v15

    add-int/lit8 v15, v13, -0x1

    aget-wide v26, p7, v15

    aget-wide v28, p7, v13

    add-int/lit8 v13, v14, -0x1

    add-double v30, v16, v26

    aput-wide v30, p5, v13

    add-double v30, v24, v28

    aput-wide v30, p5, v14

    add-int/lit8 v13, v12, -0x1

    sub-double v14, v24, v28

    aput-wide v14, p5, v13

    sub-double v13, v26, v16

    aput-wide v13, p5, v12

    add-int/lit8 v5, v5, 0x2

    goto :goto_13b

    :cond_16c
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_12e

    :cond_170
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_11e

    :cond_174
    const/4 v5, 0x1

    move v7, v5

    :goto_176
    move/from16 v0, v22

    if-ge v7, v0, :cond_1d7

    sub-int v5, p2, v7

    mul-int v6, v7, p3

    mul-int v8, v6, p1

    mul-int v5, v5, p3

    mul-int v9, v5, p1

    const/4 v5, 0x2

    move v6, v5

    :goto_186
    move/from16 v0, p1

    if-ge v6, v0, :cond_1c6

    add-int v10, p6, v6

    add-int v11, p8, v6

    const/4 v5, 0x0

    :goto_18f
    move/from16 v0, p3

    if-ge v5, v0, :cond_1c2

    mul-int v12, v5, p1

    add-int/2addr v12, v8

    mul-int v13, v5, p1

    add-int/2addr v13, v9

    add-int v14, v10, v12

    add-int v15, v10, v13

    add-int/2addr v12, v11

    add-int/2addr v13, v11

    add-int/lit8 v16, v12, -0x1

    aget-wide v16, p7, v16

    aget-wide v24, p7, v12

    add-int/lit8 v12, v13, -0x1

    aget-wide v26, p7, v12

    aget-wide v12, p7, v13

    add-int/lit8 v28, v14, -0x1

    add-double v29, v16, v26

    aput-wide v29, p5, v28

    add-double v28, v24, v12

    aput-wide v28, p5, v14

    add-int/lit8 v14, v15, -0x1

    sub-double v12, v24, v12

    aput-wide v12, p5, v14

    sub-double v12, v26, v16

    aput-wide v12, p5, v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_18f

    :cond_1c2
    add-int/lit8 v5, v6, 0x2

    move v6, v5

    goto :goto_186

    :cond_1c6
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_176

    :cond_1ca
    move-object/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d7
    const/4 v5, 0x1

    move v6, v5

    :goto_1d9
    move/from16 v0, v22

    if-ge v6, v0, :cond_20d

    sub-int v5, p2, v6

    mul-int v7, v6, p3

    mul-int v7, v7, p1

    mul-int v5, v5, p3

    mul-int v8, v5, p1

    const/4 v5, 0x0

    :goto_1e8
    move/from16 v0, p3

    if-ge v5, v0, :cond_209

    mul-int v9, v5, p1

    add-int/2addr v9, v7

    mul-int v10, v5, p1

    add-int/2addr v10, v8

    add-int v11, p8, v9

    add-int v12, p8, v10

    aget-wide v13, p7, v11

    aget-wide v11, p7, v12

    add-int v9, v9, p6

    add-double v15, v13, v11

    aput-wide v15, p5, v9

    add-int v9, p6, v10

    sub-double v10, v11, v13

    aput-wide v10, p5, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e8

    :cond_209
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1d9

    :cond_20d
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v15, 0x0

    add-int/lit8 v5, p2, -0x1

    mul-int v24, v5, p4

    const/4 v5, 0x1

    move/from16 v17, v5

    move-wide v5, v9

    :goto_219
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_29e

    sub-int v7, p2, v17

    mul-double v8, v18, v5

    mul-double v10, v20, v15

    sub-double v9, v8, v10

    mul-double v11, v18, v15

    mul-double v5, v5, v20

    add-double v15, v11, v5

    mul-int v25, v17, p4

    mul-int v26, v7, p4

    const/4 v5, 0x0

    :goto_232
    move/from16 v0, p4

    if-ge v5, v0, :cond_252

    add-int v6, p8, v5

    add-int v7, p6, v5

    add-int v8, v6, v25

    aget-wide v11, p5, v7

    add-int v13, v7, p4

    aget-wide v13, p5, v13

    mul-double/2addr v13, v9

    add-double/2addr v11, v13

    aput-wide v11, p7, v8

    add-int v6, v6, v26

    add-int v7, v7, v24

    aget-wide v7, p5, v7

    mul-double/2addr v7, v15

    aput-wide v7, p7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_232

    :cond_252
    const/4 v5, 0x2

    move v6, v5

    move-wide v7, v9

    move-wide v13, v15

    :goto_256
    move/from16 v0, v22

    if-ge v6, v0, :cond_297

    sub-int v5, p2, v6

    mul-double v11, v9, v7

    mul-double v27, v15, v13

    sub-double v11, v11, v27

    mul-double/2addr v13, v9

    mul-double/2addr v7, v15

    add-double/2addr v7, v13

    mul-int v13, v6, p4

    mul-int v14, v5, p4

    const/4 v5, 0x0

    :goto_26a
    move/from16 v0, p4

    if-ge v5, v0, :cond_291

    add-int v27, p8, v5

    add-int v28, p6, v5

    add-int v29, v27, v25

    aget-wide v30, p7, v29

    add-int v32, v28, v13

    aget-wide v32, p5, v32

    mul-double v32, v32, v11

    add-double v30, v30, v32

    aput-wide v30, p7, v29

    add-int v27, v27, v26

    aget-wide v29, p7, v27

    add-int v28, v28, v14

    aget-wide v31, p5, v28

    mul-double v31, v31, v7

    add-double v28, v29, v31

    aput-wide v28, p7, v27

    add-int/lit8 v5, v5, 0x1

    goto :goto_26a

    :cond_291
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-wide v13, v7

    move-wide v7, v11

    goto :goto_256

    :cond_297
    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    move-wide v5, v9

    goto/16 :goto_219

    :cond_29e
    const/4 v5, 0x1

    move v6, v5

    :goto_2a0
    move/from16 v0, v22

    if-ge v6, v0, :cond_2be

    mul-int v7, v6, p4

    const/4 v5, 0x0

    :goto_2a7
    move/from16 v0, p4

    if-ge v5, v0, :cond_2ba

    add-int v8, p8, v5

    aget-wide v9, p7, v8

    add-int v11, p6, v5

    add-int/2addr v11, v7

    aget-wide v11, p5, v11

    add-double/2addr v9, v11

    aput-wide v9, p7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a7

    :cond_2ba
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_2a0

    :cond_2be
    move/from16 v0, p1

    move/from16 v1, p3

    if-lt v0, v1, :cond_2e4

    const/4 v5, 0x0

    move v6, v5

    :goto_2c6
    move/from16 v0, p3

    if-ge v6, v0, :cond_304

    mul-int v7, v6, p1

    mul-int v8, v7, p2

    const/4 v5, 0x0

    :goto_2cf
    move/from16 v0, p1

    if-ge v5, v0, :cond_2e0

    add-int v9, p6, v5

    add-int/2addr v9, v8

    add-int v10, p8, v5

    add-int/2addr v10, v7

    aget-wide v10, p7, v10

    aput-wide v10, p5, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_2cf

    :cond_2e0
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_2c6

    :cond_2e4
    const/4 v5, 0x0

    move v6, v5

    :goto_2e6
    move/from16 v0, p1

    if-ge v6, v0, :cond_304

    const/4 v5, 0x0

    :goto_2eb
    move/from16 v0, p3

    if-ge v5, v0, :cond_300

    mul-int v7, v5, p1

    add-int v8, p6, v6

    mul-int v9, v7, p2

    add-int/2addr v8, v9

    add-int v9, p8, v6

    add-int/2addr v7, v9

    aget-wide v9, p7, v7

    aput-wide v9, p5, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2eb

    :cond_300
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_2e6

    :cond_304
    mul-int v8, p2, p1

    const/4 v5, 0x1

    move v6, v5

    :goto_308
    move/from16 v0, v22

    if-ge v6, v0, :cond_344

    sub-int v5, p2, v6

    mul-int/lit8 v7, v6, 0x2

    mul-int v9, v6, p3

    mul-int v9, v9, p1

    mul-int v5, v5, p3

    mul-int v10, v5, p1

    mul-int v7, v7, p1

    const/4 v5, 0x0

    :goto_31b
    move/from16 v0, p3

    if-ge v5, v0, :cond_340

    mul-int v11, v5, p1

    add-int v12, v11, v9

    add-int/2addr v11, v10

    mul-int v13, v5, v8

    add-int v14, p6, p1

    add-int/lit8 v14, v14, -0x1

    add-int/2addr v14, v7

    sub-int v14, v14, p1

    add-int/2addr v14, v13

    add-int v12, v12, p8

    aget-wide v15, p7, v12

    aput-wide v15, p5, v14

    add-int v12, p6, v7

    add-int/2addr v12, v13

    add-int v11, v11, p8

    aget-wide v13, p7, v11

    aput-wide v13, p5, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_31b

    :cond_340
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_308

    :cond_344
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_34a

    :cond_349
    return-void

    :cond_34a
    move/from16 v0, v23

    move/from16 v1, p3

    if-lt v0, v1, :cond_3b4

    const/4 v5, 0x1

    move v7, v5

    :goto_352
    move/from16 v0, v22

    if-ge v7, v0, :cond_349

    sub-int v5, p2, v7

    mul-int/lit8 v6, v7, 0x2

    mul-int v9, v7, p3

    mul-int v9, v9, p1

    mul-int v5, v5, p3

    mul-int v10, v5, p1

    mul-int v11, v6, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_366
    move/from16 v0, p3

    if-ge v6, v0, :cond_3b0

    mul-int v12, v6, v8

    mul-int v13, v6, p1

    const/4 v5, 0x2

    :goto_36f
    move/from16 v0, p1

    if-ge v5, v0, :cond_3ac

    sub-int v14, p1, v5

    add-int v15, p6, v5

    add-int v14, v14, p6

    add-int v16, p8, v5

    add-int/2addr v15, v11

    add-int/2addr v15, v12

    add-int/2addr v14, v11

    sub-int v14, v14, p1

    add-int/2addr v14, v12

    add-int v17, v16, v13

    add-int v17, v17, v9

    add-int v16, v16, v13

    add-int v16, v16, v10

    add-int/lit8 v18, v17, -0x1

    aget-wide v18, p7, v18

    aget-wide v20, p7, v17

    add-int/lit8 v17, v16, -0x1

    aget-wide v23, p7, v17

    aget-wide v16, p7, v16

    add-int/lit8 v25, v15, -0x1

    add-double v26, v18, v23

    aput-wide v26, p5, v25

    add-int/lit8 v25, v14, -0x1

    sub-double v18, v18, v23

    aput-wide v18, p5, v25

    add-double v18, v20, v16

    aput-wide v18, p5, v15

    sub-double v15, v16, v20

    aput-wide v15, p5, v14

    add-int/lit8 v5, v5, 0x2

    goto :goto_36f

    :cond_3ac
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_366

    :cond_3b0
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_352

    :cond_3b4
    const/4 v5, 0x1

    move v7, v5

    :goto_3b6
    move/from16 v0, v22

    if-ge v7, v0, :cond_349

    sub-int v5, p2, v7

    mul-int/lit8 v6, v7, 0x2

    mul-int v9, v7, p3

    mul-int v9, v9, p1

    mul-int v5, v5, p3

    mul-int v10, v5, p1

    mul-int v11, v6, p1

    const/4 v5, 0x2

    move v6, v5

    :goto_3ca
    move/from16 v0, p1

    if-ge v6, v0, :cond_418

    sub-int v5, p1, v6

    add-int v12, p6, v6

    add-int v13, p6, v5

    add-int v14, p8, v6

    const/4 v5, 0x0

    :goto_3d7
    move/from16 v0, p3

    if-ge v5, v0, :cond_414

    mul-int v15, v5, v8

    mul-int v16, v5, p1

    add-int v17, v12, v11

    add-int v17, v17, v15

    add-int v18, v13, v11

    sub-int v18, v18, p1

    add-int v15, v15, v18

    add-int v18, v14, v16

    add-int v18, v18, v9

    add-int v16, v16, v14

    add-int v16, v16, v10

    add-int/lit8 v19, v18, -0x1

    aget-wide v19, p7, v19

    aget-wide v23, p7, v18

    add-int/lit8 v18, v16, -0x1

    aget-wide v25, p7, v18

    aget-wide v27, p7, v16

    add-int/lit8 v16, v17, -0x1

    add-double v29, v19, v25

    aput-wide v29, p5, v16

    add-int/lit8 v16, v15, -0x1

    sub-double v18, v19, v25

    aput-wide v18, p5, v16

    add-double v18, v23, v27

    aput-wide v18, p5, v17

    sub-double v16, v27, v23

    aput-wide v16, p5, v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_3d7

    :cond_414
    add-int/lit8 v5, v6, 0x2

    move v6, v5

    goto :goto_3ca

    :cond_418
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_3b6
.end method

.method public realForward([D)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    return-void
.end method

.method public realForward([DI)V
    .registers 10

    const/4 v2, 0x4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_72

    goto :goto_6

    :pswitch_15
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-le v0, v2, :cond_4a

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rftfsub(I[DII[DI)V

    :cond_35
    :goto_35
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    aget-wide v2, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    aput-wide v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    aput-wide v0, p1, v2

    goto :goto_6

    :cond_4a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ne v0, v2, :cond_35

    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftx020([DI)V

    goto :goto_35

    :pswitch_52
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v0, v0, -0x1

    :goto_59
    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    add-int v1, p2, v0

    aget-wide v2, p1, v1

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, p1, v4

    aput-wide v4, p1, v1

    add-int/lit8 v1, v1, -0x1

    aput-wide v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_59

    :pswitch_6d
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_forward([DI)V

    goto :goto_6

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_15
        :pswitch_52
        :pswitch_6d
    .end packed-switch
.end method

.method public realForwardFull([D)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForwardFull([DI)V

    return-void
.end method

.method public realForwardFull([DI)V
    .registers 16

    const/4 v0, 0x0

    const-wide/16 v11, 0x0

    const/4 v1, 0x1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v5, v2, 0x2

    sget-object v2, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_d8

    :goto_15
    return-void

    :pswitch_16
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    if-le v8, v1, :cond_65

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v2

    if-le v1, v2, :cond_65

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    div-int v10, v1, v8

    move v7, v0

    :goto_32
    if-ge v7, v8, :cond_53

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_50

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v3, v0, 0x2

    :goto_3e
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;

    move-object v1, p0

    move v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$1;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_32

    :cond_50
    add-int v3, v2, v10

    goto :goto_3e

    :cond_53
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_56
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, p2

    add-int/lit8 v1, p2, 0x1

    aget-wide v1, p1, v1

    neg-double v1, v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    aput-wide v11, p1, v0

    goto :goto_15

    :cond_65
    :goto_65
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_56

    mul-int/lit8 v1, v0, 0x2

    sub-int v2, v5, v1

    rem-int/2addr v2, v5

    add-int/2addr v2, p2

    add-int v3, p2, v1

    aget-wide v3, p1, v3

    aput-wide v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    aget-wide v3, p1, v1

    neg-double v3, v3

    aput-wide v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :pswitch_84
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_ac

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v0, v0, 0x2

    :goto_91
    move v2, v1

    :goto_92
    if-ge v2, v0, :cond_b3

    add-int v3, p2, v5

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v4, p2

    add-int/lit8 v6, v3, 0x1

    aget-wide v7, p1, v4

    neg-double v7, v7

    aput-wide v7, p1, v6

    add-int/lit8 v4, v4, -0x1

    aget-wide v6, p1, v4

    aput-wide v6, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    :cond_ac
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    goto :goto_91

    :cond_b3
    move v0, v1

    :goto_b4
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_cb

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v1, p2

    sub-int/2addr v1, v0

    add-int/lit8 v2, v1, 0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, v1, 0x1

    aget-wide v5, p1, v1

    aput-wide v5, p1, v4

    aput-wide v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    :cond_cb
    add-int/lit8 v0, p2, 0x1

    aput-wide v11, p1, v0

    goto/16 :goto_15

    :pswitch_d1
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V

    goto/16 :goto_15

    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_16
        :pswitch_84
        :pswitch_d1
    .end packed-switch
.end method

.method public realInverse([DIZ)V
    .registers 13

    const/4 v8, 0x4

    const/4 v7, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9c

    goto :goto_7

    :pswitch_16
    add-int/lit8 v0, p2, 0x1

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    aget-wide v3, p1, p2

    add-int/lit8 v5, p2, 0x1

    aget-wide v5, p1, v5

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    aput-wide v1, p1, v0

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    aput-wide v0, p1, p2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-le v0, v8, :cond_5c

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rftfsub(I[DII[DI)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    :cond_4d
    :goto_4d
    if-eqz p3, :cond_7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v1, v0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, v7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto :goto_7

    :cond_5c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ne v0, v8, :cond_4d

    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftxc020([DI)V

    goto :goto_4d

    :pswitch_64
    const/4 v0, 0x2

    :goto_65
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_7a

    add-int v1, p2, v0

    add-int/lit8 v2, v1, -0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, v1, -0x1

    aget-wide v5, p1, v1

    aput-wide v5, p1, v4

    aput-wide v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :cond_7a
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftb([DI)V

    if-eqz p3, :cond_7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, v7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto/16 :goto_7

    :pswitch_8b
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse([DI)V

    if-eqz p3, :cond_7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, v7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto/16 :goto_7

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_16
        :pswitch_64
        :pswitch_8b
    .end packed-switch
.end method

.method public realInverse([DZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse([DIZ)V

    return-void
.end method

.method protected realInverse2([DIZ)V
    .registers 12

    const/4 v2, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ne v0, v6, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_d2

    goto :goto_7

    :pswitch_16
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-le v0, v2, :cond_57

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftfsub(I[DI[II[D)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nc:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rftbsub(I[DII[DI)V

    :cond_36
    :goto_36
    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    aget-wide v2, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget-wide v4, p1, v4

    add-double/2addr v2, v4

    aput-wide v2, p1, p2

    add-int/lit8 v2, p2, 0x1

    aput-wide v0, p1, v2

    if-eqz p3, :cond_7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, v7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto :goto_7

    :cond_57
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ne v0, v2, :cond_36

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->ip:[I

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->nw:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->w:[D

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->cftbsub(I[DI[II[D)V

    goto :goto_36

    :pswitch_6a
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v0, v0, -0x1

    :goto_71
    const/4 v1, 0x2

    if-lt v0, v1, :cond_85

    add-int v1, p2, v0

    aget-wide v2, p1, v1

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, p1, v4

    aput-wide v4, p1, v1

    add-int/lit8 v1, v1, -0x1

    aput-wide v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_71

    :cond_85
    if-eqz p3, :cond_91

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, v7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    :cond_91
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_ab

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v1, v0, 0x2

    move v0, v6

    :goto_9c
    if-ge v0, v1, :cond_7

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x1

    aget-wide v3, p1, v2

    neg-double v3, v3

    aput-wide v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9c

    :cond_ab
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v1, v0, 0x2

    move v0, v7

    :goto_b2
    if-ge v0, v1, :cond_7

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x1

    aget-wide v3, p1, v2

    neg-double v3, v3

    aput-wide v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_b2

    :pswitch_c1
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse2([DI)V

    if-eqz p3, :cond_7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, v7

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto/16 :goto_7

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_16
        :pswitch_6a
        :pswitch_c1
    .end packed-switch
.end method

.method public realInverseFull([DIZ)V
    .registers 16

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v5, v0, 0x2

    sget-object v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$18;->$SwitchMap$edu$emory$mathcs$jtransforms$fft$DoubleFFT_1D$Plans:[I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->plan:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;

    invoke-virtual {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$Plans;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_f8

    :cond_11
    :goto_11
    return-void

    :pswitch_12
    invoke-virtual {p0, p1, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getNumberOfThreads()I

    move-result v8

    const/4 v0, 0x1

    if-le v8, v0, :cond_65

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->getThreadsBeginN_1D_FFT_2Threads()I

    move-result v1

    if-le v0, v1, :cond_65

    new-array v9, v8, [Ljava/util/concurrent/Future;

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v0, v0, 0x2

    div-int v10, v0, v8

    const/4 v0, 0x0

    move v7, v0

    :goto_30
    if-ge v7, v8, :cond_51

    mul-int v2, v7, v10

    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_4e

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v3, v0, 0x2

    :goto_3c
    new-instance v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;

    move-object v1, p0

    move v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$2;-><init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D)V

    invoke-static {v0}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    aput-object v0, v9, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_30

    :cond_4e
    add-int v3, v2, v10

    goto :goto_3c

    :cond_51
    invoke-static {v9}, Ledu/emory/mathcs/utils/ConcurrencyUtils;->waitForCompletion([Ljava/util/concurrent/Future;)V

    :cond_54
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v0, p2

    add-int/lit8 v1, p2, 0x1

    aget-wide v1, p1, v1

    neg-double v1, v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    goto :goto_11

    :cond_65
    const/4 v0, 0x0

    :goto_66
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_54

    mul-int/lit8 v1, v0, 0x2

    sub-int v2, v5, v1

    rem-int/2addr v2, v5

    add-int/2addr v2, p2

    add-int v3, p2, v1

    aget-wide v3, p1, v3

    aput-wide v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    aget-wide v3, p1, v1

    neg-double v3, v3

    aput-wide v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :pswitch_85
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->rfftf([DI)V

    if-eqz p3, :cond_94

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v7, v0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v9, p1

    move v10, p2

    invoke-direct/range {v6 .. v11}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    :cond_94
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_be

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int/lit8 v0, v0, 0x2

    :goto_9e
    const/4 v1, 0x1

    :goto_9f
    if-ge v1, v0, :cond_c5

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    add-int v3, p2, v5

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    aget-wide v6, p1, v2

    neg-double v6, v6

    aput-wide v6, p1, v2

    add-int/lit8 v4, v3, 0x1

    aget-wide v6, p1, v2

    neg-double v6, v6

    aput-wide v6, p1, v4

    add-int/lit8 v2, v2, -0x1

    aget-wide v6, p1, v2

    aput-wide v6, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    :cond_be
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    goto :goto_9e

    :cond_c5
    const/4 v0, 0x1

    :goto_c6
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    if-ge v0, v1, :cond_dd

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    add-int/2addr v1, p2

    sub-int/2addr v1, v0

    add-int/lit8 v2, v1, 0x1

    aget-wide v2, p1, v2

    add-int/lit8 v4, v1, 0x1

    aget-wide v5, p1, v1

    aput-wide v5, p1, v4

    aput-wide v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    :cond_dd
    add-int/lit8 v0, p2, 0x1

    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    goto/16 :goto_11

    :pswitch_e5
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V

    if-eqz p3, :cond_11

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v1, v0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->scale(D[DIZ)V

    goto/16 :goto_11

    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_12
        :pswitch_85
        :pswitch_e5
    .end packed-switch
.end method

.method public realInverseFull([DZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DIZ)V

    return-void
.end method

.method rfftb([DI)V
    .registers 29

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    new-array v7, v2, [D

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v23, v2, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v3, v23, 0x1

    aget-wide v2, v2, v3

    double-to-int v0, v2

    move/from16 v24, v0

    const/16 v20, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x1

    move/from16 v21, v2

    :goto_29
    move/from16 v0, v21

    move/from16 v1, v24

    if-gt v0, v1, :cond_100

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v3, v21, 0x1

    add-int v3, v3, v23

    aget-wide v2, v2, v3

    double-to-int v0, v2

    move/from16 v25, v0

    mul-int v22, v25, v4

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

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

    invoke-virtual/range {v10 .. v19}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radbg(IIII[DI[DII)V

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

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb2(II[DI[DII)V

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

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb2(II[DI[DII)V

    goto :goto_7c

    :pswitch_8f
    if-nez v20, :cond_9e

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb3(II[DI[DII)V

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

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb3(II[DI[DII)V

    goto :goto_9b

    :pswitch_ae
    if-nez v20, :cond_bd

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb4(II[DI[DII)V

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

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb4(II[DI[DII)V

    goto :goto_ba

    :pswitch_cd
    if-nez v20, :cond_dc

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb5(II[DI[DII)V

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

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radb5(II[DI[DII)V

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

    invoke-virtual/range {v10 .. v19}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radbg(IIII[DI[DII)V

    goto/16 :goto_5e

    :cond_100
    if-eqz v20, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

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

.method rfftf([DI)V
    .registers 26

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    new-array v7, v2, [D

    move-object/from16 v0, p0

    iget v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v21, v2, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v3, v21, 0x1

    aget-wide v2, v2, v3

    double-to-int v0, v2

    move/from16 v22, v0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

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

    iget-object v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v4, v4, 0x2

    add-int v4, v4, v21

    aget-wide v4, v5, v4

    double-to-int v12, v4

    div-int v4, v3, v12

    move-object/from16 v0, p0

    iget v5, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

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

    invoke-virtual/range {v10 .. v19}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radfg(IIII[DI[DII)V

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

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf2(II[DI[DII)V

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

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf2(II[DI[DII)V

    move/from16 v2, v18

    goto :goto_6a

    :pswitch_91
    if-nez v18, :cond_a0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf3(II[DI[DII)V

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

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf3(II[DI[DII)V

    move/from16 v2, v18

    goto :goto_6a

    :pswitch_b2
    if-nez v18, :cond_c1

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf4(II[DI[DII)V

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

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf4(II[DI[DII)V

    move/from16 v2, v18

    goto :goto_6a

    :pswitch_d3
    if-nez v18, :cond_e2

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf5(II[DI[DII)V

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

    invoke-virtual/range {v10 .. v17}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radf5(II[DI[DII)V

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

    invoke-virtual/range {v10 .. v19}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->radfg(IIII[DI[DII)V

    const/4 v2, 0x0

    goto/16 :goto_6a

    :cond_108
    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

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

.method rffti()V
    .registers 27

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    :cond_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    mul-int/lit8 v11, v1, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    add-int/lit8 v5, v3, 0x1

    const/4 v3, 0x4

    if-gt v5, v3, :cond_2d

    sget-object v3, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->factors:[I

    add-int/lit8 v4, v5, -0x1

    aget v3, v3, v4

    move v4, v3

    move v3, v2

    :goto_22
    div-int v2, v1, v4

    mul-int v6, v4, v2

    sub-int v6, v1, v6

    if-eqz v6, :cond_32

    move v2, v3

    move v3, v5

    goto :goto_15

    :cond_2d
    add-int/lit8 v3, v4, 0x2

    move v4, v3

    move v3, v2

    goto :goto_22

    :cond_32
    add-int/lit8 v1, v3, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v11

    int-to-double v7, v4

    aput-wide v7, v3, v6

    const/4 v3, 0x2

    if-ne v4, v3, :cond_67

    const/4 v3, 0x1

    if-eq v1, v3, :cond_67

    const/4 v3, 0x2

    :goto_45
    if-gt v3, v1, :cond_5d

    sub-int v6, v1, v3

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v8, v6, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    aget-wide v9, v9, v6

    aput-wide v9, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    :cond_5d
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v6, v11, 0x2

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    aput-wide v7, v3, v6

    :cond_67
    const/4 v3, 0x1

    if-ne v2, v3, :cond_f5

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v3, v3

    aput-wide v3, v2, v11

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v3, v11, 0x1

    int-to-double v4, v1

    aput-wide v4, v2, v3

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    move-object/from16 v0, p0

    iget v4, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    int-to-double v4, v4

    div-double v12, v2, v4

    const/4 v5, 0x0

    add-int/lit8 v14, v1, -0x1

    const/4 v1, 0x1

    if-eqz v14, :cond_7

    const/4 v2, 0x1

    move v8, v1

    move v10, v2

    :goto_93
    if-gt v10, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    add-int/lit8 v2, v10, 0x1

    add-int/2addr v2, v11

    aget-wide v1, v1, v2

    double-to-int v2, v1

    const/4 v1, 0x0

    mul-int v9, v8, v2

    move-object/from16 v0, p0

    iget v3, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    div-int v15, v3, v9

    add-int/lit8 v16, v2, -0x1

    const/4 v2, 0x1

    move v7, v2

    :goto_ac
    move/from16 v0, v16

    if-gt v7, v0, :cond_f0

    add-int v6, v1, v8

    int-to-double v1, v6

    mul-double v17, v1, v12

    const-wide/16 v2, 0x0

    const/4 v1, 0x3

    move v4, v5

    :goto_b9
    if-gt v1, v15, :cond_ea

    add-int/lit8 v4, v4, 0x2

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    add-double v2, v2, v19

    mul-double v19, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->n:I

    move/from16 v21, v0

    add-int v21, v21, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v22, v0

    add-int/lit8 v23, v21, -0x2

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    aput-wide v24, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->wtable_r:[D

    move-object/from16 v22, v0

    add-int/lit8 v21, v21, -0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    aput-wide v19, v22, v21

    add-int/lit8 v1, v1, 0x2

    goto :goto_b9

    :cond_ea
    add-int/2addr v5, v15

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v1, v6

    goto :goto_ac

    :cond_f0
    add-int/lit8 v1, v10, 0x1

    move v8, v9

    move v10, v1

    goto :goto_93

    :cond_f5
    move v3, v1

    move v1, v2

    goto/16 :goto_22
.end method
