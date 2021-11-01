.class public Lorg/sidor/androidapps/simpletuner/ConfigFlags;
.super Ljava/lang/Object;
.source "ConfigFlags.java"


# static fields
.field public static howOftenLogNotifyRate:D

.field public static menuKeyCausesAudioDataDump:Z

.field public static shouldLogAnalyzisTooSlow:Z

.field public static uiControlerInformsWhatItKnowsAboutSound:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 9
    sput-boolean v2, Lorg/sidor/androidapps/simpletuner/ConfigFlags;->menuKeyCausesAudioDataDump:Z

    .line 12
    sput-boolean v2, Lorg/sidor/androidapps/simpletuner/ConfigFlags;->uiControlerInformsWhatItKnowsAboutSound:Z

    .line 15
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/sidor/androidapps/simpletuner/ConfigFlags;->howOftenLogNotifyRate:D

    .line 17
    sput-boolean v2, Lorg/sidor/androidapps/simpletuner/ConfigFlags;->shouldLogAnalyzisTooSlow:Z

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
