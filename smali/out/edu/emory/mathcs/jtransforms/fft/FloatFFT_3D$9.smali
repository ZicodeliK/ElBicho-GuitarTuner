.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->complexInverse([FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[F

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I

.field final synthetic val$scale:Z


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[FZ)V
    .registers 6

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->val$firstRow:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->val$lastRow:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->val$a:[F

    iput-boolean p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 12

    const/4 v2, 0x0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->val$firstRow:I

    :goto_d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->val$lastRow:I

    if-ge v0, v1, :cond_83

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    mul-int v5, v0, v1

    move v1, v2

    :goto_1a
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_80

    mul-int/lit8 v6, v1, 0x2

    move v3, v2

    :goto_25
    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v3, v7, :cond_4b

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    mul-int/lit8 v8, v3, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->val$a:[F

    aget v9, v9, v7

    aput v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->val$a:[F

    add-int/lit8 v7, v7, 0x1

    aget v7, v9, v7

    aput v7, v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_4b
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$700(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-boolean v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->val$scale:Z

    invoke-virtual {v3, v4, v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    move v3, v2

    :goto_57
    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$600(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v3, v7, :cond_7d

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    mul-int/lit8 v8, v3, 0x2

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->val$a:[F

    aget v10, v4, v8

    aput v10, v9, v7

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$9;->val$a:[F

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    aget v8, v4, v8

    aput v8, v9, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    :cond_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_83
    return-void
.end method
