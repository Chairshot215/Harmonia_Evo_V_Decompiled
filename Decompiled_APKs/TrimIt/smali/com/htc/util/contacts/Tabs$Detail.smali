.class public Lcom/htc/util/contacts/Tabs$Detail;
.super Ljava/lang/Object;
.source "Tabs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/Tabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Detail"
.end annotation


# static fields
.field public static final TAG_ALBUM:Ljava/lang/String; = "PEOPLE_DETAIL_DETAIL_ALBUM"

.field public static final TAG_CALL_HISTORY:Ljava/lang/String; = "PEOPLE_DETAIL_CALL_HISTORY"

.field public static final TAG_COMMUNICATION:Ljava/lang/String; = "PEOPLE_DETAIL_TAG_COMMUNICATION"

.field public static final TAG_MAIL:Ljava/lang/String; = "PEOPLE_DETAIL_MAIL"

.field public static final TAG_MESSAGE:Ljava/lang/String; = "PEOPLE_DETAIL_MESSAGE"

.field public static final TAG_UPDATES_N_EVENTS:Ljava/lang/String; = "PEOPLE_DETAIL_UPDATES_N_EVENTS"

.field public static final TAG_VIEW_DETAIL:Ljava/lang/String; = "PEOPLE_DETAIL_VIEW_DETAIL"


# instance fields
.field final synthetic this$0:Lcom/htc/util/contacts/Tabs;


# direct methods
.method public constructor <init>(Lcom/htc/util/contacts/Tabs;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/util/contacts/Tabs$Detail;->this$0:Lcom/htc/util/contacts/Tabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
