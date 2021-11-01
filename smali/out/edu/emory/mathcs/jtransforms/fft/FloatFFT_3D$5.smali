.class Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->complexForward([[[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x800
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[[[F

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I


# direct methods
.method strictfp constructor <init>(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;II[[[F)V
    .registers 5

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;->val$firstSlice:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;->val$lastSlice:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;->val$a:[[[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public strictfp run()V
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [F

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;->val$firstSlice:I

    :goto_d
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;->val$lastSlice:I

    if-ge v0, v1, :cond_77

    move v1, v2

    :goto_12
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v1, v3, :cond_74

    mul-int/lit8 v5, v1, 0x2

    move v3, v2

    :goto_1d
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ge v3, v6, :cond_42

    mul-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v3

    aget v7, v7, v5

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v3

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    aput v7, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_42
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$500(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    invoke-virtual {v3, v4}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    move v3, v2

    :goto_4c
    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;->this$0:Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ge v3, v6, :cond_71

    mul-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v3

    aget v8, v4, v6

    aput v8, v7, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatFFT_3D$5;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v3

    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v6, v4, v6

    aput v6, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_77
    return-void
.end method
