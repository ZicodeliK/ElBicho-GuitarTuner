.class public Lorg/sidor/androidapps/simpletuner/UiController;
.super Ljava/lang/Object;
.source "UiController.java"

# interfaces
.implements Ljava/util/Observer;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Observer;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$sidor$androidapps$simpletuner$UiController$MessageClass:[I = null

.field public static final TAG:Ljava/lang/String; = "RealGuitarTuner"


# instance fields
.field private frequency:D

.field message:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

.field private final minNumberOfVotes:I

.field private numberOfVotes:I

.field previouslyProposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

.field proposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

.field private tuning:Lorg/sidor/androidapps/simpletuner/Tuning;

.field private ui:Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$org$sidor$androidapps$simpletuner$UiController$MessageClass()[I
    .registers 3

    .prologue
    .line 15
    sget-object v0, Lorg/sidor/androidapps/simpletuner/UiController;->$SWITCH_TABLE$org$sidor$androidapps$simpletuner$UiController$MessageClass:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->values()[Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->TOO_NOISY:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    invoke-virtual {v1}, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->TOO_QUIET:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    invoke-virtual {v1}, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->TUNING_IN_PROGRESS:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    invoke-virtual {v1}, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->WEIRD_FREQUENCY:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    invoke-virtual {v1}, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lorg/sidor/androidapps/simpletuner/UiController;->$SWITCH_TABLE$org$sidor$androidapps$simpletuner$UiController$MessageClass:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>(Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;)V
    .registers 4
    .param p1, "u"    # Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/sidor/androidapps/simpletuner/Tuning;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/sidor/androidapps/simpletuner/Tuning;-><init>(I)V

    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/UiController;->tuning:Lorg/sidor/androidapps/simpletuner/Tuning;

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lorg/sidor/androidapps/simpletuner/UiController;->minNumberOfVotes:I

    .line 36
    iput-object p1, p0, Lorg/sidor/androidapps/simpletuner/UiController;->ui:Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;

    .line 37
    return-void
.end method

.method private updateUi()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 70
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->tuning:Lorg/sidor/androidapps/simpletuner/Tuning;

    iget-wide v4, p0, Lorg/sidor/androidapps/simpletuner/UiController;->frequency:D

    invoke-virtual {v3, v4, v5}, Lorg/sidor/androidapps/simpletuner/Tuning;->getString(D)Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;

    move-result-object v0

    .line 72
    .local v0, "current":Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->ui:Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;

    iget v4, v0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->stringId:I

    invoke-virtual {v3, v4}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->changeString(I)V

    .line 76
    const-wide/16 v1, 0x0

    .line 78
    .local v1, "match":D
    iget v3, v0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->stringId:I

    if-nez v3, :cond_6e

    .line 79
    const-wide/16 v1, 0x0

    .line 87
    :goto_19
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->ui:Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->coloredGuitarMatch(D)V

    .line 91
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->proposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    sget-object v4, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->TUNING_IN_PROGRESS:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    if-ne v3, v4, :cond_32

    iget v3, v0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->stringId:I

    if-nez v3, :cond_32

    .line 92
    sget-object v3, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->WEIRD_FREQUENCY:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    iput-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->proposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    .line 93
    :cond_32
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->message:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    if-nez v3, :cond_3c

    .line 94
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->proposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    iput-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->previouslyProposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    iput-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->message:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    .line 95
    :cond_3c
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->message:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    iget-object v4, p0, Lorg/sidor/androidapps/simpletuner/UiController;->proposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    if-eq v3, v4, :cond_57

    .line 98
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->previouslyProposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    iget-object v4, p0, Lorg/sidor/androidapps/simpletuner/UiController;->proposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    if-eq v3, v4, :cond_90

    .line 99
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->proposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    iput-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->previouslyProposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    .line 100
    iput v10, p0, Lorg/sidor/androidapps/simpletuner/UiController;->numberOfVotes:I

    .line 104
    :cond_4e
    :goto_4e
    iget v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->numberOfVotes:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_57

    .line 105
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->proposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    iput-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->message:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    .line 108
    :cond_57
    invoke-static {}, Lorg/sidor/androidapps/simpletuner/UiController;->$SWITCH_TABLE$org$sidor$androidapps$simpletuner$UiController$MessageClass()[I

    move-result-object v3

    iget-object v4, p0, Lorg/sidor/androidapps/simpletuner/UiController;->message:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    invoke-virtual {v4}, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_f4

    .line 123
    :goto_66
    const-string v3, "RealGuitarTuner"

    const-string v4, "No message"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_6d
    return-void

    .line 81
    :cond_6e
    iget-wide v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->frequency:D

    iget-wide v5, v0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->freq:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_83

    .line 82
    iget-wide v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->frequency:D

    iget-wide v5, v0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->minFreq:D

    sub-double/2addr v3, v5

    iget-wide v5, v0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->freq:D

    iget-wide v7, v0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->minFreq:D

    sub-double/2addr v5, v7

    div-double v1, v3, v5

    goto :goto_19

    .line 84
    :cond_83
    iget-wide v3, v0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->maxFreq:D

    iget-wide v5, p0, Lorg/sidor/androidapps/simpletuner/UiController;->frequency:D

    sub-double/2addr v3, v5

    iget-wide v5, v0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->maxFreq:D

    iget-wide v7, v0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->freq:D

    sub-double/2addr v5, v7

    div-double v1, v3, v5

    goto :goto_19

    .line 101
    :cond_90
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->previouslyProposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    iget-object v4, p0, Lorg/sidor/androidapps/simpletuner/UiController;->proposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    if-ne v3, v4, :cond_4e

    .line 102
    iget v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->numberOfVotes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->numberOfVotes:I

    goto :goto_4e

    .line 110
    :pswitch_9d
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->ui:Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Actualmente estas afinando la cuerda.  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lorg/sidor/androidapps/simpletuner/Tuning$GuitarString;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 111
    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/sidor/androidapps/simpletuner/UiController;->tuning:Lorg/sidor/androidapps/simpletuner/Tuning;

    invoke-virtual {v5}, Lorg/sidor/androidapps/simpletuner/Tuning;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Afinada owo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 112
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v3, v4, v10}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->displayMessage(Ljava/lang/String;Z)V

    goto :goto_6d

    .line 115
    :pswitch_db
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->ui:Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;

    const-string v4, "Por Favor, toca mas fuerte rey :v"

    invoke-virtual {v3, v4, v9}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->displayMessage(Ljava/lang/String;Z)V

    goto :goto_6d

    .line 118
    :pswitch_e3
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->ui:Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;

    const-string v4, "Por Favor, toca mas fuerte"

    invoke-virtual {v3, v4, v9}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->displayMessage(Ljava/lang/String;Z)V

    goto :goto_6d

    .line 121
    :pswitch_eb
    iget-object v3, p0, Lorg/sidor/androidapps/simpletuner/UiController;->ui:Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;

    const-string v4, "Che pa, estas seguro que estas tocando una guitarra? :)"

    invoke-virtual {v3, v4, v9}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->displayMessage(Ljava/lang/String;Z)V

    goto/16 :goto_66

    .line 108
    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_eb
        :pswitch_e3
        :pswitch_db
    .end packed-switch
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "thing"    # Landroid/view/View;
    .param p3, "itemno"    # I
    .param p4, "rowno"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/sidor/androidapps/simpletuner/UiController;->tuning:Lorg/sidor/androidapps/simpletuner/Tuning;

    invoke-virtual {v0}, Lorg/sidor/androidapps/simpletuner/Tuning;->getTuningId()I

    move-result v0

    if-eq v0, p3, :cond_f

    .line 131
    new-instance v0, Lorg/sidor/androidapps/simpletuner/Tuning;

    invoke-direct {v0, p3}, Lorg/sidor/androidapps/simpletuner/Tuning;-><init>(I)V

    iput-object v0, p0, Lorg/sidor/androidapps/simpletuner/UiController;->tuning:Lorg/sidor/androidapps/simpletuner/Tuning;

    .line 132
    :cond_f
    const-string v0, "RealGuitarTuner"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cambiando afinacion a.  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/sidor/androidapps/simpletuner/UiController;->tuning:Lorg/sidor/androidapps/simpletuner/Tuning;

    invoke-virtual {v2}, Lorg/sidor/androidapps/simpletuner/Tuning;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 8
    .param p1, "who"    # Ljava/util/Observable;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 41
    instance-of v2, p1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    if-eqz v2, :cond_31

    .line 42
    instance-of v2, p2, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;

    if-eqz v2, :cond_53

    move-object v1, p2

    .line 43
    check-cast v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;

    .line 45
    .local v1, "result":Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;
    invoke-static {v1}, Lorg/sidor/androidapps/simpletuner/FrequencySmoothener;->getSmoothFrequency(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/sidor/androidapps/simpletuner/UiController;->frequency:D

    .line 46
    iget-object v2, v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->error:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    sget-object v3, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->BIG_FREQUENCY:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    if-eq v2, v3, :cond_23

    .line 47
    iget-object v2, v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->error:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    sget-object v3, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->BIG_VARIANCE:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    if-eq v2, v3, :cond_23

    .line 48
    iget-object v2, v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->error:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    sget-object v3, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->ZERO_SAMPLES:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    if-ne v2, v3, :cond_32

    .line 49
    :cond_23
    sget-object v2, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->TOO_NOISY:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    iput-object v2, p0, Lorg/sidor/androidapps/simpletuner/UiController;->proposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    .line 58
    :goto_27
    sget-boolean v2, Lorg/sidor/androidapps/simpletuner/ConfigFlags;->uiControlerInformsWhatItKnowsAboutSound:Z

    if-eqz v2, :cond_2e

    .line 59
    invoke-virtual {v1}, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->getDebug()V

    .line 61
    :cond_2e
    invoke-direct {p0}, Lorg/sidor/androidapps/simpletuner/UiController;->updateUi()V

    .line 67
    .end local v1    # "result":Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;
    :cond_31
    :goto_31
    return-void

    .line 50
    .restart local v1    # "result":Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;
    :cond_32
    iget-object v2, v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->error:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    sget-object v3, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->TOO_QUIET:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    if-ne v2, v3, :cond_3d

    .line 51
    sget-object v2, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->TOO_QUIET:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    iput-object v2, p0, Lorg/sidor/androidapps/simpletuner/UiController;->proposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    goto :goto_27

    .line 52
    :cond_3d
    iget-object v2, v1, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;->error:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    sget-object v3, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;->NO_PROBLEMS:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound$ReadingType;

    if-ne v2, v3, :cond_48

    .line 53
    sget-object v2, Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;->TUNING_IN_PROGRESS:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    iput-object v2, p0, Lorg/sidor/androidapps/simpletuner/UiController;->proposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    goto :goto_27

    .line 55
    :cond_48
    const-string v2, "RealGuitarTuner"

    const-string v3, "UiController: Unknown class of message."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/sidor/androidapps/simpletuner/UiController;->proposedMessage:Lorg/sidor/androidapps/simpletuner/UiController$MessageClass;

    goto :goto_27

    .line 62
    .end local v1    # "result":Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$AnalyzedSound;
    :cond_53
    instance-of v2, p2, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$ArrayToDump;

    if-eqz v2, :cond_31

    move-object v0, p2

    .line 63
    check-cast v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$ArrayToDump;

    .line 64
    .local v0, "a":Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$ArrayToDump;
    iget-object v2, p0, Lorg/sidor/androidapps/simpletuner/UiController;->ui:Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;

    iget-object v3, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$ArrayToDump;->arr:[D

    iget v4, v0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$ArrayToDump;->elements:I

    invoke-virtual {v2, v3, v4}, Lorg/sidor/androidapps/simpletuner/SimpleGuitarTunerActivity;->dumpArray([DI)V

    goto :goto_31
.end method
