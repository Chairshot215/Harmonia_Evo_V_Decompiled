.class Ljava/util/prefs/AbstractPreferences$NodeAddEvent;
.super Ljava/util/prefs/NodeChangeEvent;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NodeAddEvent"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/prefs/NodeChangeEvent;-><init>(Ljava/util/prefs/Preferences;Ljava/util/prefs/Preferences;)V

    return-void
.end method
