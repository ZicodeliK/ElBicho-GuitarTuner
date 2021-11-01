.class Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->ddxt2d_subth(I[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

.field final synthetic val$a:[F

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z

.field final synthetic val$startt:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;IIII[FZ)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$nthreads:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$isgn:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$n0:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    iput-boolean p7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v7, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_29e

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$isgn:I

    if-ne v0, v7, :cond_158

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$n0:I

    mul-int/lit8 v0, v0, 0x4

    :goto_16
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_3fe

    move v1, v2

    :goto_1f
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v3

    if-ge v1, v3, :cond_85

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    add-int/2addr v6, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    aget v7, v7, v3

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    add-int/lit8 v7, v3, 0x1

    aget v6, v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    add-int/lit8 v8, v3, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    add-int/lit8 v3, v3, 0x3

    aget v3, v6, v3

    aput v3, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_85
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v5

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    move v1, v2

    :goto_eb
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v3

    if-ge v1, v3, :cond_151

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    add-int/2addr v7, v1

    aget v6, v6, v7

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v7

    aget v7, v7, v4

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    add-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v8

    add-int/2addr v8, v4

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    add-int/lit8 v3, v3, 0x3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    aget v4, v6, v4

    aput v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_eb

    :cond_151
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    goto/16 :goto_16

    :cond_158
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$n0:I

    mul-int/lit8 v0, v0, 0x4

    :goto_15c
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_3fe

    move v1, v2

    :goto_165
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v3

    if-ge v1, v3, :cond_1cb

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    add-int/2addr v6, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    aget v7, v7, v3

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    add-int/lit8 v7, v3, 0x1

    aget v6, v6, v7

    aput v6, v5, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    add-int/lit8 v8, v3, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v5

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    add-int/lit8 v3, v3, 0x3

    aget v3, v6, v3

    aput v3, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_165

    :cond_1cb
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v5

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    move v1, v2

    :goto_231
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v3

    if-ge v1, v3, :cond_297

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    add-int/2addr v7, v1

    aget v6, v6, v7

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v7

    aget v7, v7, v4

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    add-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v8

    add-int/2addr v8, v4

    aget v7, v7, v8

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    add-int/lit8 v3, v3, 0x3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    aget v4, v6, v4

    aput v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_231

    :cond_297
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    goto/16 :goto_15c

    :cond_29e
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_380

    move v0, v2

    :goto_2ab
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_2e6

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v1

    mul-int/2addr v1, v0

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$n0:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    add-int/2addr v3, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    aget v5, v5, v1

    aput v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    add-int/lit8 v1, v1, 0x1

    aget v1, v5, v1

    aput v1, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2ab

    :cond_2e6
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$isgn:I

    if-ne v0, v7, :cond_352

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-virtual {v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v4

    add-int/2addr v3, v4

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-virtual {v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    :goto_317
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v0

    if-ge v2, v0, :cond_3fe

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v0

    mul-int/2addr v0, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$n0:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    add-int/2addr v1, v2

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v4

    aget v4, v4, v1

    aput v4, v3, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v5

    add-int/2addr v1, v5

    aget v1, v4, v1

    aput v1, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_317

    :cond_352
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-virtual {v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v4

    add-int/2addr v3, v4

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-virtual {v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    goto :goto_317

    :cond_380
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$nthreads:I

    if-ne v0, v1, :cond_3fe

    move v0, v2

    :goto_38b
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_3af

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    add-int/2addr v3, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v5

    mul-int/2addr v5, v0

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$n0:I

    add-int/2addr v5, v6

    aget v4, v4, v5

    aput v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_38b

    :cond_3af
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$isgn:I

    if-ne v0, v7, :cond_3ea

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-virtual {v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->forward([FIZ)V

    :goto_3c6
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v0

    if-ge v2, v0, :cond_3fe

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$a:[F

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)I

    move-result v1

    mul-int/2addr v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$n0:I

    add-int/2addr v1, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    add-int/2addr v4, v2

    aget v3, v3, v4

    aput v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c6

    :cond_3ea
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D;)[F

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$startt:I

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-virtual {v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V

    goto :goto_3c6

    :cond_3fe
    return-void
.end method
