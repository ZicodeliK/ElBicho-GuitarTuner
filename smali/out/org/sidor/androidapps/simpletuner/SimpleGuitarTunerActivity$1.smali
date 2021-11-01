.class Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity$1;
.super Ljava/lang/Object;
.source "SimpleGuitarTunerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->dumpArray([DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;

.field private final synthetic val$array:[D

.field private final synthetic val$elements:I


# direct methods
.method constructor <init>(Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;I[D)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity$1;->this$0:Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;

    iput p2, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity$1;->val$elements:I

    iput-object p3, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity$1;->val$array:[D

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 90
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Chart_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity$1;->this$0:Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;

    .line 92
    const/4 v6, 0x1

    .line 91
    invoke-virtual {v5, v3, v6}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 93
    .local v1, "fOut":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 96
    .local v4, "osw":Ljava/io/OutputStreamWriter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    iget v5, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity$1;->val$elements:I

    if-lt v2, v5, :cond_4c

    .line 100
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 101
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 102
    const-string v5, "RealGuitarTuner"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Successfully dumped array in file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    :goto_4b
    return-void

    .line 97
    .restart local v1    # "fOut":Ljava/io/FileOutputStream;
    .restart local v2    # "i":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    :cond_4c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity$1;->val$array:[D

    aget-wide v6, v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_69

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 103
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    :catch_69
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "RealGuitarTuner"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method
