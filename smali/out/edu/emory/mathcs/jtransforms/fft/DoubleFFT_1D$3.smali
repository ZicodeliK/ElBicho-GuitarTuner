.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_complex([DII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

.field final synthetic val$a:[D

.field final synthetic val$ak:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$isign:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$isign:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$firstIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$lastIdx:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$offa:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$ak:[D

    iput-object p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$isign:I

    if-lez v0, :cond_55

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$firstIdx:I

    :goto_6
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$lastIdx:I

    if-ge v0, v1, :cond_a7

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$offa:I

    add-int/2addr v3, v1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$offa:I

    add-int/2addr v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$ak:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v6, v6, v3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v8, v8, v4

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v10

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v5, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$ak:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v6, v6, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v3

    aget-wide v8, v3, v2

    mul-double/2addr v6, v8

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v3, v3, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v1

    mul-double/2addr v3, v8

    add-double/2addr v3, v6

    aput-wide v3, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_55
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$firstIdx:I

    :goto_57
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$lastIdx:I

    if-ge v0, v1, :cond_a7

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$offa:I

    add-int/2addr v3, v1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$offa:I

    add-int/2addr v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$ak:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v6, v6, v3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v1

    mul-double/2addr v6, v8

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v8, v8, v4

    iget-object v10, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v10}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v10

    aget-wide v10, v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$ak:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v6, v6, v3

    neg-double v6, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v3

    aget-wide v8, v3, v2

    mul-double/2addr v6, v8

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->val$a:[D

    aget-wide v3, v3, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$3;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v1

    mul-double/2addr v3, v8

    add-double/2addr v3, v6

    aput-wide v3, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_a7
    return-void
.end method
