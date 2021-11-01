.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->mixedRadixRealInverseFull([DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:[D

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$scale:Z

.field final synthetic val$temp2:[[[D


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;II[D[[[DZ)V
    .registers 7

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->val$firstSlice:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->val$lastSlice:I

    iput-object p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->val$a:[D

    iput-object p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->val$temp2:[[[D

    iput-boolean p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->val$firstSlice:I

    :goto_3
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->val$lastSlice:I

    if-ge v0, v1, :cond_48

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    mul-int v3, v0, v1

    move v1, v2

    :goto_10
    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    if-ge v1, v4, :cond_45

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->val$a:[D

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v1

    add-int/2addr v5, v3

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->val$temp2:[[[D

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    invoke-static {v4, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->val$temp2:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v1

    iget-boolean v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_3D$28;->val$scale:Z

    invoke-virtual {v4, v5, v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->realInverseFull([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_48
    return-void
.end method
