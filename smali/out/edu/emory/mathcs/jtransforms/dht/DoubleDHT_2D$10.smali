.class Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->ddxt2d_subth(I[[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

.field final synthetic val$a:[[D

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z

.field final synthetic val$startt:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;IIII[[DZ)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$nthreads:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$isgn:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$n0:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    iput-boolean p7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v6, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_296

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$isgn:I

    if-ne v0, v6, :cond_150

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$n0:I

    mul-int/lit8 v0, v0, 0x4

    :goto_16
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_3e4

    move v1, v2

    :goto_1f
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v3

    if-ge v1, v3, :cond_85

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    add-int/2addr v5, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v6, v6, v1

    aget-wide v6, v6, v0

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v5, v5, v1

    add-int/lit8 v6, v0, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v6, v6, v1

    add-int/lit8 v7, v0, 0x2

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v5, v5, v1

    add-int/lit8 v6, v0, 0x3

    aget-wide v5, v5, v6

    aput-wide v5, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_85
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    move v1, v2

    :goto_e3
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v3

    if-ge v1, v3, :cond_149

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v4, v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    add-int/2addr v6, v1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v4, v4, v1

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v6

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v4, v4, v1

    add-int/lit8 v5, v0, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v7

    add-int/2addr v7, v3

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v4, v4, v1

    add-int/lit8 v5, v0, 0x3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_e3

    :cond_149
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    goto/16 :goto_16

    :cond_150
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$n0:I

    mul-int/lit8 v0, v0, 0x4

    :goto_154
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_3e4

    move v1, v2

    :goto_15d
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v3

    if-ge v1, v3, :cond_1c3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v4

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    add-int/2addr v5, v1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v6, v6, v1

    aget-wide v6, v6, v0

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v5, v5, v1

    add-int/lit8 v6, v0, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v6, v6, v1

    add-int/lit8 v7, v0, 0x2

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v5, v5, v1

    add-int/lit8 v6, v0, 0x3

    aget-wide v5, v5, v6

    aput-wide v5, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_15d

    :cond_1c3
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v5

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    move v1, v2

    :goto_229
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v3

    if-ge v1, v3, :cond_28f

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v4, v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v5

    iget v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    add-int/2addr v6, v1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v4, v4, v1

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v6

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v4, v4, v1

    add-int/lit8 v5, v0, 0x2

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v7

    add-int/2addr v7, v3

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v4, v4, v1

    add-int/lit8 v5, v0, 0x3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v6

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_229

    :cond_28f
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    goto/16 :goto_154

    :cond_296
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_374

    move v0, v2

    :goto_2a3
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_2de

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    add-int/2addr v1, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v4, v4, v0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$n0:I

    mul-int/lit8 v5, v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v3, v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v4, v4, v0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$n0:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a3

    :cond_2de
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$isgn:I

    if-ne v0, v6, :cond_346

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    invoke-virtual {v0, v1, v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    :goto_30b
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v0

    if-ge v2, v0, :cond_3e4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    add-int/2addr v0, v2

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v1, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$n0:I

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v4

    aget-wide v4, v4, v0

    aput-wide v4, v1, v3

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v1, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$n0:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v5

    add-int/2addr v0, v5

    aget-wide v4, v4, v0

    aput-wide v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_30b

    :cond_346
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$scale:Z

    invoke-virtual {v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v4

    add-int/2addr v3, v4

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$scale:Z

    invoke-virtual {v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    goto :goto_30b

    :cond_374
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$nthreads:I

    if-ne v0, v1, :cond_3e4

    move v0, v2

    :goto_37f
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_39d

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    add-int/2addr v3, v0

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v4, v4, v0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$n0:I

    aget-wide v4, v4, v5

    aput-wide v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_37f

    :cond_39d
    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$isgn:I

    if-ne v0, v6, :cond_3d0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    invoke-virtual {v0, v1, v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    :goto_3b2
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v0

    if-ge v2, v0, :cond_3e4

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$a:[[D

    aget-object v0, v0, v2

    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$n0:I

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    add-int/2addr v4, v2

    aget-wide v3, v3, v4

    aput-wide v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b2

    :cond_3d0
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$400(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)[D

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$startt:I

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$10;->val$scale:Z

    invoke-virtual {v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    goto :goto_3b2

    :cond_3e4
    return-void
.end method
