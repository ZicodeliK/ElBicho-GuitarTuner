.class public Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;
.super Ljava/lang/Object;


# static fields
.field private static final ONE:I = 0x1

.field private static final TWO:I = 0x2

.field private static final ZERO:I


# instance fields
.field private final columns:I

.field private final rowStride:I

.field private final rows:I

.field private final sliceStride:I

.field private final slices:I


# direct methods
.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->slices:I

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rows:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->columns:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v0, p2

    iput v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    return-void
.end method


# virtual methods
.method public getIndex(III)I
    .registers 12

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    and-int/lit8 v5, p3, 0x1

    shl-int/lit8 v6, p2, 0x1

    shl-int/lit8 v7, p1, 0x1

    if-nez p1, :cond_19

    move v4, v0

    :goto_d
    if-nez p2, :cond_1e

    move v3, v0

    :goto_10
    if-gt p3, v2, :cond_94

    if-nez p2, :cond_42

    if-nez p1, :cond_24

    if-nez p3, :cond_22

    :cond_18
    :goto_18
    return v0

    :cond_19
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->slices:I

    sub-int/2addr v3, p1

    move v4, v3

    goto :goto_d

    :cond_1e
    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rows:I

    sub-int/2addr v3, p2

    goto :goto_10

    :cond_22
    move v0, v1

    goto :goto_18

    :cond_24
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->slices:I

    if-ge v7, v0, :cond_2d

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p3

    goto :goto_18

    :cond_2d
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->slices:I

    if-le v7, v0, :cond_3a

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, v4

    if-eqz v5, :cond_18

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_18

    :cond_3a
    if-nez v5, :cond_40

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int v1, p1, v0

    :cond_40
    move v0, v1

    goto :goto_18

    :cond_42
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rows:I

    if-ge v6, v0, :cond_4f

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, p1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    goto :goto_18

    :cond_4f
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rows:I

    if-le v6, v0, :cond_60

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, v4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    if-eqz v5, :cond_18

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_18

    :cond_60
    if-nez p1, :cond_6a

    if-nez v5, :cond_68

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int v1, p2, v0

    :cond_68
    move v0, v1

    goto :goto_18

    :cond_6a
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->slices:I

    if-ge v7, v0, :cond_77

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, p1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    goto :goto_18

    :cond_77
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->slices:I

    if-le v7, v0, :cond_88

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, v4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    if-eqz v5, :cond_18

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_18

    :cond_88
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, p1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v2, p2

    add-int/2addr v0, v2

    if-nez v5, :cond_92

    move v1, v0

    :cond_92
    move v0, v1

    goto :goto_18

    :cond_94
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->columns:I

    if-ge p3, v0, :cond_a2

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, p1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    goto/16 :goto_18

    :cond_a2
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->columns:I

    add-int/lit8 v0, v0, 0x1

    if-le p3, v0, :cond_bc

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->columns:I

    shl-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, p3

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v1, v4

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    if-eqz v5, :cond_18

    add-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    goto/16 :goto_18

    :cond_bc
    if-nez p2, :cond_ed

    if-nez p1, :cond_c6

    if-nez v5, :cond_c3

    move v1, v2

    :cond_c3
    move v0, v1

    goto/16 :goto_18

    :cond_c6
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->slices:I

    if-ge v7, v0, :cond_d6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, v4

    if-nez v5, :cond_d3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    :cond_d3
    neg-int v0, v0

    goto/16 :goto_18

    :cond_d6
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->slices:I

    if-le v7, v0, :cond_e3

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, p1

    if-nez v5, :cond_18

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    :cond_e3
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, p1

    if-nez v5, :cond_ea

    add-int/lit8 v1, v0, 0x1

    :cond_ea
    move v0, v1

    goto/16 :goto_18

    :cond_ed
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rows:I

    if-ge v6, v0, :cond_101

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, v4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    if-nez v5, :cond_fe

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    :cond_fe
    neg-int v0, v0

    goto/16 :goto_18

    :cond_101
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rows:I

    if-le v6, v0, :cond_112

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, p1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    if-nez v5, :cond_18

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    :cond_112
    if-nez p1, :cond_11f

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    if-nez v5, :cond_11c

    move v1, v0

    :cond_11c
    move v0, v1

    goto/16 :goto_18

    :cond_11f
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->slices:I

    if-ge v7, v0, :cond_133

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, v4

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    if-nez v5, :cond_130

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    :cond_130
    neg-int v0, v0

    goto/16 :goto_18

    :cond_133
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->slices:I

    if-le v7, v0, :cond_144

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, p1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    if-nez v5, :cond_18

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    :cond_144
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    mul-int/2addr v0, p1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    mul-int/2addr v2, p2

    add-int/2addr v0, v2

    if-nez v5, :cond_14f

    add-int/lit8 v1, v0, 0x1

    :cond_14f
    move v0, v1

    goto/16 :goto_18
.end method

.method public pack(DIII[DI)V
    .registers 13

    invoke-virtual {p0, p3, p4, p5}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result v0

    if-ltz v0, :cond_a

    add-int/2addr v0, p7

    aput-wide p1, p6, v0

    :goto_9
    return-void

    :cond_a
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_14

    sub-int v0, p7, v0

    neg-double v1, p1

    aput-wide v1, p6, v0

    goto :goto_9

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[%d][%d][%d] component cannot be modified (always zero)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pack(DIII[[[D)V
    .registers 12

    invoke-virtual {p0, p3, p4, p5}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    div-int v2, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    rem-int/2addr v1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    div-int v3, v1, v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    rem-int/2addr v1, v4

    if-ltz v0, :cond_1f

    aget-object v0, p6, v2

    aget-object v0, v0, v3

    aput-wide p1, v0, v1

    :goto_1e
    return-void

    :cond_1f
    const/high16 v4, -0x80000000

    if-le v0, v4, :cond_2b

    aget-object v0, p6, v2

    aget-object v0, v0, v3

    neg-double v2, p1

    aput-wide v2, v0, v1

    goto :goto_1e

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[%d][%d] component cannot be modified (always zero)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pack(FIII[FI)V
    .registers 12

    invoke-virtual {p0, p2, p3, p4}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result v0

    if-ltz v0, :cond_a

    add-int/2addr v0, p6

    aput p1, p5, v0

    :goto_9
    return-void

    :cond_a
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_14

    sub-int v0, p6, v0

    neg-float v1, p1

    aput v1, p5, v0

    goto :goto_9

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[%d][%d][%d] component cannot be modified (always zero)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pack(FIII[[[F)V
    .registers 11

    invoke-virtual {p0, p2, p3, p4}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    div-int v2, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    rem-int/2addr v1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    div-int v3, v1, v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    rem-int/2addr v1, v4

    if-ltz v0, :cond_1f

    aget-object v0, p5, v2

    aget-object v0, v0, v3

    aput p1, v0, v1

    :goto_1e
    return-void

    :cond_1f
    const/high16 v4, -0x80000000

    if-le v0, v4, :cond_2b

    aget-object v0, p5, v2

    aget-object v0, v0, v3

    neg-float v2, p1

    aput v2, v0, v1

    goto :goto_1e

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[%d][%d][%d] component cannot be modified (always zero)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unpack(III[DI)D
    .registers 8

    invoke-virtual {p0, p1, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result v0

    if-ltz v0, :cond_a

    add-int/2addr v0, p5

    aget-wide v0, p4, v0

    :goto_9
    return-wide v0

    :cond_a
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_14

    sub-int v0, p5, v0

    aget-wide v0, p4, v0

    neg-double v0, v0

    goto :goto_9

    :cond_14
    const-wide/16 v0, 0x0

    goto :goto_9
.end method

.method public unpack(III[[[D)D
    .registers 10

    invoke-virtual {p0, p1, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    div-int v2, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    rem-int/2addr v1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    div-int v3, v1, v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    rem-int/2addr v1, v4

    if-ltz v0, :cond_1f

    aget-object v0, p4, v2

    aget-object v0, v0, v3

    aget-wide v0, v0, v1

    :goto_1e
    return-wide v0

    :cond_1f
    const/high16 v4, -0x80000000

    if-le v0, v4, :cond_2b

    aget-object v0, p4, v2

    aget-object v0, v0, v3

    aget-wide v0, v0, v1

    neg-double v0, v0

    goto :goto_1e

    :cond_2b
    const-wide/16 v0, 0x0

    goto :goto_1e
.end method

.method public unpack(III[FI)F
    .registers 8

    invoke-virtual {p0, p1, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result v0

    if-ltz v0, :cond_a

    add-int/2addr v0, p5

    aget v0, p4, v0

    :goto_9
    return v0

    :cond_a
    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_14

    sub-int v0, p5, v0

    aget v0, p4, v0

    neg-float v0, v0

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public unpack(III[[[F)F
    .registers 10

    invoke-virtual {p0, p1, p2, p3}, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->getIndex(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    div-int v2, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->sliceStride:I

    rem-int/2addr v1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    div-int v3, v1, v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/RealFFTUtils_3D;->rowStride:I

    rem-int/2addr v1, v4

    if-ltz v0, :cond_1f

    aget-object v0, p4, v2

    aget-object v0, v0, v3

    aget v0, v0, v1

    :goto_1e
    return v0

    :cond_1f
    const/high16 v4, -0x80000000

    if-le v0, v4, :cond_2b

    aget-object v0, p4, v2

    aget-object v0, v0, v3

    aget v0, v0, v1

    neg-float v0, v0

    goto :goto_1e

    :cond_2b
    const/4 v0, 0x0

    goto :goto_1e
.end method
