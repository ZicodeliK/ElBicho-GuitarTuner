.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->mixedRadixRealForwardFull([[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:[[F

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I

.field final synthetic val$n2d2:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;III[[F)V
    .registers 6

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->val$firstRow:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->val$lastRow:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->val$n2d2:I

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->val$a:[[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 11

    const/4 v9, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->val$firstRow:I

    :goto_3
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->val$lastRow:I

    if-ge v0, v1, :cond_64

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    sub-int v2, v1, v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->val$n2d2:I

    :goto_11
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v3

    if-ge v1, v3, :cond_61

    mul-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    sub-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->val$a:[[F

    aget-object v5, v5, v9

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->val$a:[[F

    aget-object v6, v6, v9

    aget v6, v6, v4

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->val$a:[[F

    aget-object v5, v5, v9

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->val$a:[[F

    aget-object v7, v7, v9

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    neg-float v7, v7

    aput v7, v5, v6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->val$a:[[F

    aget-object v5, v5, v0

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->val$a:[[F

    aget-object v6, v6, v2

    aget v6, v6, v4

    aput v6, v5, v3

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->val$a:[[F

    aget-object v5, v5, v0

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_2D$12;->val$a:[[F

    aget-object v6, v6, v2

    add-int/lit8 v4, v4, 0x1

    aget v4, v6, v4

    neg-float v4, v4

    aput v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_64
    return-void
.end method
