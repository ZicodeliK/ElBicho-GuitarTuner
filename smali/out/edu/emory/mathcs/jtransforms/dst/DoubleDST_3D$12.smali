.class Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->inverse([[[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

.field final synthetic val$a:[[[D

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;II[[[DZ)V
    .registers 6

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;->val$firstRow:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;->val$lastRow:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;->val$a:[[[D

    iput-boolean p5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$600(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v0

    new-array v4, v0, [D

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;->val$firstRow:I

    :goto_b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;->val$lastRow:I

    if-ge v0, v1, :cond_55

    move v1, v2

    :goto_10
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$400(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    if-ge v1, v3, :cond_52

    move v3, v2

    :goto_19
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$600(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v5

    if-ge v3, v5, :cond_2e

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    aget-wide v5, v5, v1

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2e
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$700(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;

    move-result-object v3

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;->val$scale:Z

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->inverse([DZ)V

    move v3, v2

    :goto_3a
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$600(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v5

    if-ge v3, v5, :cond_4f

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$12;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    aget-wide v6, v4, v3

    aput-wide v6, v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_55
    return-void
.end method
