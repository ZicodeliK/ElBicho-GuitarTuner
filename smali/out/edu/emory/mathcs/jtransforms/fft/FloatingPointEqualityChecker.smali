.class public Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;
.super Ljava/lang/Object;


# instance fields
.field private final dabs:D

.field private final drel:D

.field private final fabs:F

.field private final frel:D

.field private final msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DDFF)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->msg:Ljava/lang/String;

    iput-wide p2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->drel:D

    iput-wide p4, p0, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->dabs:D

    float-to-double v0, p6

    iput-wide v0, p0, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->frel:D

    iput p7, p0, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->fabs:F

    return-void
.end method


# virtual methods
.method public final assertEquals(Ljava/lang/String;DD)V
    .registers 13

    sub-double v0, p4, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->drel:D

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    cmpg-double v2, v0, v2

    if-lez v2, :cond_44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", abs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    div-double/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->dabs:D

    move-wide v1, p2

    move-wide v3, p4

    invoke-static/range {v0 .. v6}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;DDD)V

    :cond_44
    return-void
.end method

.method public final assertEquals(Ljava/lang/String;FF)V
    .registers 11

    sub-float v0, p3, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v1, v0

    iget-wide v3, p0, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->frel:D

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-lez v1, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", abs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    float-to-double v1, p2

    float-to-double v3, p3

    iget v5, p0, Ledu/emory/mathcs/jtransforms/fft/FloatingPointEqualityChecker;->fabs:F

    float-to-double v5, v5

    invoke-static/range {v0 .. v6}, Lorg/junit/Assert;->assertEquals(Ljava/lang/String;DDD)V

    :cond_47
    return-void
.end method
