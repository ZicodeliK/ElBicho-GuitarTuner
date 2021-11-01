.class Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->ddxt3da_subth(I[[[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

.field final synthetic val$a:[[[D

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z

.field final synthetic val$startt:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;III[[[DZI)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$isgn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$n0:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$nthreads:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    iput-boolean p6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$scale:Z

    iput p7, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_233

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$n0:I

    :goto_a
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$600(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v1

    if-ge v0, v1, :cond_45e

    move v1, v2

    :goto_13
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    if-ge v1, v3, :cond_2f

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$300(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$scale:Z

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->forward([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2f
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$400(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v1

    if-le v1, v10, :cond_187

    move v1, v2

    :goto_38
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$400(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    if-ge v1, v3, :cond_22e

    move v3, v2

    :goto_41
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v4

    if-ge v3, v4, :cond_af

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v3

    aget-wide v7, v7, v1

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v6, v6, v0

    aget-object v6, v6, v3

    add-int/lit8 v7, v1, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v3

    add-int/lit8 v8, v1, 0x2

    aget-wide v7, v7, v8

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v6, v6, v0

    aget-object v6, v6, v3

    add-int/lit8 v7, v1, 0x3

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_af
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$500(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$500(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$500(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$500(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    move v3, v2

    :goto_115
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v4

    if-ge v3, v4, :cond_183

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    add-int/2addr v7, v3

    aget-wide v6, v6, v7

    aput-wide v6, v5, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v1, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v7

    aget-wide v7, v7, v4

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v1, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v8

    add-int/2addr v8, v4

    aget-wide v7, v7, v8

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v1, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    aget-wide v7, v7, v4

    aput-wide v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_115

    :cond_183
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_38

    :cond_187
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$400(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v1

    if-ne v1, v10, :cond_22e

    move v1, v2

    :goto_190
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    if-ge v1, v3, :cond_1c8

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget-wide v5, v5, v9

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_190

    :cond_1c8
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$500(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$500(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v5

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    move v1, v2

    :goto_1f6
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    if-ge v1, v3, :cond_22e

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    add-int/2addr v5, v1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f6

    :cond_22e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_a

    :cond_233
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$n0:I

    :goto_235
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$600(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v1

    if-ge v0, v1, :cond_45e

    move v1, v2

    :goto_23e
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    if-ge v1, v3, :cond_25a

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$300(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$scale:Z

    invoke-virtual {v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->inverse([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23e

    :cond_25a
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$400(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v1

    if-le v1, v10, :cond_3b2

    move v1, v2

    :goto_263
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$400(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    if-ge v1, v3, :cond_459

    move v3, v2

    :goto_26c
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v4

    if-ge v3, v4, :cond_2da

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v3

    aget-wide v7, v7, v1

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v6, v6, v0

    aget-object v6, v6, v3

    add-int/lit8 v7, v1, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v7, v7, v0

    aget-object v7, v7, v3

    add-int/lit8 v8, v1, 0x2

    aget-wide v7, v7, v8

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v6, v6, v0

    aget-object v6, v6, v3

    add-int/lit8 v7, v1, 0x3

    aget-wide v6, v6, v7

    aput-wide v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_26c

    :cond_2da
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$500(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$500(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$500(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$500(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    move v3, v2

    :goto_340
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v4

    if-ge v3, v4, :cond_3ae

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    add-int/2addr v7, v3

    aget-wide v6, v6, v7

    aput-wide v6, v5, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v1, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v7

    aget-wide v7, v7, v4

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v1, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v8

    add-int/2addr v8, v4

    aget-wide v7, v7, v8

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    add-int/lit8 v6, v1, 0x3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    aget-wide v7, v7, v4

    aput-wide v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_340

    :cond_3ae
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_263

    :cond_3b2
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$400(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v1

    if-ne v1, v10, :cond_459

    move v1, v2

    :goto_3bb
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    if-ge v1, v3, :cond_3f3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    aget-wide v5, v5, v9

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3bb

    :cond_3f3
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$500(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$500(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v5

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    move v1, v2

    :goto_421
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v3

    if-ge v1, v3, :cond_459

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    add-int/2addr v5, v1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$a:[[[D

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$800(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->this$0:Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;->access$100(Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_421

    :cond_459
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dst/DoubleDST_3D$14;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_235

    :cond_45e
    return-void
.end method
