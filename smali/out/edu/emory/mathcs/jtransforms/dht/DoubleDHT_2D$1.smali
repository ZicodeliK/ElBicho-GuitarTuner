.class Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->forward([D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

.field final synthetic val$a:[D

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;II[D)V
    .registers 5

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$1;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$1;->val$firstRow:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$1;->val$lastRow:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$1;->val$a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$1;->val$firstRow:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$1;->val$lastRow:I

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$1;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v1

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$1;->val$a:[D

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D$1;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;->access$000(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_2D;)I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->forward([DI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1b
    return-void
.end method
