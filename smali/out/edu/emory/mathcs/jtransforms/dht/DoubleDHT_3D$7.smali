.class Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->inverse([DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

.field final synthetic val$a:[D

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;II[DZ)V
    .registers 6

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$7;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$7;->val$firstSlice:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$7;->val$lastSlice:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$7;->val$a:[D

    iput-boolean p5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$7;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$7;->val$firstSlice:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$7;->val$lastSlice:I

    if-ge v0, v1, :cond_32

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$7;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$000(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v1

    mul-int v2, v0, v1

    const/4 v1, 0x0

    :goto_f
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$7;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$100(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_2f

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$7;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$300(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$7;->val$a:[D

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$7;->this$0:Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;->access$200(Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D;)I

    move-result v5

    mul-int/2addr v5, v1

    add-int/2addr v5, v2

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_3D$7;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6}, Ledu/emory/mathcs/jtransforms/dht/DoubleDHT_1D;->inverse([DIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_32
    return-void
.end method
