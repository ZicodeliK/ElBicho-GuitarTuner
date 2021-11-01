.class public Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;
.super Ljava/lang/Object;


# static fields
.field private static final ONE:I = 0x1

.field private static final TWO:I = 0x2

.field private static final ZERO:I


# instance fields
.field private final columns:I

.field private final rows:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->rows:I

    return-void
.end method


# virtual methods
.method public getIndex(II)I
    .registers 8

    const/high16 v0, -0x80000000

    const/4 v1, 0x1

    and-int/lit8 v2, p2, 0x1

    shl-int/lit8 v3, p1, 0x1

    if-eqz p1, :cond_98

    if-gt p2, v1, :cond_39

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->rows:I

    if-ne v3, v4, :cond_1b

    if-ne v2, v1, :cond_13

    move p2, v0

    :cond_12
    :goto_12
    return p2

    :cond_13
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    mul-int/2addr v0, v1

    shr-int/lit8 p2, v0, 0x1

    goto :goto_12

    :cond_1b
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->rows:I

    if-ge v3, v0, :cond_25

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    mul-int/2addr v0, p1

    add-int p2, v0, v2

    goto :goto_12

    :cond_25
    if-nez v2, :cond_2f

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->rows:I

    sub-int/2addr v1, p1

    mul-int p2, v0, v1

    goto :goto_12

    :cond_2f
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->rows:I

    sub-int/2addr v1, p1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    neg-int p2, v0

    goto :goto_12

    :cond_39
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    if-eq p2, v4, :cond_43

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    add-int/lit8 v4, v4, 0x1

    if-ne p2, v4, :cond_74

    :cond_43
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->rows:I

    if-ne v3, v4, :cond_55

    if-ne v2, v1, :cond_4b

    move p2, v0

    goto :goto_12

    :cond_4b
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->rows:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, v0, 0x1

    goto :goto_12

    :cond_55
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->rows:I

    if-ge v3, v0, :cond_6c

    if-nez v2, :cond_64

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->rows:I

    sub-int/2addr v1, p1

    mul-int/2addr v0, v1

    add-int/lit8 p2, v0, 0x1

    goto :goto_12

    :cond_64
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->rows:I

    sub-int/2addr v1, p1

    mul-int/2addr v0, v1

    neg-int p2, v0

    goto :goto_12

    :cond_6c
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    sub-int p2, v0, v2

    goto :goto_12

    :cond_74
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    if-ge p2, v0, :cond_7d

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    mul-int/2addr v0, p1

    add-int/2addr p2, v0

    goto :goto_12

    :cond_7d
    if-nez v2, :cond_8a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->rows:I

    add-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p1

    mul-int/2addr v0, v1

    sub-int p2, v0, p2

    goto :goto_12

    :cond_8a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->rows:I

    add-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p1

    mul-int/2addr v0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x2

    neg-int p2, v0

    goto/16 :goto_12

    :cond_98
    if-eq p2, v1, :cond_a0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    add-int/lit8 v3, v3, 0x1

    if-ne p2, v3, :cond_a3

    :cond_a0
    move p2, v0

    goto/16 :goto_12

    :cond_a3
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    if-ne p2, v0, :cond_aa

    move p2, v1

    goto/16 :goto_12

    :cond_aa
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    if-lt p2, v0, :cond_12

    if-nez v2, :cond_b8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    shl-int/lit8 v0, v0, 0x1

    sub-int p2, v0, p2

    goto/16 :goto_12

    :cond_b8
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    shl-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x2

    neg-int p2, v0

    goto/16 :goto_12
.end method

.method public pack(DII[DI)V
    .registers 12

    invoke-virtual {p0, p3, p4}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result v0

    if-ltz v0, :cond_a

    add-int/2addr v0, p6

    aput-wide p1, p5, v0

    :goto_9
    return-void

    :cond_a
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_14

    sub-int v0, p6, v0

    neg-double v1, p1

    aput-wide v1, p5, v0

    goto :goto_9

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[%d][%d] component cannot be modified (always zero)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pack(DII[[D)V
    .registers 11

    invoke-virtual {p0, p3, p4}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result v0

    if-ltz v0, :cond_12

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int v1, v0, v1

    aget-object v1, p5, v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    rem-int/2addr v0, v2

    aput-wide p1, v1, v0

    :goto_11
    return-void

    :cond_12
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_24

    neg-int v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int/2addr v1, v2

    aget-object v1, p5, v1

    neg-int v0, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    rem-int/2addr v0, v2

    neg-double v2, p1

    aput-wide v2, v1, v0

    goto :goto_11

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[%d][%d] component cannot be modified (always zero)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pack(FII[FI)V
    .registers 11

    invoke-virtual {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result v0

    if-ltz v0, :cond_a

    add-int/2addr v0, p5

    aput p1, p4, v0

    :goto_9
    return-void

    :cond_a
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_14

    sub-int v0, p5, v0

    neg-float v1, p1

    aput v1, p4, v0

    goto :goto_9

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[%d][%d] component cannot be modified (always zero)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pack(FII[[F)V
    .registers 10

    invoke-virtual {p0, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result v0

    if-ltz v0, :cond_12

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int v1, v0, v1

    aget-object v1, p4, v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    rem-int/2addr v0, v2

    aput p1, v1, v0

    :goto_11
    return-void

    :cond_12
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_24

    neg-int v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int/2addr v1, v2

    aget-object v1, p4, v1

    neg-int v0, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    rem-int/2addr v0, v2

    neg-float v2, p1

    aput v2, v1, v0

    goto :goto_11

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[%d][%d] component cannot be modified (always zero)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unpack(II[DI)D
    .registers 7

    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result v0

    if-ltz v0, :cond_a

    add-int/2addr v0, p4

    aget-wide v0, p3, v0

    :goto_9
    return-wide v0

    :cond_a
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_14

    sub-int v0, p4, v0

    aget-wide v0, p3, v0

    neg-double v0, v0

    goto :goto_9

    :cond_14
    const-wide/16 v0, 0x0

    goto :goto_9
.end method

.method public unpack(II[[D)D
    .registers 7

    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result v0

    if-ltz v0, :cond_12

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int v1, v0, v1

    aget-object v1, p3, v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    rem-int/2addr v0, v2

    aget-wide v0, v1, v0

    :goto_11
    return-wide v0

    :cond_12
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_24

    neg-int v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int/2addr v1, v2

    aget-object v1, p3, v1

    neg-int v0, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    rem-int/2addr v0, v2

    aget-wide v0, v1, v0

    neg-double v0, v0

    goto :goto_11

    :cond_24
    const-wide/16 v0, 0x0

    goto :goto_11
.end method

.method public unpack(II[FI)F
    .registers 7

    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result v0

    if-ltz v0, :cond_a

    add-int/2addr v0, p4

    aget v0, p3, v0

    :goto_9
    return v0

    :cond_a
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_14

    sub-int v0, p4, v0

    aget v0, p3, v0

    neg-float v0, v0

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public unpack(II[[F)F
    .registers 7

    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->getIndex(II)I

    move-result v0

    if-ltz v0, :cond_12

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int v1, v0, v1

    aget-object v1, p3, v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    rem-int/2addr v0, v2

    aget v0, v1, v0

    :goto_11
    return v0

    :cond_12
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_24

    neg-int v1, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    div-int/2addr v1, v2

    aget-object v1, p3, v1

    neg-int v0, v0

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_2D;->columns:I

    rem-int/2addr v0, v2

    aget v0, v1, v0

    neg-float v0, v0

    goto :goto_11

    :cond_24
    const/4 v0, 0x0

    goto :goto_11
.end method
