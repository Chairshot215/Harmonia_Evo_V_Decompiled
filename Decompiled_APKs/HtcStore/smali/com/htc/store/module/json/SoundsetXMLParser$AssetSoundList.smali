.class public Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;
.super Ljava/lang/Object;
.source "SoundsetXMLParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/module/json/SoundsetXMLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssetSoundList"
.end annotation


# instance fields
.field public catFlag:Ljava/lang/String;

.field public dversion:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public listsize:Ljava/lang/String;

.field public sort:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/store/module/json/SoundsetXMLParser;

.field public timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/store/module/json/SoundsetXMLParser;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/htc/store/module/json/SoundsetXMLParser$AssetSoundList;->this$0:Lcom/htc/store/module/json/SoundsetXMLParser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
