.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->fillSymmetric([[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:[[D

.field final synthetic val$l1offa:I

.field final synthetic val$l1stopa:I

.field final synthetic val$l2offa:I

.field final synthetic val$l2stopa:I

.field final synthetic val$newn2:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;II[[DIII)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$l1offa:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$l1stopa:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$a:[[D

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$newn2:I

    iput p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$l2offa:I

    iput p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$l2stopa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$l1offa:I

    :goto_3
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$l1stopa:I

    if-ge v0, v1, :cond_39

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$a:[[D

    aget-object v3, v3, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$a:[[D

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$a:[[D

    aget-object v3, v3, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$a:[[D

    aget-object v1, v5, v1

    aget-wide v5, v1, v2

    neg-double v5, v5

    aput-wide v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_39
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$l1offa:I

    :goto_3b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$l1stopa:I

    if-ge v0, v1, :cond_79

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    sub-int v3, v1, v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    :goto_4f
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$newn2:I

    if-ge v1, v4, :cond_76

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$newn2:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$a:[[D

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$a:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v4

    aput-wide v6, v5, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$a:[[D

    aget-object v5, v5, v0

    add-int/lit8 v6, v1, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$a:[[D

    aget-object v7, v7, v3

    add-int/lit8 v4, v4, 0x1

    aget-wide v7, v7, v4

    neg-double v7, v7

    aput-wide v7, v5, v6

    add-int/lit8 v1, v1, 0x2

    goto :goto_4f

    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_79
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$l2offa:I

    :goto_7b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$l2stopa:I

    if-ge v0, v1, :cond_bc

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v3

    rem-int v3, v1, v3

    move v1, v2

    :goto_8f
    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$newn2:I

    if-ge v1, v4, :cond_b9

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$newn2:I

    sub-int/2addr v4, v1

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$newn2:I

    rem-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$a:[[D

    aget-object v5, v5, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$a:[[D

    aget-object v6, v6, v0

    aget-wide v6, v6, v1

    aput-wide v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$a:[[D

    aget-object v5, v5, v3

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$32;->val$a:[[D

    aget-object v6, v6, v0

    add-int/lit8 v7, v1, 0x1

    aget-wide v6, v6, v7

    neg-double v6, v6

    aput-wide v6, v5, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_8f

    :cond_b9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    :cond_bc
    return-void
.end method
