.class Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->ddxt3da_subth(I[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

.field final synthetic val$a:[D

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z

.field final synthetic val$startt:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;III[DIZ)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$isgn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$n0:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$nthreads:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    iput p6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iput-boolean p7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const/4 v11, 0x2

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_226

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$n0:I

    :goto_9
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_453

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$000(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    mul-int v4, v0, v1

    move v1, v2

    :goto_1a
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_38

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_38
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    if-le v1, v11, :cond_17a

    move v1, v2

    :goto_41
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_221

    move v3, v2

    :goto_4a
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_b1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v7

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    add-int/2addr v8, v3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    aget-wide v9, v9, v5

    aput-wide v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v9, v5, 0x1

    aget-wide v8, v8, v9

    aput-wide v8, v7, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v10, v5, 0x2

    aget-wide v9, v9, v10

    aput-wide v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v5, v5, 0x3

    aget-wide v8, v8, v5

    aput-wide v8, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_b1
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move v3, v2

    :goto_10f
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_176

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v8

    iget v9, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    add-int/2addr v9, v3

    aget-wide v8, v8, v9

    aput-wide v8, v7, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v8, v5, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v9

    aget-wide v9, v9, v6

    aput-wide v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v8, v5, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v9

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v10

    add-int/2addr v10, v6

    aget-wide v9, v9, v10

    aput-wide v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v5, v5, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v8

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v6, v9

    aget-wide v8, v8, v6

    aput-wide v8, v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_10f

    :cond_176
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_41

    :cond_17a
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    if-ne v1, v11, :cond_221

    move v1, v2

    :goto_183
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_1bd

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    add-int/2addr v6, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    aget-wide v7, v7, v3

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v3, v3, 0x1

    aget-wide v7, v7, v3

    aput-wide v7, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_183

    :cond_1bd
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    invoke-virtual {v1, v3, v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v3, v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move v1, v2

    :goto_1e7
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_221

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    add-int/2addr v7, v1

    aget-wide v6, v6, v7

    aput-wide v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v1

    aget-wide v6, v6, v7

    aput-wide v6, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e7

    :cond_221
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_9

    :cond_226
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$n0:I

    :goto_228
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$600(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    if-ge v0, v1, :cond_453

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$000(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    mul-int v4, v0, v1

    move v1, v2

    :goto_239
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_259

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_239

    :cond_259
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    if-le v1, v11, :cond_3a3

    move v1, v2

    :goto_262
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_44e

    move v3, v2

    :goto_26b
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_2d2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v7

    iget v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    add-int/2addr v8, v3

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    aget-wide v9, v9, v5

    aput-wide v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v9, v5, 0x1

    aget-wide v8, v8, v9

    aput-wide v8, v7, v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v10, v5, 0x2

    aget-wide v9, v9, v10

    aput-wide v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v5, v5, 0x3

    aget-wide v8, v8, v5

    aput-wide v8, v7, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_26b

    :cond_2d2
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$scale:Z

    invoke-virtual {v3, v5, v6, v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v3, v2

    :goto_338
    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_39f

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    add-int/2addr v5, v1

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v8

    iget v9, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    add-int/2addr v9, v3

    aget-wide v8, v8, v9

    aput-wide v8, v7, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v8, v5, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v9

    aget-wide v9, v9, v6

    aput-wide v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v8, v5, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v9

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v10

    add-int/2addr v10, v6

    aget-wide v9, v9, v10

    aput-wide v9, v7, v8

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v5, v5, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v8

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v6, v9

    aget-wide v8, v8, v6

    aput-wide v8, v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_338

    :cond_39f
    add-int/lit8 v1, v1, 0x4

    goto/16 :goto_262

    :cond_3a3
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    if-ne v1, v11, :cond_44e

    move v1, v2

    :goto_3ac
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_3e6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    add-int/2addr v6, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    aget-wide v7, v7, v3

    aput-wide v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v3, v3, 0x1

    aget-wide v7, v7, v3

    aput-wide v7, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ac

    :cond_3e6
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$scale:Z

    invoke-virtual {v1, v3, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$500(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    add-int/2addr v5, v6

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$scale:Z

    invoke-virtual {v1, v3, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v1, v2

    :goto_414
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_44e

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    add-int/2addr v7, v1

    aget-wide v6, v6, v7

    aput-wide v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$a:[D

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$800(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)[D

    move-result-object v6

    iget v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$startt:I

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v1

    aget-wide v6, v6, v7

    aput-wide v6, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_414

    :cond_44e
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$13;->val$nthreads:I

    add-int/2addr v0, v1

    goto/16 :goto_228

    :cond_453
    return-void
.end method
