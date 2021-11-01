.class Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$1;
.super Ljava/lang/Object;
.source "SoundAnalyzer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->startAudioReaderThread()V
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
    iput-object p1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$1;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 146
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$1;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-static {v2}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$0(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 156
    const-string v2, "RealGuitarTuner"

    const-string v3, "AudioReaderThread reached the end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 147
    :cond_10
    iget-object v2, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$1;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-static {v2}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$1(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)Landroid/media/AudioRecord;

    move-result-object v2

    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$1;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-static {v3}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$2(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)[S

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$3()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    .line 148
    .local v1, "shortsRead":I
    if-gez v1, :cond_2f

    .line 149
    const-string v2, "RealGuitarTuner"

    const-string v3, "Could not read audio data."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_2f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    if-ge v0, v1, :cond_0

    .line 152
    iget-object v2, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$1;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-static {v2}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$4(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)Lorg/sidor/androidapps/simpletuner/CircularBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$1;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-static {v3}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->access$2(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;)[S

    move-result-object v3

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/sidor/androidapps/simpletuner/CircularBuffer;->push(S)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_30
.end method
