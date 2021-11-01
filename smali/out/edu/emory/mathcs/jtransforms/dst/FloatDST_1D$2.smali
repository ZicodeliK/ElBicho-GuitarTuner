.class Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->inverse([FIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

.field final synthetic val$a:[F

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;III[F)V
    .registers 6

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D$2;->this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D$2;->val$offa:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D$2;->val$firstIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D$2;->val$lastIdx:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D$2;->val$a:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D$2;->val$offa:I

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D$2;->this$0:Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;->access$000(Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D$2;->val$firstIdx:I

    :goto_d
    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D$2;->val$lastIdx:I

    if-ge v0, v2, :cond_29

    iget v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D$2;->val$offa:I

    add-int/2addr v2, v0

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D$2;->val$a:[F

    aget v3, v3, v2

    sub-int v4, v1, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D$2;->val$a:[F

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D$2;->val$a:[F

    aget v6, v6, v4

    aput v6, v5, v2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dst/FloatDST_1D$2;->val$a:[F

    aput v3, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_29
    return-void
.end method
