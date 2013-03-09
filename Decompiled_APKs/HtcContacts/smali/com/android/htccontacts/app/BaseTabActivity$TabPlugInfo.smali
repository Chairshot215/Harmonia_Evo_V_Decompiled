.class public final Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;
.super Ljava/lang/Object;
.source "BaseTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/BaseTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TabPlugInfo"
.end annotation


# instance fields
.field public isPlugged:Z

.field public tab:Lcom/htc/opensense/plugin/TabPluginWrapper;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/plugin/TabPluginWrapper;Z)V
    .locals 0
    .parameter "tab"
    .parameter "isPlugged"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;->tab:Lcom/htc/opensense/plugin/TabPluginWrapper;

    .line 97
    iput-boolean p2, p0, Lcom/android/htccontacts/app/BaseTabActivity$TabPlugInfo;->isPlugged:Z

    .line 98
    return-void
.end method
