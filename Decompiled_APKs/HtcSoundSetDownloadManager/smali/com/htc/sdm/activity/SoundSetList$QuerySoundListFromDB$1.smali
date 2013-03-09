.class Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB$1;
.super Ljava/lang/Object;
.source "SoundSetList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;->QueryList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/sdm/SoundSetParcelable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;)V
    .locals 0
    .parameter

    .prologue
    .line 2649
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB$1;->this$1:Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/sdm/SoundSetParcelable;Lcom/htc/sdm/SoundSetParcelable;)I
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2652
    invoke-virtual {p1}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2649
    check-cast p1, Lcom/htc/sdm/SoundSetParcelable;

    .end local p1
    check-cast p2, Lcom/htc/sdm/SoundSetParcelable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB$1;->compare(Lcom/htc/sdm/SoundSetParcelable;Lcom/htc/sdm/SoundSetParcelable;)I

    move-result v0

    return v0
.end method
