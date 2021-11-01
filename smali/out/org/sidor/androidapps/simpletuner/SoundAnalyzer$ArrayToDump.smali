.class public Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$ArrayToDump;
.super Ljava/lang/Object;
.source "SoundAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArrayToDump"
.end annotation


# instance fields
.field public arr:[D

.field elements:I

.field final synthetic this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;


# direct methods
.method public constructor <init>(Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;[DI)V
    .registers 4
    .param p2, "a"    # [D
    .param p3, "e"    # I

    .prologue
    .line 212
    iput-object p1, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$ArrayToDump;->this$0:Lorg/sidor/androidapps/simpletuner/SoundAnalyzer;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$ArrayToDump;->arr:[D

    .line 211
    iput p3, p0, Lorg/sidor/androidapps/simpletuner/SoundAnalyzer$ArrayToDump;->elements:I

    return-void
.end method
