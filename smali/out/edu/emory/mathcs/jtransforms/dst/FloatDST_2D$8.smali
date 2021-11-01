.class Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->inverse([[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

.field final synthetic val$a:[[F

.field final synthetic val$firstColumn:I

.field final synthetic val$lastColumn:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;II[[FZ)V
    .registers 6

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$8;->this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$8;->val$firstColumn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$8;->val$lastColumn:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$8;->val$a:[[F

    iput-boolean p5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$8;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$8;->this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->access$200(Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;)I

    move-result v0

    new-array v3, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$8;->val$firstColumn:I

    :goto_b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$8;->val$lastColumn:I

    if-ge v0, v1, :cond_45

    move v1, v2

    :goto_10
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$8;->this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->access$200(Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;)I

    move-result v4

    if-ge v1, v4, :cond_23

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$8;->val$a:[[F

    aget-object v4, v4, v1

    aget v4, v4, v0

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_23
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$8;->this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->access$300(Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;)Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    move-result-object v1

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$8;->val$scale:Z

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FZ)V

    move v1, v2

    :goto_2f
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$8;->this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;->access$200(Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D;)I

    move-result v4

    if-ge v1, v4, :cond_42

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_2D$8;->val$a:[[F

    aget-object v4, v4, v1

    aget v5, v3, v1

    aput v5, v4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_45
    return-void
.end method
