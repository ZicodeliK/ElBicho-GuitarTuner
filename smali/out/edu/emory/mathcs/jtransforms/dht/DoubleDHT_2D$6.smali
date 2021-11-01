.class Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->inverse([DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

.field final synthetic val$a:[D

.field final synthetic val$firstColumn:I

.field final synthetic val$lastColumn:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;II[DZ)V
    .registers 6

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->val$firstColumn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->val$lastColumn:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->val$a:[D

    iput-boolean p5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v0

    new-array v3, v0, [D

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->val$firstColumn:I

    :goto_b
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->val$lastColumn:I

    if-ge v0, v1, :cond_51

    move v1, v2

    :goto_10
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v4

    if-ge v1, v4, :cond_29

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->val$a:[D

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v5

    mul-int/2addr v5, v1

    add-int/2addr v5, v0

    aget-wide v4, v4, v5

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_29
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->val$scale:Z

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DZ)V

    move v1, v2

    :goto_35
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v4

    if-ge v1, v4, :cond_4e

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->val$a:[D

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$6;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v5

    mul-int/2addr v5, v1

    add-int/2addr v5, v0

    aget-wide v6, v3, v1

    aput-wide v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_51
    return-void
.end method
