.class public Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;
.super Landroid/app/Activity;
.source "SimpleGuitarTunerActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RealGuitarTuner"


# instance fields
.field private final LAUNCHANALYZER:Z

.field awayFromTargetColor:[I

.field private bitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private guitar:Landroid/widget/ImageView;

.field private mainMessage:Landroid/widget/TextView;

.field oldString:I

.field private preloadedImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private soundAnalyzer:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

.field private stringNumberToImageId:[I

.field targetColor:[I

.field private tune:Landroid/widget/ImageView;

.field private tuningSelector:Landroid/widget/Spinner;

.field private uiController:Lorg/sidor/androidapps/simpletuner/UiController;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->LAUNCHANALYZER:Z

    .line 31
    iput-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->guitar:Landroid/widget/ImageView;

    .line 32
    iput-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->tune:Landroid/widget/ImageView;

    .line 33
    iput-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->tuningSelector:Landroid/widget/Spinner;

    .line 34
    iput-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->soundAnalyzer:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    .line 35
    iput-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->uiController:Lorg/sidor/androidapps/simpletuner/UiController;

    .line 36
    iput-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->mainMessage:Landroid/widget/TextView;

    .line 122
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    .line 129
    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->stringNumberToImageId:[I

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->oldString:I

    .line 144
    new-array v0, v2, [I

    fill-array-data v0, :array_40

    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->targetColor:[I

    .line 145
    new-array v0, v2, [I

    fill-array-data v0, :array_4a

    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->awayFromTargetColor:[I

    .line 23
    return-void

    .line 122
    :array_2e
    .array-data 4
        0x7f020002
        0x7f020003
        0x7f020004
        0x7f020005
        0x7f020006
        0x7f020007
        0x7f020008
    .end array-data

    .line 144
    :array_40
    .array-data 4
        0xa0
        0x50
        0x28
    .end array-data

    .line 145
    :array_4a
    .array-data 4
        0xa0
        0xa0
        0xa0
    .end array-data
.end method

.method private getAndCacheBitmap(I)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 66
    iget-object v2, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->preloadedImages:Ljava/util/Map;

    if-nez v2, :cond_b

    .line 67
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->preloadedImages:Ljava/util/Map;

    .line 68
    :cond_b
    iget-object v2, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->preloadedImages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 69
    .local v1, "ret":Landroid/graphics/Bitmap;
    if-nez v1, :cond_38

    .line 70
    iget-object v2, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    if-nez v2, :cond_25

    .line 71
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 72
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x4

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 74
    .end local v0    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_25
    invoke-virtual {p0}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->bitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->preloadedImages:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_38
    return-object v1
.end method


# virtual methods
.method public changeString(I)V
    .registers 4
    .param p1, "stringId"    # I

    .prologue
    .line 138
    iget v0, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->oldString:I

    if-eq v0, p1, :cond_13

    .line 139
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->guitar:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->stringNumberToImageId:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->getAndCacheBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    iput p1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->oldString:I

    .line 142
    :cond_13
    return-void
.end method

.method public coloredGuitarMatch(D)V
    .registers 14
    .param p1, "match"    # D

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 149
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->tune:Landroid/widget/ImageView;

    .line 150
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->targetColor:[I

    aget v1, v1, v6

    int-to-double v1, v1

    mul-double/2addr v1, p1

    sub-double v3, v8, p1

    iget-object v5, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->awayFromTargetColor:[I

    aget v5, v5, v6

    int-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 151
    iget-object v2, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->targetColor:[I

    aget v2, v2, v7

    int-to-double v2, v2

    mul-double/2addr v2, p1

    sub-double v4, v8, p1

    iget-object v6, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->awayFromTargetColor:[I

    aget v6, v6, v7

    int-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 152
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->targetColor:[I

    aget v3, v3, v10

    int-to-double v3, v3

    mul-double/2addr v3, p1

    sub-double v5, v8, p1

    iget-object v7, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->awayFromTargetColor:[I

    aget v7, v7, v10

    int-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v3, v3

    .line 150
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 154
    return-void
.end method

.method public displayMessage(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "positiveFeedback"    # Z

    .prologue
    const/16 v2, 0x22

    .line 157
    if-eqz p2, :cond_15

    const/16 v1, 0x8b

    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 158
    .local v0, "textColor":I
    :goto_a
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->mainMessage:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->mainMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    return-void

    .line 157
    .end local v0    # "textColor":I
    :cond_15
    const/16 v1, 0xff

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_a
.end method

.method public dumpArray([DI)V
    .registers 7
    .param p1, "inputArray"    # [D
    .param p2, "elements"    # I

    .prologue
    .line 81
    const-string v2, "RealGuitarTuner"

    const-string v3, "Starting File writer thread..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-array v0, p2, [D

    .line 83
    .local v0, "array":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-lt v1, p2, :cond_1a

    .line 85
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity$1;

    invoke-direct {v3, p0, p2, v0}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity$1;-><init>(Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;I[D)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 107
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 108
    return-void

    .line 84
    :cond_1a
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const-string v1, "RealGuitarTuner"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->setContentView(I)V

    .line 44
    new-instance v1, Lorg/sidor/androidapps/simpletuner/UiController;

    invoke-direct {v1, p0}, Lorg/sidor/androidapps/simpletuner/UiController;-><init>(Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;)V

    iput-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->uiController:Lorg/sidor/androidapps/simpletuner/UiController;

    .line 47
    :try_start_16
    new-instance v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-direct {v1}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;-><init>()V

    iput-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->soundAnalyzer:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_5c

    .line 52
    :goto_1d
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->soundAnalyzer:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    iget-object v2, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->uiController:Lorg/sidor/androidapps/simpletuner/UiController;

    invoke-virtual {v1, v2}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->addObserver(Ljava/util/Observer;)V

    .line 54
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->guitar:Landroid/widget/ImageView;

    .line 55
    const v1, 0x7f050002

    invoke-virtual {p0, v1}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->tune:Landroid/widget/ImageView;

    .line 56
    const/high16 v1, 0x7f050000

    invoke-virtual {p0, v1}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->mainMessage:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->tuningSelector:Landroid/widget/Spinner;

    .line 58
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->tuningSelector:Landroid/widget/Spinner;

    invoke-static {p0, v1}, Lorg/sidor/androidapps/simpletuner/Tuning;->populateSpinner(Landroid/app/Activity;Landroid/widget/Spinner;)V

    .line 59
    iget-object v1, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->tuningSelector:Landroid/widget/Spinner;

    iget-object v2, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->uiController:Lorg/sidor/androidapps/simpletuner/UiController;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 60
    return-void

    .line 48
    :catch_5c
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "The are problems with your microphone :("

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 50
    const-string v1, "RealGuitarTuner"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception when instantiating SoundAnalyzer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 166
    const-string v0, "RealGuitarTuner"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 111
    sget-boolean v0, Lorg/sidor/androidapps/simpletuner/ConfigFlags;->menuKeyCausesAudioDataDump:Z

    if-eqz v0, :cond_1d

    .line 112
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1d

    .line 113
    const-string v0, "RealGuitarTuner"

    const-string v1, "Menu button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "RealGuitarTuner"

    const-string v1, "Requesting audio data dump"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->soundAnalyzer:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-virtual {v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->dumpAudioDataRequest()V

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 173
    const-string v0, "RealGuitarTuner"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 179
    const-string v0, "RealGuitarTuner"

    const-string v1, "onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 186
    const-string v0, "RealGuitarTuner"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->soundAnalyzer:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    if-eqz v0, :cond_13

    .line 188
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->soundAnalyzer:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-virtual {v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->ensureStarted()V

    .line 189
    :cond_13
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 194
    const-string v0, "RealGuitarTuner"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->soundAnalyzer:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    if-eqz v0, :cond_13

    .line 196
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->soundAnalyzer:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-virtual {v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->start()V

    .line 197
    :cond_13
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 202
    const-string v0, "RealGuitarTuner"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->soundAnalyzer:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    if-eqz v0, :cond_13

    .line 204
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->soundAnalyzer:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    invoke-virtual {v0}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;->stop()V

    .line 205
    :cond_13
    return-void
.end method
