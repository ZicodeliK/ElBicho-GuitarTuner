.class Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;->ddxt2d0_subth(I[[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;

.field final synthetic val$a:[[D

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;III[[DZ)V
    .registers 7

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->val$isgn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->val$n0:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->val$nthreads:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->val$a:[[D

    iput-boolean p6, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->val$n0:I

    :goto_7
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_3f

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;->access$100(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->val$a:[[D

    aget-object v2, v2, v0

    iget-boolean v3, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->val$scale:Z

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->forward([DZ)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_7

    :cond_22
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->val$n0:I

    :goto_24
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_3f

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;->access$100(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->val$a:[[D

    aget-object v2, v2, v0

    iget-boolean v3, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->val$scale:Z

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->inverse([DZ)V

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_2D$12;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_24

    :cond_3f
    return-void
.end method
