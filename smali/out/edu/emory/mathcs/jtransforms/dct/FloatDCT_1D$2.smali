.class Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->inverse([FIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

.field final synthetic val$a:[F

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I

.field final synthetic val$t:[F


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;II[FI[F)V
    .registers 7

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;->val$firstIdx:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;->val$lastIdx:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;->val$a:[F

    iput p5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;->val$offa:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;->val$t:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget v0, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;->val$firstIdx:I

    :goto_2
    iget v1, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;->val$lastIdx:I

    if-ge v0, v1, :cond_31

    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;->val$a:[F

    iget v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;->val$offa:I

    add-int/2addr v3, v0

    aget v2, v2, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;->val$t:[F

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;)[F

    move-result-object v4

    aget v4, v4, v1

    mul-float/2addr v4, v2

    aput v4, v3, v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;->val$t:[F

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D$2;->this$0:Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;->access$000(Ledu/emory/mathcs/jtransforms/dct/FloatDCT_1D;)[F

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    aget v1, v5, v1

    neg-float v1, v1

    mul-float/2addr v1, v2

    aput v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_31
    return-void
.end method
