.class Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;
.super Ljava/lang/Object;
.source "LandingNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemInstallStatus"
.end annotation


# instance fields
.field private mCount:I

.field private mIsExpired:Z

.field private mIsInitializationEvent:Z

.field private mPositon:I

.field private mStatus:I

.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingNavigation;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;III)V
    .locals 2
    .parameter
    .parameter "position"
    .parameter "count"
    .parameter "status"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 2151
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2131
    iput v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mStatus:I

    .line 2132
    iput v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mPositon:I

    .line 2133
    iput v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mCount:I

    .line 2134
    iput-boolean v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mIsInitializationEvent:Z

    .line 2135
    iput-boolean v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mIsExpired:Z

    .line 2152
    iput p2, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mPositon:I

    .line 2153
    iput p3, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mCount:I

    .line 2154
    iput p4, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mStatus:I

    .line 2155
    return-void
.end method

.method public constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;IIZ)V
    .locals 2
    .parameter
    .parameter "position"
    .parameter "status"
    .parameter "isInitializationEvent"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 2141
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2131
    iput v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mStatus:I

    .line 2132
    iput v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mPositon:I

    .line 2133
    iput v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mCount:I

    .line 2134
    iput-boolean v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mIsInitializationEvent:Z

    .line 2135
    iput-boolean v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mIsExpired:Z

    .line 2142
    iput p2, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mPositon:I

    .line 2143
    iput p3, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mStatus:I

    .line 2144
    iput-boolean p4, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mIsInitializationEvent:Z

    .line 2145
    return-void
.end method

.method public constructor <init>(Lcom/htc/store/activity/landing/LandingNavigation;Z)V
    .locals 2
    .parameter
    .parameter "isExpired"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 2157
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->this$0:Lcom/htc/store/activity/landing/LandingNavigation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2131
    iput v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mStatus:I

    .line 2132
    iput v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mPositon:I

    .line 2133
    iput v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mCount:I

    .line 2134
    iput-boolean v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mIsInitializationEvent:Z

    .line 2135
    iput-boolean v1, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mIsExpired:Z

    .line 2158
    iput-boolean p2, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mIsExpired:Z

    .line 2159
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2168
    iget v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mCount:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 2165
    iget v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mPositon:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 2162
    iget v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mStatus:I

    return v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 2174
    iget-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mIsExpired:Z

    return v0
.end method

.method public isInitializationEvent()Z
    .locals 1

    .prologue
    .line 2171
    iget-boolean v0, p0, Lcom/htc/store/activity/landing/LandingNavigation$ItemInstallStatus;->mIsInitializationEvent:Z

    return v0
.end method
