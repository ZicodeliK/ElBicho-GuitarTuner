.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(I[[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:[[D

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z

.field final synthetic val$startt:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;IIII[[DZ)V
    .registers 8

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$isgn:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$nthreads:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    iput-boolean p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const/4 v2, 0x0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_39a

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x4

    if-le v0, v1, :cond_1f4

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v0, v0, 0x8

    :goto_16
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_73c

    move v1, v2

    :goto_1f
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v3

    if-ge v1, v3, :cond_d6

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v8, v8, v1

    aget-wide v8, v8, v0

    aput-wide v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v8, v8, v1

    add-int/lit8 v9, v0, 0x1

    aget-wide v8, v8, v9

    aput-wide v8, v7, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v7, v7, v1

    add-int/lit8 v8, v0, 0x2

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v7, v7, v1

    add-int/lit8 v8, v0, 0x3

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v4, v4, v1

    add-int/lit8 v7, v0, 0x4

    aget-wide v7, v4, v7

    aput-wide v7, v3, v5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    add-int/lit8 v4, v5, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v5, v5, v1

    add-int/lit8 v7, v0, 0x5

    aget-wide v7, v5, v7

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v4, v4, v1

    add-int/lit8 v5, v0, 0x6

    aget-wide v4, v4, v5

    aput-wide v4, v3, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    add-int/lit8 v4, v6, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v5, v5, v1

    add-int/lit8 v6, v0, 0x7

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1f

    :cond_d6
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v1, v2

    :goto_136
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v3

    if-ge v1, v3, :cond_1ed

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v7, v7, v1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v8

    aget-wide v8, v8, v3

    aput-wide v8, v7, v0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v7, v7, v1

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v9

    add-int/lit8 v3, v3, 0x1

    aget-wide v9, v9, v3

    aput-wide v9, v7, v8

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v1

    add-int/lit8 v7, v0, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v8

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v1

    add-int/lit8 v7, v0, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v1

    add-int/lit8 v4, v0, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v7

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v1

    add-int/lit8 v4, v0, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v1

    add-int/lit8 v4, v0, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v5

    aget-wide v7, v5, v6

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v1

    add-int/lit8 v4, v0, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_136

    :cond_1ed
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    goto/16 :goto_16

    :cond_1f4
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_30c

    move v0, v2

    :goto_201
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_271

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v5, v5, v0

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v6, v6, 0x4

    aget-wide v5, v5, v6

    aput-wide v5, v4, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v5, v5, v0

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v4, v4, v0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v1, v3

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v4, v4, v0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-wide v4, v4, v5

    aput-wide v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_201

    :cond_271
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    invoke-virtual {v0, v1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    :goto_29c
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v0

    if-ge v2, v0, :cond_73c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v5

    aget-wide v5, v5, v0

    aput-wide v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    aget-wide v5, v5, v0

    aput-wide v5, v3, v4

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v0, v0, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v4

    aget-wide v4, v4, v1

    aput-wide v4, v0, v3

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v0, v0, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    aget-wide v4, v4, v1

    aput-wide v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_29c

    :cond_30c
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_73c

    move v0, v2

    :goto_319
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_351

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v1, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v4, v4, v0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v5, v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v3, v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v4, v4, v0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_319

    :cond_351
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    invoke-virtual {v0, v1, v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    :goto_362
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v0

    if-ge v2, v0, :cond_73c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v1, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v4

    aget-wide v4, v4, v0

    aput-wide v4, v1, v3

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v1, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    aget-wide v4, v4, v0

    aput-wide v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_362

    :cond_39a
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x4

    if-le v0, v1, :cond_590

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v0, v0, 0x8

    :goto_3aa
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_73c

    move v1, v2

    :goto_3b3
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v3

    if-ge v1, v3, :cond_46a

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v7

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v8, v8, v1

    aget-wide v8, v8, v0

    aput-wide v8, v7, v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v8, v8, v1

    add-int/lit8 v9, v0, 0x1

    aget-wide v8, v8, v9

    aput-wide v8, v7, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v7, v7, v1

    add-int/lit8 v8, v0, 0x2

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v7, v7, v1

    add-int/lit8 v8, v0, 0x3

    aget-wide v7, v7, v8

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v4, v4, v1

    add-int/lit8 v7, v0, 0x4

    aget-wide v7, v4, v7

    aput-wide v7, v3, v5

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    add-int/lit8 v4, v5, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v5, v5, v1

    add-int/lit8 v7, v0, 0x5

    aget-wide v7, v5, v7

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v4, v4, v1

    add-int/lit8 v5, v0, 0x6

    aget-wide v4, v4, v5

    aput-wide v4, v3, v6

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    add-int/lit8 v4, v6, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v5, v5, v1

    add-int/lit8 v6, v0, 0x7

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3b3

    :cond_46a
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    iget-boolean v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$scale:Z

    invoke-virtual {v1, v3, v4, v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v1, v2

    :goto_4d2
    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v3

    if-ge v1, v3, :cond_589

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v7, v7, v1

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v8

    aget-wide v8, v8, v3

    aput-wide v8, v7, v0

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v7, v7, v1

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v9}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v9

    add-int/lit8 v3, v3, 0x1

    aget-wide v9, v9, v3

    aput-wide v9, v7, v8

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v1

    add-int/lit8 v7, v0, 0x2

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v8

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v1

    add-int/lit8 v7, v0, 0x3

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    aget-wide v8, v8, v4

    aput-wide v8, v3, v7

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v1

    add-int/lit8 v4, v0, 0x4

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v7

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v1

    add-int/lit8 v4, v0, 0x5

    iget-object v7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    aget-wide v7, v7, v5

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v1

    add-int/lit8 v4, v0, 0x6

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v5

    aget-wide v7, v5, v6

    aput-wide v7, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v1

    add-int/lit8 v4, v0, 0x7

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4d2

    :cond_589
    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    goto/16 :goto_3aa

    :cond_590
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_6ac

    move v0, v2

    :goto_59d
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_60d

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v1, v3

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v5, v5, v0

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v6, v6, 0x4

    aget-wide v5, v5, v6

    aput-wide v5, v4, v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v5, v5, v0

    iget v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x1

    aget-wide v5, v5, v6

    aput-wide v5, v4, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v4, v4, v0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v1, v3

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v4, v4, v0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-wide v4, v4, v5

    aput-wide v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_59d

    :cond_60d
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$scale:Z

    invoke-virtual {v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$scale:Z

    invoke-virtual {v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    :goto_63c
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v0

    if-ge v2, v0, :cond_73c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v5

    aget-wide v5, v5, v0

    aput-wide v5, v3, v4

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v3, v3, v2

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    aget-wide v5, v5, v0

    aput-wide v5, v3, v4

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v0, v0, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v4

    aget-wide v4, v4, v1

    aput-wide v4, v0, v3

    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v0, v0, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    aget-wide v4, v4, v1

    aput-wide v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_63c

    :cond_6ac
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$300(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v0

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$nthreads:I

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_73c

    move v0, v2

    :goto_6b9
    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_6f1

    iget v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v1, v3

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v4, v4, v0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v5, v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v3, v1

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v4, v4, v0

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6b9

    :cond_6f1
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$200(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v1

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    iget-boolean v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$scale:Z

    invoke-virtual {v0, v1, v3, v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    :goto_704
    iget-object v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$100(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)I

    move-result v0

    if-ge v2, v0, :cond_73c

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$startt:I

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v1, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v4

    aget-wide v4, v4, v0

    aput-wide v4, v1, v3

    iget-object v1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$a:[[D

    aget-object v1, v1, v2

    iget v3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->val$n0:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D$30;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;->access$400(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_2D;)[D

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    aget-wide v4, v4, v0

    aput-wide v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_704

    :cond_73c
    return-void
.end method
