.class Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->ddxt2d0_subth(I[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

.field final synthetic val$a:[F

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;III[FZ)V
    .registers 7

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->val$isgn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->val$n0:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->val$nthreads:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->val$a:[F

    iput-boolean p6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->val$n0:I

    :goto_7
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->access$200(Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;)I

    move-result v1

    if-ge v0, v1, :cond_49

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->access$100(Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;)Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->val$a:[F

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->access$000(Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;)I

    move-result v3

    mul-int/2addr v3, v0

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->val$scale:Z

    invoke-virtual {v1, v2, v3, v4}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->forward([FIZ)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_7

    :cond_27
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->val$n0:I

    :goto_29
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->access$200(Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;)I

    move-result v1

    if-ge v0, v1, :cond_49

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->access$100(Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;)Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->val$a:[F

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->access$000(Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;)I

    move-result v3

    mul-int/2addr v3, v0

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->val$scale:Z

    invoke-virtual {v1, v2, v3, v4}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$11;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_29

    :cond_49
    return-void
.end method
