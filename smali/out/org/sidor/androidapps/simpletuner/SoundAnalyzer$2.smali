.class Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$2;
.super Ljava/lang/Object;
.source "SoundAnalyzer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->onPeriodicNotification(Landroid/media/AudioRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;


# direct methods
.method constructor <init>(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$2;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 227
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$2;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-static {v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$5(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_32

    .line 228
    invoke-static {}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$6()D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v0, v2

    invoke-static {}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$7()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$8(D)V

    .line 229
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$2;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-static {v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$9(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)V

    .line 230
    sget-boolean v0, Lorg/sidor/androidapps/simpletuner/ConfigFlags;->shouldLogAnalyzisTooSlow:Z

    if-eqz v0, :cond_31

    .line 231
    const-string v0, "RealGuitarTuner"

    const-string v1, "Analyzing algorithm is too slow. Dropping sample"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_31
    :goto_31
    return-void

    .line 234
    :cond_32
    invoke-static {}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$6()D

    move-result-wide v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    sub-double/2addr v0, v2

    invoke-static {}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$10()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$8(D)V

    .line 235
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$2;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-static {v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$9(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)V

    .line 237
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$2;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$2;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-static {v1}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$11(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$12(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;)V

    .line 239
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$2;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    iget-boolean v0, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->dumpAudioData:Z

    if-eqz v0, :cond_6e

    .line 240
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$2;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-static {v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$13(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)V

    .line 241
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$2;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->dumpAudioData:Z

    .line 242
    const-string v0, "RealGuitarTuner"

    const-string v1, "finished dumping."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_6e
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$2;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-static {v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$5(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 245
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$2;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-static {v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$14(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)V

    goto :goto_31
.end method
