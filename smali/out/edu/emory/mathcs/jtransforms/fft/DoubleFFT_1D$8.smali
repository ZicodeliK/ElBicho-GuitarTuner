.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V
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
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;III[DI[D)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$isign:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$firstIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$lastIdx:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$a:[D

    iput p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$offa:I

    iput-object p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$isign:I

    if-lez v0, :cond_55

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$firstIdx:I

    :goto_6
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$lastIdx:I

    if-ge v0, v1, :cond_a7

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$a:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$offa:I

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v5, v5, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v7, v7, v1

    mul-double/2addr v5, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v7

    aget-wide v7, v7, v2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v9, v9, v2

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    aput-wide v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$a:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$offa:I

    add-int/2addr v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v5, v5, v2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v7, v7, v1

    mul-double/2addr v5, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v7

    aget-wide v7, v7, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v1, v1, v2

    mul-double/2addr v1, v7

    add-double/2addr v1, v5

    aput-wide v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_55
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$firstIdx:I

    :goto_57
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$lastIdx:I

    if-ge v0, v1, :cond_a7

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$a:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$offa:I

    add-int/2addr v4, v1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v5, v5, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v7, v7, v1

    mul-double/2addr v5, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v7

    aget-wide v7, v7, v2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v9, v9, v2

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aput-wide v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$a:[D

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$offa:I

    add-int/2addr v4, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v5, v5, v2

    neg-double v5, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v7, v7, v1

    mul-double/2addr v5, v7

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v7

    aget-wide v7, v7, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$8;->val$ak:[D

    aget-wide v1, v1, v2

    mul-double/2addr v1, v7

    add-double/2addr v1, v5

    aput-wide v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_a7
    return-void
.end method
