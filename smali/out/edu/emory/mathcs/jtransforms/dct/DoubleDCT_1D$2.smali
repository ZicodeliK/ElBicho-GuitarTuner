.class Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->inverse([DIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

.field final synthetic val$a:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I

.field final synthetic val$t:[D


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;II[DI[D)V
    .registers 7

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;->this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;->val$lastIdx:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;->val$a:[D

    iput p5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;->val$offa:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;->val$t:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;->val$firstIdx:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;->val$lastIdx:I

    if-ge v0, v1, :cond_32

    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;->val$a:[D

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;->val$offa:I

    add-int/2addr v3, v0

    aget-wide v2, v2, v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;->val$t:[D

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;->this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->access$000(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;)[D

    move-result-object v5

    aget-wide v5, v5, v1

    mul-double/2addr v5, v2

    aput-wide v5, v4, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;->val$t:[D

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D$2;->this$0:Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;->access$000(Ledu/emory/mathcs/jtransforms/dct/DoubleDCT_1D;)[D

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    aget-wide v6, v6, v1

    neg-double v6, v6

    mul-double v1, v6, v2

    aput-wide v1, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_32
    return-void
.end method
