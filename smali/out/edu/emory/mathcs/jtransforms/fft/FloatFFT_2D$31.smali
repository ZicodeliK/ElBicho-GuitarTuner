.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->fillSymmetric([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:[F

.field final synthetic val$l1offa:I

.field final synthetic val$l1stopa:I

.field final synthetic val$l2offa:I

.field final synthetic val$l2stopa:I

.field final synthetic val$newn2:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;III[FII)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$l1offa:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$l1stopa:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$newn2:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$a:[F

    iput p6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$l2offa:I

    iput p7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$l2stopa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$l1offa:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$l1stopa:I

    if-ge v0, v1, :cond_32

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$newn2:I

    mul-int/2addr v1, v0

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$newn2:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$a:[F

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$a:[F

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    aput v4, v3, v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$a:[F

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$a:[F

    aget v2, v4, v2

    neg-float v2, v2

    aput v2, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_32
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$l1offa:I

    :goto_34
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$l1stopa:I

    if-ge v0, v1, :cond_73

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$newn2:I

    mul-int v2, v0, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$newn2:I

    mul-int/2addr v3, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    :goto_50
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$newn2:I

    if-ge v1, v4, :cond_70

    sub-int v4, v3, v1

    add-int v5, v2, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$a:[F

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$a:[F

    aget v7, v7, v4

    aput v7, v6, v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$a:[F

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$a:[F

    add-int/lit8 v4, v4, 0x1

    aget v4, v7, v4

    neg-float v4, v4

    aput v4, v6, v5

    add-int/lit8 v1, v1, 0x2

    goto :goto_50

    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_73
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$l2offa:I

    :goto_75
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$l2stopa:I

    if-ge v0, v1, :cond_b7

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    rem-int/2addr v1, v2

    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$newn2:I

    mul-int/2addr v2, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$newn2:I

    mul-int v3, v0, v1

    const/4 v1, 0x0

    :goto_8f
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$newn2:I

    if-ge v1, v4, :cond_b4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$newn2:I

    sub-int/2addr v4, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$newn2:I

    rem-int/2addr v4, v5

    add-int/2addr v4, v2

    add-int v5, v3, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$a:[F

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$a:[F

    aget v7, v7, v5

    aput v7, v6, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$a:[F

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$31;->val$a:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    neg-float v5, v5

    aput v5, v6, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_8f

    :cond_b4
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_b7
    return-void
.end method
